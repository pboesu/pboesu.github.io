---
author: Philipp Boersch-Supan
layout: post
title: Mapping one's academic career path
tags:
- rstats
---


Yesterday I came across Gordon Pennycook's tweet about moving in academia:

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">I&#39;ve moved 4,500 miles (7,242 km) for academia.<br><br>How far have you gone?</p>&mdash; Gordon Pennycook (@GordPennycook) <a href="https://twitter.com/GordPennycook/status/960951887506755584?ref_src=twsrc%5Etfw">February 6, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

So given that there's a transatlantic move coming up for me to take up my first [permanent research position at the British Trust for Ornithology](http://pboesu.github.io/2018/01/25/new-job/), I thought, why not figure this out quickly using R.

```r
library(ggmap)# for geocoding and plotting 
library(geosphere)# for distance calculations
library(knitr)# for making a nice table
```


I used `ggmap::geocode` to look up the coordinates of each station on my academic career path:

```r
academic_places <- geocode(c(home = "Neustadt an der Weinstrasse",
                             undergrad = "Marburg an der Lahn",
                             masters_phd = "St Andrews, Fife",
                             phd = "Oxford, Oxfordshire",
                             postdoc1 = "Cambridge, UK",
                             postdoc2a = "Tampa, FL",
                             postdoc2b = "Gainesville, FL",
                             job = "Thetford"),
                           source = "dsk")
```

A quick plot to sanity check the locations

```r
#make a map
qmplot(lon, lat, data = academic_places, maptype = "watercolor", color = I("red")) + geom_path(color = "red")
```

![](/public/images/map-1.png)<!-- -->

I then used the `geosphere` package to calculate sequential distance between stations

```r
#calculate distances
distances_m <- distGeo(as.matrix(academic_places[,2:3]))

#transform units
distances_km <- distances_m/1000
distances_mi <- distances_m/1609
```

And lastly, I made a table to sum up everything.

```r
#make a table
kable(data.frame(stage = c(academic_places[-1,1], "Total"),
                 distance_km = round(c(distances_km, sum(distances_km))),
                 distance_mi = round(c(distances_mi, sum(distances_mi)))))
```


<table>
 <thead>
  <tr>
   <th style="text-align:left;"> stage </th>
   <th style="text-align:right;"> distance_km </th>
   <th style="text-align:right;"> distance_mi </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> undergrad </td>
   <td style="text-align:right;"> 172 </td>
   <td style="text-align:right;"> 107 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> masters_phd </td>
   <td style="text-align:right;"> 992 </td>
   <td style="text-align:right;"> 617 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> phd </td>
   <td style="text-align:right;"> 516 </td>
   <td style="text-align:right;"> 321 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> postdoc1 </td>
   <td style="text-align:right;"> 107 </td>
   <td style="text-align:right;"> 67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> postdoc2a </td>
   <td style="text-align:right;"> 7121 </td>
   <td style="text-align:right;"> 4426 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> postdoc2b </td>
   <td style="text-align:right;"> 185 </td>
   <td style="text-align:right;"> 115 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> job </td>
   <td style="text-align:right;"> 7005 </td>
   <td style="text-align:right;"> 4354 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Total </td>
   <td style="text-align:right;"> 16099 </td>
   <td style="text-align:right;"> 10006 </td>
  </tr>
</tbody>
</table>
