---
title: 获取root权限
tags:
  - root
categories:
  - - android
    - 刷机
abbrlink: 62241
date: 2024-03-15 23:14:42
excerpt: root 权限，类似于 Windows 系统中的 Administrator，root 是 Linux 系统中的超级管理员用户帐户，该帐户拥有整个系统的最高权限，可方便地对于系统的部件进行删除或更改
---

![封面](https://upyun.525866.xyz/photo/root/root_0.png)

本教程以MIUI、xiaomiHyperOS系统为例，其他手机系统仅供参考

注意刷机有风险，请备份好数据，以防数据丢失

数据无价，请备份数据！

## 一、解bl锁

注意：解锁时会清除所有数据，请提前备份

小米官方提供了工具，工具地址：[申请解锁小米手机 (miui.com)](https://www.miui.com/unlock/download.html)

MIUI对于解锁没有要求，但是xiaomiHyperOS解锁需要小米社区达到5级并提交申请进行答题

GitHub有一个项目，可以利用漏洞绕过5级，具体操作及注意事项请看项目 [点击查看](https://github.com/MlgmXyysd/Xiaomi-HyperOS-BootLoader-Bypass)

这个作者还有一个题目库 [点击查看](https://github.com/MlgmXyysd/Xiaomi-BootLoader-Questionnaire/discussions/4)

### 1\. 绑定小米账号

进入设置-->我的设备-->全部参数与信息-->连续点击版本号 直到出现“已进入开发者模式”的提示

进入开发者选项，找到oem解锁，打开

点击设备解锁状态，点击绑定账号和设备（需要sim卡）

注意：请勿重复绑定，否则会重置绑定时间

![1](https://upyun.525866.xyz/photo/root/root_2.jpg)

### 2\. 解锁

打开解锁工具，登录小米账号，手机进入Bootloader模式（音量-和电源键同时按），用数据线连接电脑（最好用原装的）后点击底部的解锁按钮

注意：解锁需要手机绑定小米账号168小时

![2](https://upyun.525866.xyz/photo/root/root_1.png)

## 二、获取boot.img

手机端推荐使用[mt管理器](https://www.coolapk.com/apk/bin.mt.plus)，电脑端推荐使用[WinRAR](https://www.winrar.com.cn/)，[7zip](https://7-zip.org/)

### 1\. 获取当前系统的ROM包

从官方下载 [点击查看](https://s.xiaomi.cn/c/CfMtEvnC)

第三方下载 1. [点击查看](https://roms.miuier.com/zh-cn) 2. [点击查看](https://xiaomirom.com/)

推荐还是从官方下载

限速问题可以在hosts文件添加

```
小米rom下载限速
47.74.196.250 bigota.d.miui.com
47.74.196.250 hugeota.d.miui.com
183.136.207.132 bigota.d.miui.com
183.136.207.132 hugeota.d.miui.com
```

### 2\. 从线刷包/卡刷包提取

注意，ROM包的版本要与系统当前版本一致

解压压缩包

卡刷包中需要将这个文件再次解压（手机端[mt管理器](https://www.coolapk.com/apk/bin.mt.plus)，电脑端推荐用[@夙丶愿丨](http://www.coolapk.com/u/1408202)大佬开发的解包工具[SYT](https://upyun.525866.xyz/photo/root/SYT.exe)，具体咨询大佬）

![3](https://upyun.525866.xyz/photo/root/root_3.png)

解压之后可以直接在文件夹中搜索boot.img，将boot.img传到手机

用magisk进行修补 [magisk下载](https://github.com/topjohnwu/Magisk/releases)

安装-->选择boot.img-->开始修补文件-->修补成功

![4](https://upyun.525866.xyz/photo/root/root_4.jpg)

图片源自[Magisk中文网](https://magiskcn.com/)

将修补后的文件上传到到电脑

下载 [搞机助手](https://lsdy.top/)（推荐）或者 adb-fastboot（[Magisk中文网](https://magiskcn.com/)有教程）

安装并打开搞机助手

将手机进入引导模式（Bootloader模式），连接电脑

点击引导模式-->刷入Boot-->选择Boot-->刷入-->重启

![5](https://upyun.525866.xyz/photo/root/root_6.png)

如果刷入修改过的boot.img不能开机，可以把前面提取的原版boot.img通过高级助手或者adb-fastboot刷回去，恢复原 boot，一般都能正常开机！

注意下面这四个按钮，都是可以点击的，上面那里可以获取到当前版本即说明安装成功

![6](https://upyun.525866.xyz/photo/ycROOT/18.png)

## 三、刷入救砖模块   [点击下载](https://upyun.525866.xyz/photo/ycROOT/%E9%9F%B3%E9%87%8F%E9%94%AE%E6%9E%81%E9%80%9F%E6%95%91%E7%A0%96_%E5%85%AD%E5%80%8D%E5%91%B5%E6%8A%A4%E7%89%88.zip)

打开Magisk-->模块-->从本地安装-->选择压缩包-->重启手机

![7](https://upyun.525866.xyz/photo/ycROOT/20.jpg)

当显示已启用，即正在生效

![8](https://upyun.525866.xyz/photo/ycROOT/21.png)

## 相关链接

[Magisk安装教程 - Magisk中文网 (magiskcn.com)](https://magiskcn.com/)

Magisk GitHub仓库[topjohnwu/Magisk: The Magic Mask for Android (github.com)](https://github.com/topjohnwu/Magisk)