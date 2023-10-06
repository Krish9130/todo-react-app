#!/bin/bash

# navigate to app folder
cd /app

cp -r build/* /var/www/html

service nginx reload
