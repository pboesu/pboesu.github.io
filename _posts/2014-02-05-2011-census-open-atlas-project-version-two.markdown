---
author: Alex Singleton
layout: post
title: Census Open Atlas Project Version Two
categories:
- r
---

![CensusAtlas](/public/images/CensusAtlas.jpg)This time last year I published the first version of the [2011 Census Open Atlas ](/r/2013/02/05/2011-census-open-atlas-project/) which comprised Output Area Level census maps for each local authority district. This turned out to be quite a popular project, and I have also extended this to [Japan](/r/2013/09/15/census-atlas-japan/).

The methods used to construct the atlases have now been refined, so each atlas is built from a series of PDF pairs comprising a map and a legend. These are generated for each of the census variable (where appropriate), with the layout handled by Latex. As with demonstrated in the Japan atlas, this also gives the advantage of enabling a table of contents and better description for each map.

Some other changes in version two include:

* Labels added to the legends
* Scale bars added
* Addition of the Welsh only census variables
* Removal of overly dense labels

When the original project was picked up by the [Guardian](http://www.theguardian.com/news/datablog/2013/feb/08/census-data-mapped) I made an estimate of the actual number of maps created, however, for this run, I counted them. In total **134,567 maps were created**.

## Download the maps
The maps can be [downloaded from github](http://www.alex-singleton.com/Open-Atlas/); and again, the code used to create the maps is [here](https://github.com/alexsingleton/Open-Atlas/tree/master/Code) (feel free to fix my code!). 

* [E08000012 : Liverpool](http://data.alex-singleton.com/2011_ATLAS/E08000012_Liverpool.pdf)
* [E08000035 : Leeds](http://data.alex-singleton.com/2011_ATLAS/E08000035_Leeds.pdf)
* [E08000003 : Manchester](http://data.alex-singleton.com/2011_ATLAS/E08000003_Manchester.pdf)
* All Maps are available [here](http://www.alex-singleton.com/Open-Atlas/).

## Automated Savings
A manual map might typically take 5 minutes to create - thus:  

* 5 minutes X 134,567 maps = 672,835 minutes
* 672,835 minutes / 60 = 11,213.9 hours
* 11,213.9 hours / 24 = 467.2 days (no breaks!)

So, if you take a 35 hour working week for 46 weeks of a year ([6 weeks holiday](https://www.gov.uk/holiday-entitlement-rights)), this equates to 1,610 hours of map making time per year. As such, finishing 134,567 maps would take 6.9 years (11,213.9 / 1,610).

This would obviously be a very boring job; however, it would also be expensive. If we take the median wages of a GIS Technician at [£20,030](http://goo.gl/YvJu7W) then the "cost" of all these maps would be 6.9 X £20,030 = **£138,207**. This toy example does illustrate how [learning to code](press/2014/01/04/Why-Geographers-Should-Learn-to-Code/) can help save significant money, and indeed what a useful tool R is for spatial analysis.

