---
author: Alex Singleton
layout: post
title: Installing MYSQL and Admin / GUI Tools in Ubuntu
categories:
- Software
---

Yet more terminal commands... this time for setting up a MYSQL database and installing the GUI tools in  Ubuntu

**MSQL**
```
sudo apt-get install mysql-server
```

**MYSQL GUI Tools (e.g. Query Browser)**
```
sudo apt-get install mysql-gui-tools-common
```

**MYSQL DBI Interface - required to connect to R**

```
sudo apt-get install libdbd-mysql libmysqlclient16-dev
```