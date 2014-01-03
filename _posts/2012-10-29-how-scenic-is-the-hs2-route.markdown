---
author: Alex Singleton
layout: post
title: How Scenic is the HS2 Route?
categories:
- r
---

It is fairly clear from the duration between this and my last post that various other things have been getting in the way of updates. Anyway, I shall try and post a few updates on news and things I have been working on recently in the coming weeks before getting back to regular posting!

Back in January I had a student working on a dissertation about the High Speed 2 railway. This got me thinking about what sort of data could be used to characterise the route. As it transpired there wasn't a publicly available Shapefile of the route at the time, however, an ex-colleague (Daryl Lloyd) who by chance now works for the Department for Transport, had almost in unison realised the same thing; and indeed, on the day I had contacted him was negotiating with HS2 Ltd to release the file. This is now available to download from [here](http://blackadder.dev.openstreetmap.org/hs2/).

One unusual dataset that I thought would provide interesting context is the [My Society](http://www.mysociety.org) project [ScenicOrNot](http://scenic.mysociety.org). This application enables users to rate the level of "scenic"[ness] of a series of random georeferenced photographs taken from the [Geograph project](http://www.geograph.org.uk). The raw scores are available to download [here](http://scenic.mysociety.org/votes.tsv). For each picture lat / lon, multiple votes were concatenated in single line. As such, the records were split up, so one each vote appeared as a single line in the exported CSV. This was done using the following R code.

```splus

#Read in Scenic Data from http://scenic.mysociety.org/

Scenic <- read.delim2("http://scenic.mysociety.org/votes.tsv", header = TRUE, sep = "\t", quote="\"")

AllVotes <- NULL

list <- for(x in 1:nrow(Scenic)) {

row <- Scenic[x,]

Lat <- row$Lat

Lon <- row$Lon

ID <- row$ID

Votes <- as.data.frame(strsplit(as.character(row$Votes),",")) # Gets the votes as a dataframe list

Votes$Lat <- Lat #Add Lat

Votes$Lon <- Lon #Add Lon

Votes$ID <- ID # Add ID

names(Votes)[1] <- "Votes" #Rename Votes list

AllVotes <- rbind(AllVotes,Votes)

rm(Votes,ID,Lat,Lon,row)

print(x)

}

AllVotes_test <- AllVotes

AllVotes_test$Lat <- as.numeric(AllVotes_test$Lat)

AllVotes_test$Lon <- as.numeric(AllVotes_test$Lon)

write.csv(AllVotes_test, file = "scenic_final_out.csv", row.names = FALSE)


```

The resulting CSV can be downloaded [here](https://docs.google.com/open?id=0B6XoGtkAAlgmME5Nd3NQa1hFUTA). This relates to an extract from January 22nd 2012.

These data were then converted into OSGB and imported into a PostGIS database. A point in polygon operation was used to create average scores for a 5km grid over England. The shapefile with average votes can be downloaded [here](https://docs.google.com/open?id=0B6XoGtkAAlgmbmV0UXNHMjlpSTQ).

Created using QGIS, the following maps show the output of these analyses...

[![](/public/images/Scenic-261x300.jpg)](/public/images/Scenic.jpg)

When we overlay the HS2 route onto these data we can see that this passes through areas with varying degrees of "scenic"ness.

[![](/public/images/HS2-271x300.jpg)](/public/images/HS2.jpg)

Although these data are interesting in themselves, there is obvious utility if this sort of information was combined with other indicators such as population density and characteristics. The assumption being that all other things being equal, then people may object to disruption in those areas which they consider more "scenic"... perhaps something for further work!
