---
author: Alex Singleton
layout: post
title: Alternate Crime Visualisations
categories:
- GIS
---

When the Police.UK website was launched at the beginning of 2011 a reasonable amount of criticism was levied at the choice of representation used for the online mapping of the crime data. I wrote about this briefly over at [Floating Sheep](http://www.floatingsheep.org/2011/02/problem-points-on-new-uk-police-maps.html), and indeed spoke about it one very early morning on [BBC Radio](http://www.alex-singleton.com/?p=402) - thus I won't repeat the issues. I recently received a knowledge exchange voucher from the [University of Liverpool Business Gateway](http://www.liv.ac.uk/businessgateway/), and in collaboration with our new Chair of Human Geography [Chris Brunsdon](http://www.liv.ac.uk/geography/staff/brunsdon.htm), we have begun to explore some of the representational issues of putting crimes on a map. This project was co-sponsored by the [National Police Improvement Agency](http://www.npia.police.uk/) and this post details results from the pilot project.

<!-- more -->

##Crimes and the Street Aggregation Process

Before demonstrating our pilot visualisations it is first worth detailing those procedures which are employed by the NPIA to aggregate the locations of individual crimes into a street level unit which is deemed to be suitably aggregated so as to prevent discloser. The points placed on the police.uk crime maps represent centroid locations of street segments. Individual crimes occurring on or near these centroids are aggregated and allocated to these points. The allocation of individual crimes to the points relies on a procedure which utilises Thiessen Polygons derived from the centroids of streets where there are greater than a threshold of addresses. The centroids for streets below this limit are removed in order to maintain confidentiality. Crimes are allocated to their nearest centroid - thus the centroids represent those crimes that were recorded on a collection of streets, hence the use of the label "On or Near Street X" when displaying the points on the current interactive map.

**Points**

The following map represents the point locations for crimes occurring in Merseyside during June 2011 - we have used these in our analysis as estimates of the full street network centroid locations. In reality the NPIA database includes further centroids where no crime had occurred during this month; thus this really was just a simple way in which we could generate some results quickly, however we acknowledge that ideally we should be deriving these nodes from the raw street network data. The [raw data](http://crimemapper2.s3.amazonaws.com/frontend/crime-data/2011-06/2011-06-merseyside-street.zip) were imported into MySQL (see [my previous post](http://www.alex-singleton.com/?p=433) on this subject) and the following SQL run within R to create aggregations of the crimes at the centroid locations.

```sql
`SELECT Crimetype, Location, Easting, Northing, count(*) as N from merseyside_2011_06 group by Crimetype, Location, Easting, Northing;`
```

Further manipulation in R created a single record for each centroid detailing the count of different crime types allocated to each location. 

[![](https://lh5.googleusercontent.com/-avRP0-V2v9g/TjpYmXg9CKI/AAAAAAAABUY/0KF0Nsi_qWs/s144/Crimes.jpg)](https://picasaweb.google.com/lh/photo/bVCbx_BTQxvkDuNBccQc-w?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

**Thiessen Polygons Derived from the Points**

Using the street centroid locations [Thiessen Polygons](http://en.wikipedia.org/wiki/Voronoi_diagram) were derived.

[![](https://lh5.googleusercontent.com/-rgY0JidsAtw/TjpYn3s7YPI/AAAAAAAABUg/VUeuJnbeZ3M/s144/Crime_w_Thesian.jpg)](https://picasaweb.google.com/lh/photo/TWKw1Cxl2RHvfsKDjIqmtA?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

The crime data that was aggregated to each centroid location was attached to the corresponding Thiessen Polygon. Next, by overlaying the Thiessen Polygons on top of the street network data the intersection between the road network and and the new zonal geography could be derived. If a polygon boundary crossed a street segment these were divided, thus splitting the street segment into multiple parts.

[![](https://lh3.googleusercontent.com/-vdZPKsiIrCQ/TjpYo4x52NI/AAAAAAAABUk/w-6oBFLPb4I/s144/Crime_w_thesian_road.jpg)](https://picasaweb.google.com/lh/photo/ITXEleZjUAcPpwHgG73VPg?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

With the streets now allocated to a Thiessen Polygon, the crimes were attached to the road segments within these zones. As noted earlier, this will not be exactly the same allocation of streets that are feature in the NPIA database given the more limit set of centroids used to derive the Thiessen Polygon, however, these do provide a reasonable and useful proxy for visualisation experiments.

## Network Visualisations

With crimes now attached to the street network it was possible to use these as the unit of display to show either relative or absolute crimes committed. In this context we take relative rates to be the frequency of crimes / the total street length * 1000 (i.e. convert to per km) of those roads within each Thiessen Polygon. As part of the this process all individual streets within the Thiessen Polygons had to be dissolved into a single shape, otherwise, when calculating rates these appear higher on those streets (or parts of which) with shorter lengths - the data lack this precision, and as such should apply to the whole Thiessen Polygon zone.

**Coloured Networks**

The simplest visualisation option is to shade the network by colours representing the absolute or relative frequency of crimes. This takes a similar form to a choropleth map however with the units of display being the road network itself.

_Absolute_

[![](https://lh5.googleusercontent.com/-x070JFLZ0ag/TjuVWz8WFwI/AAAAAAAABWs/xxq5kkiyfS4/s400/Coloured_N.jpg)](https://picasaweb.google.com/lh/photo/rMZJeJSYrorEwCDCjFEQ-Q?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

_Relative_

[![](https://lh6.googleusercontent.com/-WY7RkqUbIiE/TjuVXwAnOKI/AAAAAAAABWw/o6i4mFTGI1U/s400/Coloured_L.jpg)](https://picasaweb.google.com/lh/photo/2FqCdjFM2ifwc324TktBQQ?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

To illustrate the earlier discussion on why the road network within each Thiessen Polygon is required to be a single shape, the following map presents the road network shaded by the relative crimes (i.e. over length). This visualisation shows variability in the relative crime rates within a Thiessen Polygon, which is created by the variable line segment lengths (i.e. denominator). This produces an artificial level of precision, and is a function of how the road network was divided, rather than the distribution of actual crimes.

[![](https://lh6.googleusercontent.com/-pg1AKpeqHM8/TjpYp3QonDI/AAAAAAAABUs/W5JzpxWwhIE/s400/LarkLane.jpg)](https://picasaweb.google.com/lh/photo/bvH5KUQgeuAiz8xosJXFQQ?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

**Scaled Networks**

An alternate visualisation to coloured networks can be created by scaling the width of the roads by relative or absolute crimes, the colour of which can be adapted to complement background cartography.

_Absolute_

[![](https://lh6.googleusercontent.com/-H4QkfzEHXAE/TjuYrtmsvZI/AAAAAAAABXs/qKyBu1oG9G0/s400/Scaled_N.jpg)](https://picasaweb.google.com/lh/photo/ZZ05IIoRVgmVx8qt0ajBig?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

_Relative_

[![](https://lh4.googleusercontent.com/-HzQMt1GyYPk/TjuYnrQqKSI/AAAAAAAABXg/Xio77YgGXg8/s400/Scaled_L.jpg)](https://picasaweb.google.com/lh/photo/raNW4GqQNKYA08RQXGJJlA?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

## Context Area

One alternative to bespoke cartography is to provide additional context to street centroid points when they are clicked. This could take a number of different forms such as the display of those roads which are allocated to the point, or, display the area defined by the Thiessen Polygon. In a live online mapping environment these would have some overhead on the system, although given their simplicity, they shouldn't have undue effect on the speed of operation.

_Road Overlay_

[![](https://lh4.googleusercontent.com/-ldiGrK8AY6s/TjpYsH3pRbI/AAAAAAAABU8/XPvyhlt8LyY/s400/RoadSelection.jpg)](https://picasaweb.google.com/lh/photo/NIMt40CNlYXnBqW1QzFp0A?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

_Thiessen Polygon Overlay_

[![](https://lh3.googleusercontent.com/-cwCQqdRIscg/TjpYrktKahI/AAAAAAAABU4/kSBBBwkxwZQ/s400/AreaSelection.jpg)](https://picasaweb.google.com/lh/photo/AC0-b_4O7R71bX3MQjfi-g?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

_Both_

[![](https://lh6.googleusercontent.com/-IXf6r-HCwAI/TjpYsuDRwhI/AAAAAAAABVA/xNEF79bjxhQ/s400/Both_Selection.jpg)](https://picasaweb.google.com/lh/photo/OFhbOSfaymOzS4PsP7qN_g?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

## Rural Areas

All the maps previously shown were of city centre locations - in the following maps relative crime rates are visualised for a more rural area located on the west side of the Wirral.

_Rural Scaled Network_

[![](https://lh3.googleusercontent.com/-AHeYONQlA2s/TjumjagGTrI/AAAAAAAABYw/7egcpAaBfKQ/s400/Rural1.jpg)](https://picasaweb.google.com/lh/photo/KTWLttey004jl0dRhsx10A?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)

_Rural Coloured Network_

[![](https://lh3.googleusercontent.com/-aJ7b1mVJ5c0/TjumjPi3sMI/AAAAAAAABYs/48gDpZwm3vg/s400/Rural2.jpg)](https://picasaweb.google.com/lh/photo/zkkIZO3QN8jXkmTy0w0YRA?feat=embedwebsite)

From [NPIA](https://picasaweb.google.com/alexandersingleton/NPIA?authuser=0&feat=embedwebsite)