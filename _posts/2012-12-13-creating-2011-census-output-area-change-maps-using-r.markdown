---
author: Alex Singleton
layout: post
title: Creating 2011 Census Output Area Change Maps Using R
categories:
- r
---

[![E08000003](/public/images/E08000003-212x300.png)](/public/change/E08000003.pdf)The 2001 Census used a different set of [Output Areas (OA)](http://www.ons.gov.uk/ons/guide-method/geography/beginner-s-guide/census/output-area--oas-/index.html) than the current 2011 boundaries; reflecting changes in the spatial distribution of the underlying population. For example, if an area has become more heavily populated since 2001, it makes sense that a previous OA might be split into multiple new segments.

The ONS have provided both the [Shapefiles](http://www.ons.gov.uk/ons/guide-method/geography/products/census/spatial/2011/index.html) and [lookup tables](http://www.ons.gov.uk/ons/guide-method/geography/products/census/lookup/2011/index.html) for these changes, however, as yet, I haven't seen any maps of these changes.

I have had a go at creating these in a reproducible way using R - the code with links to all the data (which is public domain) can be found on my [Rpubs page](http://rpubs.com/alexsingleton/outputareachange). At the base of the Rpubs post are links to downloadable PDF maps of all local authority districts in England and Wales.

A recurring pattern that will become clearer when the high resolution census data become available in 2013, is the splitting of OA in the centre of many large urban areas, typically as a result of increased population density. A couple of direct links to maps are as follows:
	
  * [Leeds](/public/change/E08000035.pdf)
	
  * [Manchester](/public/change/E08000003.pdf)
	
  * [Liverpool](/public/change/E08000012.pdf)
	
  * [Sheffield](/public/change/E08000019.pdf)

For the remaining maps and R code, see the [Rpubs page](http://rpubs.com/alexsingleton/outputareachange).