---
title: NFC音乐墙
tags:
  - nfc
categories:
  - - android
    - NFC
abbrlink: 52022
date: 2024-03-13 22:59:46
excerpt: 利用 NFC 实现触碰即可播放音乐
---

![封面](https://upyun.525866.xyz/photo/NFC/NFC.jpg)

## **一、准备**

### **1.1 APP**

*   NFC Tools PRO\_8.6.1.apk （[点击下载](https://upyun.525866.xyz/photo/NFC/NFC%20Tools%20PRO_8.6.1.apk)） 备用：[点击下载](https://www.123pan.com/s/A7GzVv-HqOJv.html)
*   NFC Tasks\_5.4.4.apk （[点击下载](https://upyun.525866.xyz/photo/NFC/NFC%20Tasks_5.4.4.apk)） 备用：[点击下载](https://www.123pan.com/s/A7GzVv-AqOJv.html)

### **1.2**  **材料**

#### （1） NFC标签

*   NTAG213容量一般是144字节

*   NTAG215容量一般是504字节(我建议买这个，第一个容量稍微有点小）

*   NTAB216容量一般是888字节

详细参数参考: NTAG213 215 216.pdf （[点击下载](https://upyun.525866.xyz/photo/NFC/NTAG213_215_216.pdf)） 备用：[点击下载](https://wwrb.lanzouw.com/iM1oW1i5vsji)

#### （2） 可以用NFC的手机（NFC基本都在摄像头有旁边）

## **二、教程**

### **1 制作**

#### （1） 打开下载好的NFC Tools PRO

#### （2） 点击任务

#### （3） 点击添加任务

![1](https://upyun.525866.xyz/photo/NFC/NFC_1.png)

#### （4） 选择应用程序

![2](https://upyun.525866.xyz/photo/NFC/NFC_2.png)

#### （5） 再次选择应用程序

![3](https://upyun.525866.xyz/photo/NFC/NFC_3.png)

#### （6） 选择程序包名（也可以手动输入）

![4](https://upyun.525866.xyz/photo/NFC/NFC_5.png)

#### （7） 这里可以搜索,点击网易云音乐

![5](https://upyun.525866.xyz/photo/NFC/NFC_6.png)

#### （8） 点击OK

![6](https://upyun.525866.xyz/photo/NFC/NFC_7.png)

#### （9） 再次点击添加任务

![7](https://upyun.525866.xyz/photo/NFC/NFC_8.png)

#### （10） 选择应用程序

![8](https://upyun.525866.xyz/photo/NFC/NFC_9.png)

#### （11） 点击URL/URI

![9](https://upyun.525866.xyz/photo/NFC/NFC_10.png)

#### （12） 输入orpheus://song/<歌曲id>/?autoplay=1（仅适用于网易云）

tips：[其他音乐APP参考快捷指令url大全](https://blog.csdn.net/weixin_40778686/article/details/120741125)

#### （13） 点击OK

![10](https://upyun.525866.xyz/photo/NFC/NFC_11.png)

#### （13） 点击写入

注意：这时候不要将NFC标签贴近手机NFC区域

![11](https://upyun.525866.xyz/photo/NFC/NFC_12.png)

#### （14） 将NFC标签贴近手机NFC区域

![12](https://upyun.525866.xyz/photo/NFC/NFC_13.png)

#### （15） 显示这个就已经说明成功了，可以愉快的玩耍了

![13](https://upyun.525866.xyz/photo/NFC/NFC_14.png)

### **2 网易云id在哪**

#### **（1） 电脑版**

点击分享，选择复制链接

![14](https://upyun.525866.xyz/photo/NFC/NFC_15.png)

这个链接中标出部分就是

![15](https://upyun.525866.xyz/photo/NFC/NFC_20.png)

#### **（2） 手机版**

*   打开正在播放的歌曲

![16](https://upyun.525866.xyz/photo/NFC/NFC_16.png)

*   在浏览器打开，然后点击上面搜索栏

![17](https://upyun.525866.xyz/photo/NFC/NFC_17.png)

*   点击复制

![18](https://upyun.525866.xyz/photo/NFC/NFC_18.png)

*   图中标出的部分就是歌曲id

![19](https://upyun.525866.xyz/photo/NFC/NFC_19.png)