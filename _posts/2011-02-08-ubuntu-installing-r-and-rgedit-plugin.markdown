---
author: Alex Singleton
layout: post
title: Ubuntu - Installing R and RGedit Plugin
categories:
- Software
---

R is a fantastic bit of software which I have been using on and off for a number of years since I gave up on SAS due to their (free for academics) annoying licenses and limited support for the things I wanted to do - R is infinitely flexible and totally free. Installing R on Ubuntu is very easy:
```    
sudo apt-get install r-base
```

You can then start [R](http://www.r-project.org/) from the terminal by typing R and pressing enter... or...

If you prefer, I have found the [RGedit](http://rgedit.sourceforge.net/) plugin for the pre-installed text editor Gedit to be very good. This can be installed as follows:
```    
    wget http://www.kaduk.net/~mateusz/gedit-r-plugin/kaduk.asc cat kaduk.asc | apt-key add -
    
    echo "deb http://www.kaduk.net/~mateusz/gedit-r-plugin ./" >> /etc/apt/source.list
    
    sudo apt-get update
    
    sudo apt-get install gedit-r-plugin
```

After install the only thing you need to do is fire up Gedit and select "Preferences" from the "Edit" menu. Then on the plugins tab check the box "R integration". This should open an R console at the base of Gedit and load R (Click on the picture to see how this looks).
