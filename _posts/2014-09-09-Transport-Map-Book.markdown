---
author: Alex Singleton
layout: post
title: Transport Map Book
categories:
- r
---

![Transport Map Book](/public/images/transport_cover.png) The Transport Map Books are available for each local authority district in England and present a series of maps related to commuting behaviour. The data are derived from multiple sources including: the 2011 Census, Department for Transport estimates and the results of a research project looking at carbon dioxide emissions linked to the school commute.

**All the maps are available to download [here](http://www.alex-singleton.com/Transport-Map-Book/); and the code used to create them on [Github](https://github.com/alexsingleton/Transport-Map-Book).**

## Travel to work flows
![Travel to work flows](/public/images/TTW.png) 
These data relate to Middle Layer Super Output Area (MSOA) level estimates of travel to work flows by transport mode. The raw data are available from the [ONS](http://www.ons.gov.uk/ons/rel/census/2011-census/origin-destination-statistics-on-second-residences-and-workplace-for-merged-local-authorities-and-middle-layer-super-output-areas--msoas--in-england-and-wales/index.html). For the maps, the flows have been limited to those both originating and terminating within each local authority district. 

##Accessibility to Services
![Accessibility to Services](/public/images/ACC.png) 
The [Department of Transport](https://www.gov.uk/government/collections/transport-connectivity-and-accessibility-of-key-services-statistics) provide a range of statistics at [Lower Layer Super Output Area](https://www.gov.uk/government/statistical-data-sets/acs05-travel-time-destination-and-origin-indicators-to-key-sites-and-services-by-lower-super-output-area-lsoa) level about accessibility and connectivity to a series of key services. A subset of variables were mapped.

##Emissions associated with the school commute
![Emissions ](/public/images/carbon.png) 
These data were generated as part of an ESRC funded project investigating emissions associated with the school commute. The model provides an estimate of the carbon dioxide emitted at Lower Layer Super Output Area level. For full details of the methodology, see the open access paper:

Singleton, A. (2013) [A GIS Approach to Modelling CO2 Emissions Associated with the Pupil-School Commute](http://dx.doi.org/10.1080/13658816.2013.832765). International Journal of Geographical Information Science, 28(2):256–273.

##Car availability and travel to work mode choice
![Car](/public/images/OA.png) 
These attributes were extracted from the 2011 census data provided by [Nomis](https://www.nomisweb.co.uk/census/2011) at Output Area level. 

##Distance and mode of travel to work
![Distance](/public/images/wz.png) 
Workplace zones are a new geography for the 2011 census for the dissemination of daytime population statistics. A number of attributes were selected related to transport, and also were downloaded from [Nomis](https://www.nomisweb.co.uk/census/2011/bulk/r5).
