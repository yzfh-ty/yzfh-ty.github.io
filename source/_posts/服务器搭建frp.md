---
title: 服务器搭建frp
tags:
  - 内网穿透
categories:
  - - 内网穿透
abbrlink: 61096
date: 2024-04-16 21:55:34
excerpt: frp 是一款高性能的反向代理应用，专注于内网穿透。它支持多种协议，包括 TCP、UDP、HTTP、HTTPS 等，并且具备 P2P 通信功能。使用 frp，您可以安全、便捷地将内网服务暴露到公网，通过拥有公网 IP 的节点进行中转
---

frp 是一个专注于内网穿透的高性能的反向代理应用，支持 TCP、UDP、HTTP、HTTPS 等多种协议，且支持 P2P 通信。可以将内网服务以安全、便捷的方式通过具有公网 IP 节点的中转暴露到公网。

本文使用一键安装脚本进行搭建，手动搭建请看 [frp - 随笔分类 - 哈喽哈喽111111](https://www.cnblogs.com/hahaha111122222/category/1171545.html)

## 一、准备

有公网IP的服务器

一台电脑

## 二、服务器端

使用一键安装脚本 来自[MvsCode/frps-onekey: Frps 一键安装脚本&管理脚本 (github.com)](https://github.com/MvsCode/frps-onekey?tab=readme-ov-file)

```
wget https://raw.githubusercontent.com/mvscode/frps-onekey/master/install-frps.sh -O ./install-frps.sh
chmod 700 ./install-frps.sh
./install-frps.sh install
```

过程中会让选择参数（基本默认就行），输入密码（dashboard\_pwd）的时候不会显示，直接输入就行，可以参考这两个 [文档 frp (gofrp.org)](https://gofrp.org/zh-cn/docs/) [frp内网穿透客户端frpc.ini各配置参数详解](https://www.cnblogs.com/hahaha111122222/p/8508988.html)

当显示这个的时候说明安装成功

记得在安全组放行端口

![1](https://upyun.525866.xyz/photo/frp/1.png)

可以通过IP+后台端口（dashboard\_port）进行访问，输入账号（dashboard\_user）密码（dashboard\_pwd）

![2](https://upyun.525866.xyz/photo/frp/3.png)

![3](https://upyun.525866.xyz/photo/frp/2.png)

显示这个界面证明服务器端已经完成安装

## 三、客户端

下载并解压frp

编辑frpc.toml，填写完成保存

```
[common]
server_addr = "127.0.0.1"          //服务器的IP
server_port =                      //服务器监听的端口bind_port
token = "    "                     //你在服务器上设置的连接口令，原样填入即可

# 代理配置
[ssh]
name = "ssh"                       //表示一个规则名称，自己定义，便于查询即可
type = "tcp"
local_ip = "127.0.0.1"             //表示转发的协议类型，有TCP和UDP等选项可以选择，如有需要请自行查询frp手册。
local_port = 22                    //本地应用的端口号，按照实际应用工作在本机的端口号填写即可。
remote_port =                      //该条规则在服务端开放的端口号，自己填写并记录即可
```

在frpc.exe文件目录下运行

```
./frpc.exe -c ./frpc.toml
```

显示这个则表示成功连接

![4](https://upyun.525866.xyz/photo/frp/5.png)

也可以进入后台查看

![5](https://upyun.525866.xyz/photo/frp/4.png)