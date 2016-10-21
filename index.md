---
layout: page
title: Open Ocean Science and Open Source Software 
---

<img class="img-wide" src="/public/images/IYNA_JC66_3257_wide.jpg"><br>

I am a marine ecologist studying life in the open ocean, the so called pelagic realm. Using a combination of field observations and computational/theoretical approaches, I try to understand the physical and biological processes that shape the distribution and movements of pelagic animals and their foraging behaviours. 

I am also more broadly interested in quantitative tools for ecological research. My work aims to bridge the gap between field observations and ecological theory and to this end I am working on a number of [open source software tools](http://pboesu.github.io/publications/#Software).

I am currently a postdoctoral associate at the University of Florida where I study the bioenergetics and foraging strategies of Antarctic albatrosses. This research is funded by the National Science Foundation and conducted in collaboration with scientists at Virginia Tech and the British Antarctic Survey. 

My PhD at the Universities of St Andrews and Oxford investigated the midwater ecology around seamounts and atolls in the Central and Southern Indian Ocean. I then worked on resource allocation strategies in macaroni penguins at the British Antarctic Survey. 




<h3> Recent News and Blog posts  </h3>

<div class="post-titles">
  {% for post in site.posts limit: 5 %}
   <div class="post-title">
   {{ post.date | date_to_string }}:   <a href="{{ post.url }}">{{ post.title }}</a>
  </div>
  {% endfor %}
</div>
