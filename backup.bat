@echo off
REM Navigate to the repository directory
cd /d D:\JTY\blog-hexo

REM Add all changes to the staging area
git add .

REM Commit the changes with a message
git commit -m "backup"

REM Push changes to the specified branch on the remote repository
git push origin hexo-source

REM Pause to keep the command prompt open and view any messages
pause
