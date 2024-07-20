---
title: 隐藏root
tags:
  - root
categories:
  - - android
    - 刷机
abbrlink: 14120
date: 2024-03-26 08:12:46
excerpt: 手机获取 root 权限以后会导致银行类的 APP 无法打开，所以就需要隐藏 root
---

![封面](https://upyun.525866.xyz/photo/root/root_0.png)

隐藏root主要是因为银行类的APP会检测，导致无法正常使用

## 一、Magisk随机包名

设置-->隐藏Magisk应用-->输入名称（随意）-->继续安装

当包名与图一不一致时，证明成功了

![1](https://upyun.525866.xyz/photo/ycROOT/1.jpg)

图片源自[Magisk中文网](https://magiskcn.com/hide-magisk-app)

## 二、安装lsp模块

### 1\. lsp下载 [点击下载](https://github.com/LSPosed/LSPosed/releases/)

![2](https://upyun.525866.xyz/photo/ycROOT/2.png)

### 2\. 打开Zygisk

![3](https://upyun.525866.xyz/photo/ycROOT/3.jpg)

图片源自[Magisk中文网](https://magiskcn.com/hide-magisk-app)

### 3\. 安装lsp模块

打开Magisk-->模块-->从本地安装-->选择安装包-->重启手机

![4](https://upyun.525866.xyz/photo/ycROOT/14.jpg)

### 4\. 显示已激活，即安装成功

![5](https://upyun.525866.xyz/photo/ycROOT/5.png)

## 三、使用隐藏应用列表

### 1\. 下载安装隐藏应用列表 [点击下载](https://github.com/Dr-TSNG/Hide-My-Applist/releases)

### 2\. 打开LSPosed，模块-->隐藏应用列表-->启用模块（勾选 系统框架）-->重启设备

![6](https://upyun.525866.xyz/photo/ycROOT/6.jpg)

图片源自[Magisk中文网](https://magiskcn.com/hide-magisk-app)

### 3\. 再次打开隐藏应用列表，显示模块已激活则可以正常使用

![7](https://upyun.525866.xyz/photo/ycROOT/7.jpg)

图片源自[Magisk中文网](https://magiskcn.com/hide-magisk-app)

### 4\. 打开 隐藏应用列表 ： 模板管理-->创建黑名单模板（模板名称随意）-->编辑列表-->把我们要隐藏的应用全勾上（比如像面具、模块这些）

![8](https://upyun.525866.xyz/photo/ycROOT/8.jpg)

图片源自[Magisk中文网](https://magiskcn.com/hide-magisk-app)

### 5\. 下载检测app（解压后安装，压缩包里面有6个app，自己挑选，最好是都下载） [点击下载](https://upyun.525866.xyz/photo/ycROOT/%E6%A3%80%E6%B5%8Bapp.zip)

### 6\. 打开 隐藏应用列表-->应用管理-->选择应用-->启用隐藏（勾选模板） 确定

![9](https://upyun.525866.xyz/photo/ycROOT/10.jpg)

图片源自[Magisk中文网](https://magiskcn.com/hide-magisk-app)

### 7\. 如果检测app显示正常，即可在应用管理那里继续选择app

## 四、使用Magisk的排除列表和shamiko白名单

### 1\. 配置排除列表

打开Magisk-->点击设置-->点击配置遵循列表（不要打开遵循列表)-->勾选需要隐藏的app（注意app上面的横线，一定要到最后，没到最后证明没有完整的勾选）

![10](https://upyun.525866.xyz/photo/ycROOT/11.jpg)

### 2\. 使用shamiko

下载模块shamiko   [点击下载](https://github.com/LSPosed/LSPosed.github.io/releases)

安装   打开magisk-->模块-->从本地安装-->选择安装包-->重启手机

![11](https://upyun.525866.xyz/photo/ycROOT/15.jpg)

下载shamiko (方便开启白名单模式 [点击下载](https://upyun.525866.xyz/photo/ycROOT/Shamiko_1.0.apk)

打开shamiko-->允许-->打开开关

![12](https://upyun.525866.xyz/photo/ycROOT/16.jpg)

再次打开magisk，看到显示“Shamiko is working as whitelist mode”即已成功应用shamiko白名单

![13](https://upyun.525866.xyz/photo/ycROOT/17.png)

## 相关链接

[Magisk安装教程 - Magisk中文网 (magiskcn.com)](https://magiskcn.com/)