library(leaflet)

# map_leaflet : convenience function so I don't have to remember the specifics for Leaflet
map_leaflet <- function(map_lat, map_lng, popup_descr){
    leaflet() %>%
        addProviderTiles("CartoDB.Positron",
                         options = providerTileOptions(noWrap = TRUE)
        ) %>%
        addMarkers(lat = map_lat, lng = map_lng, popup = popup_descr, 
                   clusterOptions = markerClusterOptions()) 
        
}