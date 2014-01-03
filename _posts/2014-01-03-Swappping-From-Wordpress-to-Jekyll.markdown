---
author: Alex Singleton
layout: post
title: Swapping from Wordpress to Jekyll
categories:
- Software
---

## Background
I have been a Wordpress user for a very long time, however, I feel the increased complexity of the system has resulted in feature bloat, and for me at least, creates a not especially intuitive user interface. There are many features of the system that I have never used, and to be honest, it now probably usurps my requirements as a basic tool to create a record of what I do.

More generally, I have changed my academic workflow quite substantially over the past few years, writing almost entirely in either Latex or Markdown and utilising version control in a serious way on [Bitbucket](https://bitbucket.org) for both academic writing and programming. This has been an enlightening experience!

I have been looking around for an alternative blog system for a while and have been experimenting with [Ghost](https://ghost.org) which is a new, and I think a really promising system. You will see that the founder shares some of my frustrations about [Wordpress](http://john.onolan.org/project-ghost/). It is early days for Ghost, but I could see myself using this in the future once it is a few more versions into development.

## New Solution - Jekyll
[Jekyll](http://jekyllrb.com) takes me back to the late 1990s when I first started to code websites in HTML. This system does not use a database and instead generates a static HTML based website using a variety of formats including markdown - it is essentially a parsing engine. What is clever though is how it can generate a blog layout, essentially using the naming conventions of your files to create a page structure filled with posts. The other really neat thing is that you can host a Jekyll powered website on your [github repository](http://pages.github.com); even with a custom domain name. This costs nothing and is completely transparent, as all the source is available for others to [download](https://github.com/alexsingleton/alexsingleton.github.io). Thus far I have been very impressed.

## How I exited wordpress
The first thing was to get all my posts out of the DB - this involved [exporting an XML file](http://en.support.wordpress.com/export/) and then using [exiwp](https://github.com/thomasf/exitwp) which is a set of Python libraries that converts the XML into Markdown posts that are named correctly for Jekyll. I have been through all of these, pruning out some old posts that weren't especially interesting or had many dead hyperlinks. Something else which has been annoying me recently is [Slideshare](http://www.slideshare.net/alexsingleton/) - the interface is increasingly cluttered, and for some reason it has been doing funny things to the layout of my old presentations. Fortunately, a better solution has emerged (again Github based!) called [Speaker Deck](https://speakerdeck.com) which I have now [converted all my old slides](https://speakerdeck.com/alexsingleton) to; and indeed uploaded some new talks I have done recently. 

For this blog I have adapted a theme called [Hyde](https://github.com/mdo/hyde/), including some extra bits such as: a [category based RSS feed](https://github.com/snaptortoise/jekyll-rss-feeds/wiki) for my R posts (this is important for [R Bloggers](http://www.r-bloggers.com)); the [splitting of short and long posts] (http://foldl.me/2012/jekyll-excerpts/); and the use of [Disquss](disqus.com) to manage comments (not that there are usually many!). Along the way I have borrowed some code from [here](http://erjjones.github.io/blog/How-I-built-my-blog-in-one-day/) (which is an excellent introduction to Jekyll), and also aquired some icons from [iconmonstr](http://iconmonstr.com).

Anyway, I hope you like the new blog.