---
layout: page
title: Open Ocean Science and Open Software Tools 
---

<img class="img-wide" src="/public/images/IYNA_JC66_3257_wide.jpg"><br>

I try to understand the physical and biological processes that shape the distribution and movements of animals, their foraging and migration behaviours, and their life-history strategies. I predominantly address these questions by studying life in the open ocean, the so called pelagic realm, and by using a combination of field observations and computational/theoretical approaches. 

I am currently a postdoctoral associate at the University of Florida where I study the bioenergetics and foraging strategies of Antarctic albatrosses. This research is funded by the National Science Foundation and conducted in collaboration with scientists at Virginia Tech and the British Antarctic Survey. 

I love to dig into biological data and am broadly interested in making and improving quantitative tools for ecological research. My work aims to bridge the gap between field observations and ecological theory and to this end I am working on a number of [open source software projects](http://pboesu.github.io/software).

In my previous and ongoing work I have studied a variety of biological systems including the midwater ecology around seamounts and atolls, resource allocation strategies and migration phenology in penguins and the ecology of human and non-human pathogens and disease vectors. 




<h3> Recent News and Blog posts  </h3>

<div class="post-titles">
  {% for post in site.posts limit: 5 %}
   <div class="post-title">
   {{ post.date | date_to_string }}:   <a href="{{ post.url }}">{{ post.title }}</a>
  </div>
  {% endfor %}
</div>
