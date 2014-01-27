---
author: Alex Singleton
layout: post
title: Census Open Atlas Project Version Two
categories:
- r
---

![CensusAtlas](/public/images/CensusAtlas.jpg)This time last year I published the first version of the [2011 Census Open Atlas ](/r/2013/02/05/2011-census-open-atlas-project/) which comprised Output Area Level census maps for each local authority district. This turned out to be quite a popular project, and I have also extended this to [Japan](/r/2013/09/15/census-atlas-japan/).

The methods used to construct the atlases has now been refined, so each atlas is now built from a series of PDF pairs comprising a map and legend. These are generated for each of the census variable (where appropriate), with the layout handled by Latex. As with demonstrated in the Japan atlas, this also gives the advantage of enabling a table of contents and better description for each map.

Some other changes in version two include:

* Labels added to the legends
* Scale bars added
* Addition of the Welsh only census variables
* Removal of overly dense labels

When the original project was picked up by the [Guardian](http://www.theguardian.com/news/datablog/2013/feb/08/census-data-mapped), I took an estimate of the actual number of maps created, however, for this run I counted them. In total **134,567 maps were created**.

## Download the maps
The maps can be downloaded from github; and again, the code used to create the maps is here (feel free to fix my code!). Feel free to move these to your own website or link.

## Automated Savings
A manual map might typically take 5 minutes to create - thus:  

* 5 minutes X 134,567 maps = 672,835 minutes
* 672,835 minutes / 60 = 11,213.9 hours
* 11,213.9 hours / 24 = 467.2 days (no breaks!)

So, if you take a 35 hour working week for 46 weeks of a year ([6 weeks holiday](https://www.gov.uk/holiday-entitlement-rights)), this equates to 1,610 hours of map making time per year. As such, finishing 134,567 maps would take 6.9 years (11,213.9 / 1,610).

This would obviously be a very boring job; however, it would also be expensive. If we take the median wages of a GIS Technician being at [£20,030](http://www.payscale.com/research/UK/Job=Geographic_Information_Systems_(GIS)_Technician/Salary) then the cost of all these maps would be 6.9 X £20,030 = **£138,207**. This toy example does illustrate how coding can help save significant money, and indeed what a useful tool R is for spatial analysis.

