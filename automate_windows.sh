#!/bin/bash

echo "$1"
django-admin startproject "$1"
cd ./"$1"
python manage.py startapp frontend
python manage.py startapp backend
cp -r ~/Desktop/projects/framework/ml .
cp -r ~/Desktop/projects/framework/frontend/src ./frontend/
cp -r ~/Desktop/projects/framework/frontend/templates ./frontend/
cp -r ~/Desktop/projects/framework/frontend/urls.py ./frontend/
cp -r ~/Desktop/projects/framework/frontend/views.py ./frontend/
cp -r ~/Desktop/projects/framework/backend/urls.py ./backend/
cp -r ~/Desktop/projects/framework/backend/views.py ./backend/
cp -r ~/Desktop/projects/framework/framework/urls.py ./"$1"/
cp -r ~/Desktop/projects/framework/framework/urls.py ./"$1"/
cp -r ~/Desktop/projects/framework/node_script .
cp -r ~/Desktop/projects/framework/webpack.config.js .
cp -r ~/Desktop/projects/framework/.babelrc .
cp -r ~/Desktop/projects/framework/.gitignore .
npm init -y
npm i -D @babel/core @babel/preset-env @babel/preset-react 
npm i -D axios babel-loader babel-plugin-transform-class-properties 
npm i -D prop-types react react-dom webpack webpack-cli
git init

echo "copy the dev script, npm run dev, add apps to settings"