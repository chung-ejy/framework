#!/bin/bash

echo "$1"
mkdir "$1"
cd ./"$1"
django-admin startproject "$1"
cd ./"$1"
python manage.py startapp frontend
python manage.py startapp backend
cp -r ~/Desktop/framework/framework/frontend/src ./frontend/
cp -r ~/Desktop/framework/framework/frontend/templates ./frontend/
cp -r ~/Desktop/framework/framework/frontend/urls.py ./frontend/
cp -r ~/Desktop/framework/framework/frontend/views.py ./frontend/
cp -r ~/Desktop/framework/framework/backend/urls.py ./backend/
cp -r ~/Desktop/framework/framework/backend/views.py ./backend/
cp -r ~/Desktop/framework/framework/framework/urls.py ./"$1"/
cp -r ~/Desktop/framework/framework/framework/urls.py ./"$1"/
cd ../
cp -r ~/Desktop/framework/.babelrc .
cp -r ~/Desktop/framework/.gitignore .
cp -r ~/Desktop/framework/notes.txt .
cp -r ~/Desktop/framework/Procfile .
cp -r ~/Desktop/framework/requirements.txt .
cp -r ~/Desktop/framework/todo.txt .
cp -r ~/Desktop/framework/webpack.config.js .
touch .env
npm init -y
npm i -D @babel/core @babel/preset-env @babel/preset-react 
npm i -D axios babel-loader babel-plugin-transform-class-properties 
npm i -D prop-types react react-dom webpack webpack-cli
git init