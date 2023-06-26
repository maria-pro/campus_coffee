have an idea for something interesting we could do with the mapping data.

I’d like to map how many cafes and restaurants there are on TAFE and university campuses in Australia.

There are reasons for this that I can explain later (basically TAFEs report they have 1000s of students but they are never there).

What we can do is:

  Collect the data from OSM which has the polygons of all universities and tafes
Send the data to google to get a list of the cafes/restaurants
Do a count of cafes and restaurants and then compare to enrolment numbers.

I have started with the OSM information already:

  b <- getbb("Victoria, Australia") %>%
  opq(timeout = 1000) %>%
  add_osm_feature(key = "amenity", value = c("university","college"))
vic <- b$osm_polygons

I wondered whether this might be a neat project to showcase on the r journal somewhere.

Let me know what you think. If you are free perhaps, we can have a quick chat this afternoon.
