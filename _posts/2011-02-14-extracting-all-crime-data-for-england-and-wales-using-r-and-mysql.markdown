---
author: Alex Singleton
layout: post
title: Extracting all Crime Data for England and Wales using R and MYSQL
categories:
- r
---

![](/public/images/R.png)Last week I started creating some data extraction code for the new England and Wales[ crime maps](http://www.police.uk/) website using the [R software / language](http://www.r-project.org/). Although there is an API, a more efficient way of accessing all of the data (and without causing stress to their API server) is to download the CSV files located [here](http://www.police.uk/data) for each police force. To download these manually, extract the data and process in R would take a very long time, not to mention be very dull. BUT....

With some R magic, all is not lost, and the data can even be easily imported into a MYSQL database with ease using a relatively small amount of code.

You can use the code to download data by street, or by "neighbourhood" (I am still not sure what these are?). And, with luck, if the server / naming conventions do not change, the code should be re-usable each time new data is released.

You need both R and MYSQL installed - see [here](/?p=396) and [here](/?p=407).

The only things which you need to specify in the code are:

```    
con <- dbConnect(MySQL(), user="root", password="password", dbname="Police", host="localhost")
ym <- '2010-12' #yyyy-mm    
level <- 'street' #'street or neighbourhood'
downloaddir <- '/home/alex/Desktop/' #where you will download the files
```

Click the post title for the full code...

<!-- more -->

This R code is provided without warranty! Use at your own risk!

```splus
    
    ############ ALEX SINGLETON (www.alex-singleton.com) ############ 
    
    ### Download all the UK police data and import into a MYSQL DB###
    
    ############ Feel free to use this code as you wish #############
    
    #################################################################
    
    
    
    
    
    ####################Database Setup####################
    
    
    
    #Get the package RMySQL which enables connection to a MYSQL database
    
    install.packages("RMySQL", dependencies = TRUE)
    
    library(RMySQL)
    
    
    
    #Create connection to a local MYSQL DB called police
    
    con <- dbConnect(MySQL(), user="root", password="password", host="localhost")
    
    dbSendQuery(con, "create database Police")
    
    
    
    #Create connection to a local MYSQL DB called police
    
    con <- dbConnect(MySQL(), user="root", password="password", dbname="Police", host="localhost")
    
    
    
    
    
    
    
    #Creates a constabulary ID table and populates with constabularies in the format used in the URLs, Zip and CSV files
    
    
    
    dbSendQuery(con, "CREATE TABLE ConstabularyID(ID TINYINT(3) KEY AUTO_INCREMENT, Constabulary VARCHAR(20))")
    
    
    
    dbSendQuery(con, "INSERT INTO ConstabularyID(Constabulary) VALUES ('avon-and-somerset'), ('bedfordshire'), ('cambridgeshire'), ('cheshire'), ('city-of-london'), ('cleveland'), ('cumbria'), ('derbyshire'), ('devon-and-cornwall'), ('dorset'), ('durham'), ('dyfed-powys'), ('essex'), ('gloucestershire'), ('greater-manchester'), ('gwent'), ('hampshire'), ('hertfordshire'), ('humberside'), ('kent'), ('lancashire'), ('leicestershire'), ('lincolnshire'), ('merseyside'), ('metropolitan'), ('norfolk'), ('north-wales'), ('north-yorkshire'), ('northamptonshire'), ('northumbria'), ('nottinghamshire'), ('south-wales'), ('south-yorkshire'), ('staffordshire'), ('suffolk'), ('surrey'), ('sussex'), ('thames-valley'), ('warwickshire'), ('west-mercia'), ('west-midlands'), ('west-yorkshire'), ('wiltshire')")
    
    
    
    #Create a crimes ID tables and populates with the different categories of crimes
    
    dbSendQuery(con, "CREATE TABLE CrimeID(ID TINYINT(3) KEY AUTO_INCREMENT, Crime VARCHAR(25))")
    
    dbSendQuery(con, "INSERT INTO CrimeID(Crime) VALUES ('Anti-social behaviour'), ('Burglary'), ('Other crime'), ('Robbery'), ('Vehicle crime'), ('Violent crime')")
    
    
    
    ##################End Database Setup####################
    
    
    
    
    
    
    
    ####################Specify and create setup variables and table####################
    
    #specify...
    
    ym <- '2010-12' #yyyy-mm
    
    level <- 'street' #'street or neighbourhood'
    
    downloaddir <- '/home/alex/Desktop/' #where you will download the files
    
    
    
    #Create the empty table which will be used to store the current months crime data
    
    
    
    tabname <- (paste('_',(gsub('-','',ym)), sep = '')) #Table name for selected ym / level
    
    dbSendQuery(con, (paste("CREATE TABLE ",tabname,"(ID INT KEY AUTO_INCREMENT, Easting DOUBLE, Northing DOUBLE, Location CHAR(100), Context CHAR(100), RB TINYINT(2), FW TINYINT(2), CT TINYINT(1))", sep='')))
    
    ##################End specify setup variables and table##################
    
    
    
    ##############################Create Lookups#############################
    
    
    
    #Create a constabulary ID Dataframe
    
    IDConst <- dbGetQuery(con, "SELECT ID, Constabulary FROM ConstabularyID")
    
    IDConst$Constabulary  <- gsub('-',' ',toupper(IDConst$Constabulary))
    
    IDConst$Constabulary  <- gsub(' ','',IDConst$Constabulary)
    
    
    
    #Create a Crime ID Dataframe
    
    IDCrime <- dbGetQuery(con, "SELECT ID, Crime FROM CrimeID")
    
    ##########################End create Lookups#############################
    
    
    
    
    
    
    
    ####################Start the Main Application#################
    
    
    
    regionlst <- dbGetQuery(con, "SELECT Constabulary FROM ConstabularyID") #Get a list of all the constabulary from the database
    
    names(regionlst) <-NULL
    
    regionlst <- unlist(regionlst)
    
    
    
    for (region in regionlst) { 
    
    
    
    #Based on the setup variables, create strings for the names of the CSV and ZIP files
    
    csvfile <- paste(ym,'-',region,'-',level,'.csv', sep = '')
    
    zipfile <- paste(ym,'-',region,'-',level,'.zip', sep = '')
    
    
    
    #Create download location string
    
    url <- paste('http://crimemapper2.s3.amazonaws.com/frontend/crime-data/',ym,'/',zipfile, sep= '')
    
    dest <- paste(downloaddir,zipfile)
    
    
    
    #Download Zip File
    
    download.file(url,dest)
    
    
    
    #Unzip CSV from Zip file
    
    unzip((paste(downloaddir,zipfile)), files = NULL, list = FALSE, overwrite = TRUE,junkpaths = FALSE, exdir = downloaddir)
    
    
    
    #Read CSV into R
    
    
    
    constData <- read.csv((paste(downloaddir,csvfile, sep = '')), header = TRUE, sep = ",", quote="\"", dec=".",)
    
    
    
    ############################Prepare the data frame for import into the database############################
    
    
    
    constData$Reported.by <- gsub(' CONSTABULARY','',toupper(constData$Reported.by))#convert the reporting constabulary to upper case letters; remove the word 'constabulary'
    
    constData$Falls.within <- gsub(' CONSTABULARY','',toupper(constData$Falls.within))#convert the reporting constabulary to upper case letters; remove the word 'constabulary'
    
    
    
    constData$Month <- NULL #Removes the Month column
    
    constData$Location <- gsub('On or near ','',constData$Location)#Removes 'On or near ' from the Location column
    
    constData$Reported.by <- gsub('POLICE','',constData$Reported.by)#Removes ' POLICE'  from the Reported by column
    
    constData$Falls.within <- gsub('POLICE','',constData$Falls.within)#Removes ' POLICE'  from the falls within column
    
    constData$Reported.by <- gsub(' ','',constData$Reported.by)#Removes spaces
    
    constData$Falls.within <- gsub(' ','',constData$Falls.within)#Removes spaces
    
    constData$Reported.by <- gsub('-','',constData$Reported.by)#Removes hyphen
    
    constData$Falls.within <- gsub('-','',constData$Falls.within)#Removes hyphen
    
    
    
    t1 <- merge(constData, IDConst, by.x = "Reported.by", by.y = "Constabulary")#Add ID values for the reporting constabulary
    
    t1$Reported.by <- NULL #Removes the reporting column
    
    colt1 <- ncol(t1) #Finds the number of columns in the data frame
    
    names(t1)[colt1] <- 'RB' #renames the appended ID column to RB - i.e. reported by
    
    
    
    t2 <- merge(t1, IDConst, by.x = "Falls.within", by.y = "Constabulary")#Add ID values for the constabulary where the crime is located
    
    t2$Falls.within <- NULL #Removes the Falls within column
    
    colt2 <- ncol(t2) #Finds the number of columns in the data frame
    
    names(t2)[colt2] <- 'FW' #renames the appended ID column to FW - i.e. falls within
    
    
    
    t3 <- merge(t2, IDCrime, by.x = "Crime.type", by.y = "Crime")#Add ID values for the constabulary where the crime is located
    
    t3$Crime.type <- NULL #Removes the Crime type column
    
    colt3 <- ncol(t3) #Finds the number of columns in the data frame
    
    names(t3)[colt3] <- 'CT' #renames the appended ID column to CT - i.e. crime type
    
    
    
    
    
    ##############################################################################################################
    
    
    
    #Add the constabulary data to the appropriate table in the database
    
    
    
    dbWriteTable(con, tabname, t3, append = TRUE, row.names = FALSE)
    
    
    
    #Clear variables before next loop
    
    rm(colt1)
    
    rm(colt2)
    
    rm(colt3)
    
    rm(constData)
    
    rm(csvfile)
    
    rm(dest)
    
    rm(region)
    
    rm(t1)
    
    rm(t2)
    
    rm(t3)
    
    rm(url)
    
    rm(zipfile)
    
    
    
    }
    
    
    
    mysqlCloseConnection(con)
    
    
```
    
