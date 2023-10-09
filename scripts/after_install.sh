#!/bin/bash
cd /opt/build/
cp -r * /var/www/html
cd /var/www/html
mv index.nginx-debian.html ../
#npm install pm2@latest -g
#pm2 start npm --name "todo-react-app" -- start
