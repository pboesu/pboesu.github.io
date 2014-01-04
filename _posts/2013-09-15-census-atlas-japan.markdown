---
author: Alex Singleton
layout: post
title: Census Atlas Japan
categories:
- r
---

![Japan Census Atlas](/public/images/cover-210x300.png)The [2011 Census Open Atlas](r/2013/02/05/2011-census-open-atlas-project/2011-census-open-atlas-project/) project has been put on hold recently as various other research projects have intervened - more on these soon. However, over the summer  [Chris Brunsdon](http://www.liv.ac.uk/environmental-sciences/staff/christopher-brunsdon/) and I have taken a research trip to Ritsumeikan University (Japan) where we visited [Keiji Yano](http://www.ritsumei.ac.jp/eng/html/research/areas/feat-researchers/interview/yano_k.html/) and [Tomoki Nakaya](http://www.ritsumei.ac.jp/~nakaya/). As part of this trip I began developing a census atlas for Japan.

I have developed Atlases for a series of larger urban city areas (multiple municipalities), and also separately, those municipalities that were not within these zones.

Some randomly selected examples are as follows [you might be better right clicking these and selecting 'save as' or 'download' given that the file sizes are quite large for the cities]:
	
  * [Sunagawa-shi [18MB]](http://data.alex-singleton.com/Japan/01226.pdf)	
  * [Tahara-shi [44MB]](http://data.alex-singleton.com/Japan/23231.pdf)

And for the cities:
	
  * [Kyoto [444MB]](http://data.alex-singleton.com/Japan/City/Kyoto.pdf)	
  * [Osaka [190MB]](http://data.alex-singleton.com/Japan/City/Osaka.pdf)
  * [Tokyo [466MB]](http://data.alex-singleton.com/Japan/City/Tokyo.pdf)

The full list of maps are available [here](/japandownload/).

[![tokyo](/public/images/tokyo-300x273.png)](/public/images/tokyo.png)

More details after the break about how the maps were created...

<!-- more -->

The data used in this Atlases are available from [Statistics Japan](http://www.stat.go.jp/english/), however, for this project these were provided to me by [Keiji Yano](http://www.ritsumei.ac.jp/eng/html/research/areas/feat-researchers/interview/yano_k.html/) and  [Tomoki Nakaya](http://www.ritsumei.ac.jp/~nakaya/) who also supplied the boundaries and various lookups. The places highlighted on the map were extracted from the Japan gazetteer file from [Geonames](http://download.geonames.org/export/dump/).

In the previous atlas I used R to render out A4 PDF files which had an integrated scale bar and legend, however, due to the different shapes of the regions being mapped, these results were not always satisfactory; with some scale bars and legends overlapping the content of the maps. This positioning is difficult (although not impossible) to control when the map production is automated. Also, I was not happy about the scaling of the maps, as R had a tendency to put a lot of white space  around the maximum extent of the plot (could be my bad coding!). My ex-colleague [Jon Reades](http://www.kcl.ac.uk/sspp/departments/geography/people/academic/reades/index.aspx) also pointed out that this issue might be resolved with [LaTex](http://www.latex-project.org/). Previously I had just been stitching together a series of PDF maps and a cover PDF with [pdftk](http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/). An advantage of LaTex is that this has very good layout functionality, enabling images to be scaled to page widths etc. Also, LaTex enabled me to create a table of contents (toc) listing each of the maps at the front of the atlas. It was also possible to make the toc and the maps clickable, enabling links back and forth. Overall I think this is more satisfactory than the previous method I used, however, there are obviously a lot more things that would improve the layouts.

From a workflow perspective, the code operates slightly differently than before; loops render out all maps and a separate legend for each area. As these PDF are processed, an  external library [PDFCrop](http://users.skynet.be/tools/) was used to trim away all whitespace around the image extent. A loop then writes a Latex file that processes all images and their appropriate legend into a single document including the toc and links. This is rendered on the terminal with [pdflatex](http://www.tug.org/applications/pdftex/) and then [pdftk](http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) is used to append the cover.

I think LaTex is definitely the way forward, although I would not claim that I have the process optimised yet. A massive benefit of this little project is that it has forced me to learn LaTex, and indeed I have now started using this for my academic writing... like R, LaTex is quite liberating once you are over the initial learning curve. Again, as before, the code to make the maps is available over on my Rpubs page [here](http://rpubs.com/alexsingleton/japan).
