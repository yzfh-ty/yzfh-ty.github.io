---
title: cloud flare tunnel 实现内网穿透
tags:
  - 内网穿透
categories:
  - - 内网穿透
abbrlink: 45368
date: 2024-04-17 14:17:19
excerpt: Cloudflare Tunnel 是 Cloudflare Zero Trust 中的一个产品，它能够帮助用户将位于内网中的服务暴露到公网上，从而使得外部用户可以通过互联网访问这些服务。相比较于 frp、ngrok 等内网穿透工具，使用 Cloudflare Tunnel 可以获得更好的安全性和性能
---

Cloudflare Tunnel是Cloudflare Zero Trust中的一个产品，它能够帮助用户将位于内网中的服务暴露到公网上，从而使得外部用户可以通过互联网访问这些服务。相比较于frp、ngrok等内网穿透工具，使用Cloudflare Tunnel可以获得更好的安全性和性能

## 一、准备

一个cloud flare账号

持有一个域名

一台电脑

## 二、开始

### 1\. 修改域名DNS

注册cloud flare账号，登录，点击开始使用 [点击打开官网](https://dash.cloudflare.com/)（打开的时候非常慢，建议用魔法）

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/3.png)

输入域名

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/4.png)

选择最下面这免费的

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/5.png)

设置项根据自身进行设置

完成以后显示这个页面

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/8.png)

修改域名的DNS

以腾讯云为例

控制台-->域名-->选择要修改DNS的域名-->修改DNS-->填入CF的DNS

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/1.png)

将这两个就是CF的DNS

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/9.png)

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/7.png)

等待DNS服务器更改完成

### 2\. 创建tunnel

打开cloud flare官网-->zero trust-->networks-->tunnels-->add a tunnel

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/2.png)

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/10.png)

填写一个tunnel名字

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/11.png)

根据自己的系统选择合适的安装方式，我这里以window为例

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/12.png)

Linux：选择符合自己系统，复制命令，在命令窗以root用户运行

window：下载，安装，运行命令

为你的域名配置一个子域名（Subdomain），Path 留空，URL 处填写内网服务的IP加端口号。注意 Type 处建议使用 HTTP，因为 Cloudflare 会自动为你提供 HTTPS，因此此处的转发目标可以是 HTTP 服务端口

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/14.png)

访问域名，cloud flare自动提供了证书

![cloud flare tunnel](https://upyun.525866.xyz/photo/CF/15.png)