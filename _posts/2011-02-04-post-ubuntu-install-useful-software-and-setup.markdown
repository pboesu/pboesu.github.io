---
author: admin
comments: true
date: 2011-02-04 21:38:34+00:00
layout: post
slug: post-ubuntu-install-useful-software-and-setup
title: Post Ubuntu Install - Useful Software and Setup
wordpress_id: 391
categories:
- Software
---

For the past couple of months I have been running Ubuntu 10.10 ("Maverick Meerkat") on my Lenovo X300 laptop. The installation gets pretty much all the hardware up and running with the exception of the fingerprint reader and internal microphone. I am not entirely new to Linux, but the last time I was using it was about 1998 and it was a VERY different experience.  These days Ubuntu is  more than comparable to Windows or OSX - and in some respects actually much easier to use. For example, one thing I have been very impressed with is how simple it is to hook up to my Android phone making it very easy to share the mobile connection and browse the web.

Having said that - out of the box, a number of things have taken some setting up, however, with the power of Google I have muddled my way through. Although many of these installs can be completed in the Ubuntu GUI, I chose to seek out terminal commands so they can be replicated with ease when I no doubt break something serious. As such, this post provides some optional components for Ubuntu along with some software extras I have found useful. Please note, they worked for me, but I don't want to hear about it if they break or don't work for you!

# Software

**GIMP - Image editing software akin to Photoshop ([http://www.gimp.org/](http://www.gimp.org/))**

 ```    
sudo apt-get install gimp
 ```

**Skype - VOIP Software**

 ```    
echo “deb http://download.skype.com/linux/repos/debian/ stable non-free #Skype” | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-key adv –keyserver pgp.mit.edu –recv-keys 0xd66b746e
sudo apt-get update && sudo apt-get install skype
 ```

**VLC - Play everything media player (http://www.videolan.org/vlc/)**

 ```
sudo apt-get update
sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc
 ```

**Liferea - RSS Reader ([http://liferea.sourceforge.net/](http://liferea.sourceforge.net/))**

```
sudo apt-get install liferea
```

# Configuration / Basic System

**Remove Default Email  Evolution**

```    
sudo apt-get remove evolution --purge
rm /home/<user> /.evolution
 ```

**Flash**

```
 sudo apt-get install flashplugin-nonfree
 ```

**Ejection Indicator - simple way to eject usb sticks or DVD**

```
 sudo add-apt-repository ppa:fredp/ppa
 sudo apt-get update && sudo apt-get install ejecter
 ```

**Compiz - Adds fancy effects to the GUI - in particular is  an Expose type effect. I only use this, so I have a one key press to see  all my open windows, just like I do in OSX ([http://www.compiz.org/](http://www.compiz.org/))**

```
 sudo apt-get install compizconfig-settings-manager
 ```

**Dropbox - share files using the cloud (http://www.dropbox.com/) - any alternative that is integrated into Ubuntu on install is [Ubuntu One](https://one.ubuntu.com/)**

```
 echo “deb http://linux.dropbox.com/ubuntu $(lsb_release -cs) main” | sudo tee “/etc/apt/sources.list.d/dropbox.list” > /dev/null
 sudo apt-key adv –keyserver pgp.mit.edu –recv-keys 5044912E
 sudo apt-get update
 sudo apt-get -y –force-yes install nautilus-dropbox
 ```

**DVD Playback - this doesn't work on a fresh install - run this and the problem is solved!**
    
 ```
 sudo apt-get install xine-ui libxine1-ffmpeg
 ```

**Java**
 
 ```
 sudo add-apt-repository ppa:sun-java-community-team/sun-java6
 sudo apt-get install sun-java6-jre sun-java6-plugin
 ```

**Gmail Watcher - this checks your gmail with indicators of new mail**
 
 ```
 sudo add-apt-repository ppa:loneowais/ppa
 sudo apt-get update
 sudo apt-get install gmailwatcher
 ```

**Weather indicator**

```
sudo add-apt-repository ppa:lorenzo-carbonell/atareao
sudo apt-get update && sudo apt-get install my-weather-indicator
```

**Hotot - A nice Twitter client for Linux (http://hotot.org/)**

```
sudo add-apt-repository ppa:hotot-team
sudo apt-get install hotot
```

**Nautilus elementary - a slightly nice file explorer interface**

```
sudo apt-get update && sudo apt-get dist-upgrade
sudo add-apt-repository ppa:am-monkeyd/nautilus-elementary-ppa
```

**Caffeine - Keeps you PC awake either manually or by linking it to start with specific software ([https://launchpad.net/caffeine](https://launchpad.net/caffeine))**
    
```
sudo add-apt-repository ppa:caffeine-developers/ppa
sudo apt-get update
sudo apt-get install caffeine
```