library(RCurl)
library(RJSONIO)
library(plyr)


# geocode_google attempts to return a character vector 
#containing: lat, lng, location_type, formatted_address
#from the Google geocoding REST API
geocode_google <- function(address, components = "", key = ""){
    return_val = NA
    root <- "http://maps.google.com/maps/api/geocode/json"
    sensor = "false"
    target_url <- URLencode(paste(root, "?address=", address, 
               "&components=", components, 
               "&key=", key, 
               sep = ""))
    
    json_doc <- fromJSON(getURL(target_url), simplify = FALSE)
    
    if (json_doc$status == "OK"){
        lat <- json_doc$results[[1]]$geometry$location$lat
        lng <- json_doc$results[[1]]$geometry$location$lng
        location_type <- json_doc$results[[1]]$geometry$location_type
        formatted_address <- json_doc$results[[1]]$formatted_address
        return_val <- c(lat, lng, location_type, formatted_address)
    } else {
        return_val <- c(NA,NA,NA, NA)
    }
    
    return_val
}