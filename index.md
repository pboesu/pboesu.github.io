---
layout: page
title: 
---

<img class="img-wide" src="/public/images/IYNA_JC66_3257_wide.jpg"><br>

I try to understand the physical and biological processes that shape the distribution, abundance, and movements of animals, and their life-history strategies. I predominantly address these questions primarily by studying [birds](https://ebird.org/profile/ODM4NDg5/world), and by using a combination of field observations and computational/theoretical approaches. I love to dig into biological data and am broadly interested in making and improving quantitative tools for ecological research and to this end I am working on a number of [open source software projects](http://pboesu.github.io/software).

I am based at the [British Trust for Ornithology](https://www.bto.org/) where I oversee a programme of statistical research, covering topics such as the design of biodiversity surveys, analyses of large-scale and long-term datasets and the evaluation of monitoring technology, and lead a team of statisticians and quantitative ecologists who champion ecologically-informed robust data analysis.

In my previous work I have studied a variety of biological systems including the midwater ecology around [seamounts and atolls](http://pboesu.github.io/research/#seamounts), resource allocation strategies and migration phenology in [penguins and albatrosses](http://pboesu.github.io/research/#albatross) and the ecology of human and non-human [pathogens and disease vectors](http://pboesu.github.io/research/#disease). 




<h3> Recent News and Blog posts  </h3>

<div class="post-titles">
  {% for post in site.posts limit: 5 %}
   <div class="post-title">
   {{ post.date | date_to_string }}:   <a href="{{ post.url }}">{{ post.title }}</a>
  </div>
  {% endfor %}
</div>
