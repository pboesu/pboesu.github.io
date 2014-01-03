---
author: Alex Singleton
layout: post
title: Marr Map of Manchester
categories:
- Website
---

Anybody who I have come in contact with over the past two weeks has probably been subjected to me showing them an old 1904 map of Manchester and Salford housing conditions. This has really nice cartography and is accompanied by a book featuring rich text and pictorial descriptions of the people and living conditions.
As an experiment in getting old maps onto the web, my researcher Ollie and I have been playing with a couple of tools, the output of which we present in our beta site:

[http://www.publicprofiler.org/manchester/](http://www.publicprofiler.org/manchester/)

Although not available at all zooms, we have also added an [OAC ](http://www.areaclassification.org.uk/)layer - there is interesting correspondence between the 1904 aggregate groups and those visible in 2001 - to view this, add both layers and click the switch layer button.

For those who are interested in the method of creation, this was as follows:

1) Scanning old map at a very high DPI (this is a painful process when your map is stuck in a book and exceeds your A3 scanner size)

2) Rubber sheeting and tile creation with MapCruncher ([http://dev.live.com/virtualearth/mapcruncher/](http://dev.live.com/virtualearth/mapcruncher/))

3) Taking the MS format tiles and building a new interface with OpenLayers ([http://openlayers.org/](http://openlayers.org/))

4) Adding some JavaScript functions to enable layer fading, layer order swapping, key fading and automatic swapping of key based on visible layers

The reference for those who are interested is: Marr, T.R. (1904) Housing Conditions in Manchester and Salford. Manchester, Manchester University Press.
