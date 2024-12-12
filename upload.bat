@echo off

REM Set a default commit message if none is provided
set commit_message=%1
if "%commit_message%"=="" set commit_message=Auto commit

REM Add all changes
git add .

REM Commit changes with the provided message
git commit -m "%commit_message%"

REM Bump the npm version (patch)
npm version patch

REM Push changes and tags to the remote repository
git push

echo Release process completed successfully.