#!/bin/bash

# navigate to app folder
cd /opt/build
npm install pm2@latest -g
pm2 start npm --name "build" -- start
