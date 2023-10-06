#!/bin/bash

# navigate to app folder
cd /app
npm install pm2@latest -g
pm2 start npm --name "todo-react-app" -- start