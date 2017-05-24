# r-utils
A collection of R functions that I want to reuse.

## geocode.R
Contains functions for geocoding addresses.
### Examples
``` {r}
foo <- geocode_google('408 Homegate Circle, Apex', 
                              components='administrative_area:NC|postal_code:27502', 
                              key='SomeKey')
#or
geocode_data <- geocode_google('408 Homegate Circle, Apex NC 27502') 
```
<img src="images/Screen%20Shot%202016-08-20%20at%2012.44.53%20PM.png"/>
### Note
components and key are optional.
#### components
components, Google's nomenclature, are filters to bound the search area.  According to the Google docs you should strip these
components (see what I did there) out of your address data or you may receive errors or faulty lat/lng values.
#### key
key is your Google API key if you have one.


## mapping.R
Convenience functions for viewing lat/lng coordinates on various maps.

### map_leaflet 
Takes vectors of lat, lng, and optional popup description and places the data on a simple Leaflet map.
<img src="images/Screen%20Shot%202016-08-22%20at%2012.14.10%20PM.png"/>

## word_cloud.R
Function to generate word clouds and allow for custom exclusion of terms. 
