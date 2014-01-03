---
author: admin
comments: true
date: 2012-10-29 14:08:24+00:00
layout: post
slug: installing-routino-under-osx
title: Installing Routino under OSX
wordpress_id: 840
categories:
- r
---

[Routino](http://www.routino.org) is a set of libraries that enable road based route calculations to be conducted over OpenStreetMap data. I have been using them extensively over the past six months for a project looking at CO2 emissions and the commute to school.

Although Routino was designed to run under Linux, it can also be compiled and installed under OSX (sorry no windows!).

1. First download and unzip the latest version of Routino from [here](http://www.routino.org).

2. Ensure that [Xcode](https://developer.apple.com/xcode/) and the Xcode command line tools are both installed. On Xcode 4.5 the command line tools can be installed from within Xcode through Xcode >>> Preferences >>> Downloads tab >>> Click "install".

3. Navigate to the downloaded Routino folder using the terminal and compile the source code using a "make" command. You would need to supplement "alex" in the following commands for you own user account name.

```
cd /Users/alex/Desktop/routino-2.3.2/
make
```

The result should be a series of messages printed to the terminal that indicate Routino being compiled correctly.

4. The next stage is to copy the compiled libraries (found in the /web/bin folder into your usr/bin folder which should appear in your system PATH (You can check if this is the case by running echo $PATH from the terminal). The -R and the fact that bin ends with a "/" mean that the contents of the folder are copied rather than the folder itself.


```
sudo cp -R  /Users/alex/Desktop/routino-2.3.2/web/bin/ /usr/bin/
```

To check that this has worked, if you enter "planetsplitter" or "router" on the terminal the input parameters of these tools should be printed.

For more information on use of the programme, see the Routino documentation [here](http://www.routino.org/documentation/).

The only issue I have had with Routino is that occasionally I would get implausible and very long routes calculated. It turned out that this was related to an issue in the underlying OSM data where access by foot wasn't necessarily specified on "trunk" roads. A work around for this was to specify that pedestrians could walk on these routes using the tagging rules in the specification [XML files](http://www.routino.org/xml/). The results of these changes can be seen in the following map.

[![](/public/images/Route_Test_Map-300x211.jpg)](/public/images/Route_Test_Map.jpg)