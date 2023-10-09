#!/bin/bash
cd /opt
# navigate to app folder
git clone https://github.com/vikaskumarp1061/todo-react-app.git
cd todo-react-app
npm install 
npm install pm2@latest -g
pm2 start npm --name "todo-react-app" -- start
