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

### Note
components and key are optional.
#### components
components, Google's nomenclature, are filters to bound the search area.  According to the Google docs you should strip these
components (see what I did there) out of your address data or you may receive errors or faulty lat/lng values.
#### key
key is your Google API key if you have one.
