library(tidyverse)
library(osmdata)
library(ggmap)
library(googleway)

b <- getbb("Victoria Australia", format_out = "polygon") %>%
  opq(timeout = 1000) %>%
  add_osm_feature(key = "amenity", value = c("university","college")) %>%
  osmdata_sf()

class(b)
plot(b)



vic <- b$osm_polygons

vic%>%ggplot()+geom_sf()


