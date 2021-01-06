---
layout: page
title: 
---

<img class="img-wide" src="/public/images/IYNA_JC66_3257_wide.jpg"><br>

I try to understand the physical and biological processes that shape the distribution, abundance, and movements of animals, and their life-history strategies. I predominantly address these questions by studying birds and animals of the open ocean, and by using a combination of field observations and computational/theoretical approaches. 

I am based at the [British Trust for Ornithology](https://www.bto.org/) where I work as an Ecological Statistician. I analyse data from various BTO surveys and research projects and provide advice on statistical techniques used for scientific analysis and survey design across the organisation.

Prior to my current job I was a postdoc in the [QDEC lab](http://www.sadieryan.net/) at the University of Florida and the [QED lab](http://leah.johnson-gramacy.com/QED/) at Virginia Tech working on the bioenergetics and foraging strategies of Antarctic [albatrosses](http://pboesu.github.io/research/#albatross). 

I love to dig into biological data and am broadly interested in making and improving quantitative tools for ecological research. My work aims to bridge the gap between field observations and ecological theory and to this end I am working on a number of [open source software projects](http://pboesu.github.io/software).

In my previous and ongoing work I have studied a variety of biological systems including the midwater ecology around [seamounts and atolls](http://pboesu.github.io/research/#seamounts), resource allocation strategies and migration phenology in [penguins](http://pboesu.github.io/research/#albatross) and the ecology of human and non-human pathogens and [disease vectors](http://pboesu.github.io/research/#disease). 




<h3> Recent News and Blog posts  </h3>

<div class="post-titles">
  {% for post in site.posts limit: 5 %}
   <div class="post-title">
   {{ post.date | date_to_string }}:   <a href="{{ post.url }}">{{ post.title }}</a>
  </div>
  {% endfor %}
</div>
