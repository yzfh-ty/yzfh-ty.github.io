@echo off
REM 进入包含 Git 仓库的目录
cd /d D:\JTY\blog-hexo

REM 将所有更改添加到暂存区
git add .

REM 提交更改并添加提交信息
git commit -m "backup"

REM 将更改推送到指定的远程分支
git push origin hexo-source

REM 暂停以保持命令提示符窗口打开，以查看任何消息
pause
