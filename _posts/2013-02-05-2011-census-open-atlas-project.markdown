---
author: Alex Singleton
layout: post
title: 2011 Census Open Atlas Project
categories:
- r
---

![CensusAtlas](/public/images/CensusAtlas.jpg)This month has seen the release of the 2011  census data for England and Wales at Output Area Level.

This offers the possibility to map various attributes about people and places for very small geographic areas. Output Areas represent the most detailed geography for which Census data are released and are the building blocks for many popular products such as geodemographic classifications.

Because the data and boundaries are available under an [open government licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/), and that these data have been usefully placed online as direct downloads ([data](http://www.nomisweb.co.uk/census/2011/bulk/r2_2), [boundaries](http://www.ons.gov.uk/ons/guide-method/census/2011/census-data/2011-census-prospectus/new-developments-for-2011-census-results/2011-census-geography/2011-census-geography-prospectus/index.html)), it makes it  possible to create maps for England and Wales in a highly automated way.

As such, since launch of the Output Area level data I have been busy writing (and then running - around 4 days!) a set of R code that would map every Key Statistics variable for all local authority districts. The code for doing this is fully reproducible, and I have dropped this on my [Rpubs blog](http://rpubs.com/alexsingleton/openatlas).

I have generated a PDF atlas for each [local authority district](http://en.wikipedia.org/wiki/ONS_coding_system), for example:
	
  * [Camden [19.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000007.pdf)
  * [Lewisham [26 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000023.pdf)
  * [Liverpool [55.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000012.pdf)
  * [Manchester [57.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000003.pdf)
  * [Sheffield [74 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000019.pdf)

**[IF YOU THINK ANY OF THE INFORMATION I HAVE CREATED IS USEFUL, INTERESTING OR OF VALUE, THEN PLEASE  READ THIS BLOG POST AND HELP PROTECT THE NEXT CENSUS!](http://cdublogger.wordpress.com/2013/02/04/small-area-population-data/)**

## Why have I created these atlases?
	
  1. To demonstrate the value of the 2011 census
  2. Provide a free 2011 static Census atlas to anyone who wants one
  3. Because I do not believe web maps should necessarily be the default way of distributing geographic data
  4. To illustrate how open data and software can be used in creative ways to generate insight
  5. An attempt to save local authorities money who might be thinking of doing these type of analyses themselves
  6. To provide reproducible code that enable others to generate similar maps at Output Area level
  7. For fun!
  8. [Because R is awesome!](http://www.r-project.org)
  9. [Because R really is awesome!](http://www.r-project.org)

## What is in each atlas?

Each atlas contains a series of vector PDF maps for each Key Statistics variable. The following is a map from the Liverpool Atlas and shows the percentage of "White: English/Welsh/Scottish/Northern Irish/British" for each Output Area in Liverpool.
[![white](/public/images/white-227x300.jpg)](/public/images/white.jpg)

## About the data and maps
Almost every non count variable (apart from Hectares) was mapped from the  Key Statistics data disseminated by Nomis, and are either percentage scores or some type of ratio / average. Maps were excluded where there were only a few scores within a local authority district - you can see further explanation of this on the Rpubs page accompanying the analysis. A couple of further points...
	
  * The variables mapped were based on the calculations that were part of the Nomis data.
  * I have always been a fan of blue choropleth maps which was why the particular colour scheme was chosen.
  * The cartography was automated for all the maps - this means it is more successful for some local authority districts than in others. Some issues I have noted;
  * Those local authorities with many wards appear a little busy with labels (e.g. [Cornwall](http://138.253.67.7/~alex/downloads/openatlas/E06000052.pdf))
  * [Cardiff ](http://138.253.67.7/~alex/downloads/openatlas/W06000015.pdf) appears to have a rogue polygon which may be issue with the OA to higher geography lookup table. I will investigate this in a future release.... [Power of the crowd reveals that this is in fact [Flat Holm island ](https://maps.google.co.uk/?ll=51.377781,-3.120117&spn=0.079182,0.138016&t=h&z=13)- thanks to [@geospacedman](https://twitter.com/geospacedman)]
  * It would be nice to add scale bars and north arrows to the maps, however, this was proving to be problematic when outputting to PDF. Again, I will try and fix this in a future release.
  * The boundaries used are the generalised files to increase mapping speed and reduce file size - these could be supplemented for the full resolution boundaries in the future
  * These maps are without guarantee or warranty / [feel free to fix my code](http://rpubs.com/alexsingleton/openatlas)!

## View the maps

All maps are available after clicking the post title....

<!-- more -->
	
  * [Adur [8.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000223.pdf)

  * [Allerdale [39.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000026.pdf)

  * [Amber Valley [25.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000032.pdf)

  * [Arun [25.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000224.pdf)

  * [Ashfield [16.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000170.pdf)

  * [Ashford [31.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000105.pdf)

  * [Aylesbury Vale [51.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000004.pdf)

  * [Babergh [34.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000200.pdf)

  * [Barking and Dagenham [16.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000002.pdf)

  * [Barnet [38.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000003.pdf)

  * [Barnsley [39.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000016.pdf)

  * [Barrow-in-Furness [12.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000027.pdf)

  * [Basildon [22.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000066.pdf)

  * [Basingstoke and Deane [33 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000084.pdf)

  * [Bassetlaw [26.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000171.pdf)

  * [Bath and North East Somerset [38.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000022.pdf)

  * [Bedford [27.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000055.pdf)

  * [Bexley [26 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000004.pdf)

  * [Birmingham [119.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000025.pdf)

  * [Blaby [17.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000129.pdf)

  * [Blackburn with Darwen [19.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000008.pdf)

  * [Blackpool [17.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000009.pdf)

  * [Blaenau Gwent [12.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000019.pdf)

  * [Bolsover [14.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000033.pdf)

  * [Bolton [38 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000001.pdf)

  * [Boston [16.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000136.pdf)

  * [Bournemouth [21.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000028.pdf)

  * [Bracknell Forest [14.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000036.pdf)

  * [Bradford [72.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000032.pdf)

  * [Braintree [39.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000067.pdf)

  * [Breckland [42.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000143.pdf)

  * [Brent [24.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000005.pdf)

  * [Brentwood [13.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000068.pdf)

  * [Bridgend [25.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000013.pdf)

  * [Brighton and Hove [28.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000043.pdf)

  * [Bristol, City of [52.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000023.pdf)

  * [Broadland [31.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000144.pdf)

  * [Bromley [41.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000006.pdf)

  * [Bromsgrove [19.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000234.pdf)

  * [Broxbourne [11 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000095.pdf)

  * [Broxtowe [17.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000172.pdf)

  * [Burnley [13 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000117.pdf)

  * [Bury [27.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000002.pdf)

  * [Caerphilly [31.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000018.pdf)

  * [Calderdale [37.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000033.pdf)

  * [Cambridge [13.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000008.pdf)

  * [Camden [19.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000007.pdf)

  * [Cannock Chase [13.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000192.pdf)

  * [Canterbury [25 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000106.pdf)

  * [Cardiff [41.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000015.pdf)

  * [Carlisle [33.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000028.pdf)

  * [Carmarthenshire [91 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000010.pdf)

  * [Castle Point [12.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000069.pdf)

  * [Central Bedfordshire [49 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000056.pdf)

  * [Ceredigion [56.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000008.pdf)

  * [Charnwood [27.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000130.pdf)

  * [Chelmsford [31 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000070.pdf)

  * [Cheltenham [15.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000078.pdf)

  * [Cherwell [34.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000177.pdf)

  * [Cheshire East [89.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000049.pdf)

  * [Cheshire West and Chester [72.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000050.pdf)

  * [Chesterfield [16.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000034.pdf)

  * [Chichester [38.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000225.pdf)

  * [Chiltern [20.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000005.pdf)

  * [Chorley [21.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000118.pdf)

  * [Christchurch [8.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000048.pdf)

  * [City of London [1.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000001.pdf)

  * [Colchester [35.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000071.pdf)

  * [Conwy [37.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000003.pdf)

  * [Copeland [25.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000029.pdf)

  * [Corby [9.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000150.pdf)

  * [Cornwall [203.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000052.pdf)

  * [Cotswold [40.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000079.pdf)

  * [County Durham [110.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000047.pdf)

  * [Coventry [36.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000026.pdf)

  * [Craven [25.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000163.pdf)

  * [Crawley [12.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000226.pdf)

  * [Croydon [38.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000008.pdf)

  * [Dacorum [22.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000096.pdf)

  * [Darlington [16.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000005.pdf)

  * [Dartford [12.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000107.pdf)

  * [Daventry [32.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000151.pdf)

  * [Denbighshire [31.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000004.pdf)

  * [Derby [31.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000015.pdf)

  * [Derbyshire Dales [32.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000035.pdf)

  * [Doncaster [50 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000017.pdf)

  * [Dover [21.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000108.pdf)

  * [Dudley [42.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000027.pdf)

  * [Ealing [30.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000009.pdf)

  * [East Cambridgeshire [21.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000009.pdf)

  * [East Devon [43.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000040.pdf)

  * [East Dorset [20.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000049.pdf)

  * [East Hampshire [29.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000085.pdf)

  * [East Hertfordshire [31.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000097.pdf)

  * [East Lindsey [57 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000137.pdf)

  * [East Northamptonshire [22.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000152.pdf)

  * [East Riding of Yorkshire [76 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000011.pdf)

  * [East Staffordshire [25.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000193.pdf)

  * [Eastbourne [12.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000061.pdf)

  * [Eastleigh [18.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000086.pdf)

  * [Eden [39.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000030.pdf)

  * [Elmbridge [19.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000207.pdf)

  * [Enfield [28.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000010.pdf)

  * [Epping Forest [26.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000072.pdf)

  * [Epsom and Ewell [9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000208.pdf)

  * [Erewash [17.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000036.pdf)

  * [Exeter [15.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000041.pdf)

  * [Fareham [16.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000087.pdf)

  * [Fenland [17.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000010.pdf)

  * [Flintshire [39.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000005.pdf)

  * [Forest Heath [13.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000201.pdf)

  * [Forest of Dean [29.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000080.pdf)

  * [Fylde [15.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000119.pdf)

  * [Gateshead [29.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000020.pdf)

  * [Gedling [16.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000173.pdf)

  * [Gloucester [15.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000081.pdf)

  * [Gosport [10.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000088.pdf)

  * [Gravesham [13.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000109.pdf)

  * [Great Yarmouth [16.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000145.pdf)

  * [Greenwich [24.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000011.pdf)

  * [Guildford [24.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000209.pdf)

  * [Gwynedd [71.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000002.pdf)

  * [Hackney [19.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000012.pdf)

  * [Halton [16.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000006.pdf)

  * [Hambleton [44.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000164.pdf)

  * [Hammersmith and Fulham [14.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000013.pdf)

  * [Harborough [28 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000131.pdf)

  * [Haringey [20.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000014.pdf)

  * [Harlow [9.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000073.pdf)

  * [Harrogate [46.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000165.pdf)

  * [Harrow [22.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000015.pdf)

  * [Hart [17.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000089.pdf)

  * [Hartlepool [13.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000001.pdf)

  * [Hastings [11.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000062.pdf)

  * [Havant [18.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000090.pdf)

  * [Havering [28.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000016.pdf)

  * [Herefordshire, County of [92.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000019.pdf)

  * [Hertsmere [14.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000098.pdf)

  * [High Peak [22.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000037.pdf)

  * [Hillingdon [30.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000017.pdf)

  * [Hinckley and Bosworth [23.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000132.pdf)

  * [Horsham [33.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000227.pdf)

  * [Hounslow [23 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000018.pdf)

  * [Huntingdonshire [40.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000011.pdf)

  * [Hyndburn [11.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000120.pdf)

  * [Ipswich [16.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000202.pdf)

  * [Isle of Anglesey [40.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000001.pdf)

  * [Isle of Wight [32.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000046.pdf)

  * [Islington [17.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000019.pdf)

  * [Kensington and Chelsea [14.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000020.pdf)

  * [Kettering [17.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000153.pdf)

  * [King's Lynn and West Norfolk [53 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000146.pdf)

  * [Kingston upon Hull, City of [28.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000010.pdf)

  * [Kingston upon Thames [16.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000021.pdf)

  * [Kirklees [69.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000034.pdf)

  * [Knowsley [19.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000011.pdf)

  * [Lambeth [25.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000022.pdf)

  * [Lancaster [33.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000121.pdf)

  * [Leeds [111.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000035.pdf)

  * [Leicester [34.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000016.pdf)

  * [Lewes [21.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000063.pdf)

  * [Lewisham [26 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000023.pdf)

  * [Lichfield [21.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000194.pdf)

  * [Lincoln [10.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000138.pdf)

  * [Liverpool [55.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000012.pdf)

  * [Luton [19.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000032.pdf)

  * [Maidstone [28.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000110.pdf)

  * [Maldon [24.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000074.pdf)

  * [Malvern Hills [30 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000235.pdf)

  * [Manchester [57.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000003.pdf)

  * [Mansfield [15.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000174.pdf)

  * [Medway [35.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000035.pdf)

  * [Melton [15.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000133.pdf)

  * [Mendip [35.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000187.pdf)

  * [Merthyr Tydfil [10.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000024.pdf)

  * [Merton [18.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000024.pdf)

  * [Mid Devon [35.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000042.pdf)

  * [Mid Suffolk [37.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000203.pdf)

  * [Mid Sussex [27 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000228.pdf)

  * [Middlesbrough [17.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000002.pdf)

  * [Milton Keynes [35.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000042.pdf)

  * [Mole Valley [19.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000210.pdf)

  * [Monmouthshire [38.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000021.pdf)

  * [Neath Port Talbot [31.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000012.pdf)

  * [New Forest [43.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000091.pdf)

  * [Newark and Sherwood [29.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000175.pdf)

  * [Newcastle upon Tyne [34.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000021.pdf)

  * [Newcastle-under-Lyme [21.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000195.pdf)

  * [Newham [21.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000025.pdf)

  * [Newport [23.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000022.pdf)

  * [North Devon [39.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000043.pdf)

  * [North Dorset [27.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000050.pdf)

  * [North East Derbyshire [24.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000038.pdf)

  * [North East Lincolnshire [22.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000012.pdf)

  * [North Hertfordshire [22.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000099.pdf)

  * [North Kesteven [26.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000139.pdf)

  * [North Lincolnshire [30.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000013.pdf)

  * [North Norfolk [43.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000147.pdf)

  * [North Somerset [41.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000024.pdf)

  * [North Tyneside [26.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000022.pdf)

  * [North Warwickshire [16.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000218.pdf)

  * [North West Leicestershire [21.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000134.pdf)

  * [Northampton [24.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000154.pdf)

  * [Northumberland [113 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000048.pdf)

  * [Norwich [16.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000148.pdf)

  * [Nottingham [34.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000018.pdf)

  * [Nuneaton and Bedworth [16.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000219.pdf)

  * [Oadby and Wigston [7.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000135.pdf)

  * [Oldham [30.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000004.pdf)

  * [Oxford [16.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000178.pdf)

  * [Pembrokeshire [73.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000009.pdf)

  * [Pendle [15.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000122.pdf)

  * [Peterborough [24.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000031.pdf)

  * [Plymouth [34.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000026.pdf)

  * [Poole [20.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000029.pdf)

  * [Portsmouth [19.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000044.pdf)

  * [Powys [107.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000023.pdf)

  * [Preston [19.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000123.pdf)

  * [Purbeck [18.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000051.pdf)

  * [Reading [17.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000038.pdf)

  * [Redbridge [24.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000026.pdf)

  * [Redcar and Cleveland [22.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000003.pdf)

  * [Redditch [10.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000236.pdf)

  * [Reigate and Banstead [21.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000211.pdf)

  * [Rhondda Cynon Taf [44.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000016.pdf)

  * [Ribble Valley [21.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000124.pdf)

  * [Richmond upon Thames [21.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000027.pdf)

  * [Richmondshire [25.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000166.pdf)

  * [Rochdale [31.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000005.pdf)

  * [Rochford [15.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000075.pdf)

  * [Rossendale [13.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000125.pdf)

  * [Rother [27.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000064.pdf)

  * [Rotherham [41.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000018.pdf)

  * [Rugby [20.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000220.pdf)

  * [Runnymede [12.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000212.pdf)

  * [Rushcliffe [23.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000176.pdf)

  * [Rushmoor [11.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000092.pdf)

  * [Rutland [17.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000017.pdf)

  * [Ryedale [33.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000167.pdf)

  * [Salford [30.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000006.pdf)

  * [Sandwell [36.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000028.pdf)

  * [Scarborough [30.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000168.pdf)

  * [Sedgemoor [30.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000188.pdf)

  * [Sefton [37.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000014.pdf)

  * [Selby [26 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000169.pdf)

  * [Sevenoaks [25.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000111.pdf)

  * [Sheffield [74 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000019.pdf)

  * [Shepway [21 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000112.pdf)

  * [Shropshire [126.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000051.pdf)

  * [Slough [12.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000039.pdf)

  * [Solihull [29.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000029.pdf)

  * [South Bucks [14.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000006.pdf)

  * [South Cambridgeshire [40.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000012.pdf)

  * [South Derbyshire [22.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000039.pdf)

  * [South Gloucestershire [46.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000025.pdf)

  * [South Hams [42.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000044.pdf)

  * [South Holland [23.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000140.pdf)

  * [South Kesteven [32.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000141.pdf)

  * [South Lakeland [48.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000031.pdf)

  * [South Norfolk [41.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000149.pdf)

  * [South Northamptonshire [32.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000155.pdf)

  * [South Oxfordshire [36.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000179.pdf)

  * [South Ribble [17.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000126.pdf)

  * [South Somerset [54.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000189.pdf)

  * [South Staffordshire [24.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000196.pdf)

  * [South Tyneside [19.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000023.pdf)

  * [Southampton [26.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000045.pdf)

  * [Southend-on-Sea [17.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000033.pdf)

  * [Southwark [24.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000028.pdf)

  * [Spelthorne [12.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000213.pdf)

  * [St Albans [20.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000100.pdf)

  * [St Edmundsbury [31.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000204.pdf)

  * [St. Helens [25 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000013.pdf)

  * [Stafford [33.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000197.pdf)

  * [Staffordshire Moorlands [29.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000198.pdf)

  * [Stevenage [9.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000101.pdf)

  * [Stockport [41 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000007.pdf)

  * [Stockton-on-Tees [30.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000004.pdf)

  * [Stoke-on-Trent [36.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000021.pdf)

  * [Stratford-on-Avon [47.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000221.pdf)

  * [Stroud [33.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000082.pdf)

  * [Suffolk Coastal [45.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000205.pdf)

  * [Sunderland [38.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000024.pdf)

  * [Surrey Heath [13.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000214.pdf)

  * [Sutton [20.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000029.pdf)

  * [Swale [26.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000113.pdf)

  * [Swansea [48.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000011.pdf)

  * [Swindon [29.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000030.pdf)

  * [Tameside [31.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000008.pdf)

  * [Tamworth [9.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000199.pdf)

  * [Tandridge [17.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000215.pdf)

  * [Taunton Deane [27.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000190.pdf)

  * [Teignbridge [35.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000045.pdf)

  * [Telford and Wrekin [29.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000020.pdf)

  * [Tendring [34.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000076.pdf)

  * [Test Valley [27.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000093.pdf)

  * [Tewkesbury [22.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000083.pdf)

  * [Thanet [18.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000114.pdf)

  * [The Vale of Glamorgan [23 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000014.pdf)

  * [Three Rivers [12.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000102.pdf)

  * [Thurrock [21.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000034.pdf)

  * [Tonbridge and Malling [24.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000115.pdf)

  * [Torbay [22.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000027.pdf)

  * [Torfaen [16.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000020.pdf)

  * [Torridge [36.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000046.pdf)

  * [Tower Hamlets [19.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000030.pdf)

  * [Trafford [30.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000009.pdf)

  * [Tunbridge Wells [25 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000116.pdf)

  * [Uttlesford [26.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000077.pdf)

  * [Vale of White Horse [31.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000180.pdf)

  * [Wakefield [54.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000036.pdf)

  * [Walsall [33.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000030.pdf)

  * [Waltham Forest [21.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000031.pdf)

  * [Wandsworth [25.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000032.pdf)

  * [Warrington [29.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000007.pdf)

  * [Warwick [24.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000222.pdf)

  * [Watford [9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000103.pdf)

  * [Waveney [25.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000206.pdf)

  * [Waverley [30.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000216.pdf)

  * [Wealden [51.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000065.pdf)

  * [Wellingborough [13.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000156.pdf)

  * [Welwyn Hatfield [15.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000104.pdf)

  * [West Berkshire [34 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000037.pdf)

  * [West Devon [30.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000047.pdf)

  * [West Dorset [43.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000052.pdf)

  * [West Lancashire [23.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000127.pdf)

  * [West Lindsey [27.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000142.pdf)

  * [West Oxfordshire [34.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000181.pdf)

  * [West Somerset [16.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000191.pdf)

  * [Westminster [19.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E09000033.pdf)

  * [Weymouth and Portland [10.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000053.pdf)

  * [Wigan [46.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000010.pdf)

  * [Wiltshire [143.8 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000054.pdf)

  * [Winchester [30.3 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000094.pdf)

  * [Windsor and Maidenhead [22.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000040.pdf)

  * [Wirral [44.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000015.pdf)

  * [Woking [14.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000217.pdf)

  * [Wokingham [24.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000041.pdf)

  * [Wolverhampton [30.9 MB]](http://138.253.67.7/~alex/downloads/openatlas/E08000031.pdf)

  * [Worcester [13.4 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000237.pdf)

  * [Worthing [12.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000229.pdf)

  * [Wrexham [32.5 MB]](http://138.253.67.7/~alex/downloads/openatlas/W06000006.pdf)

  * [Wychavon [37.2 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000238.pdf)

  * [Wycombe [30.7 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000007.pdf)

  * [Wyre [22.1 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000128.pdf)

  * [Wyre Forest [18.6 MB]](http://138.253.67.7/~alex/downloads/openatlas/E07000239.pdf)

  * [York [29 MB]](http://138.253.67.7/~alex/downloads/openatlas/E06000014.pdf)



