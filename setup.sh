#!/bin/sh 
echo "Set database name"
read MYSQL_DATABASE
echo MYSQL_DATABASE=$MYSQL_DATABASE > .env

echo "Set database root password"
read MYSQL_ROOT_PASSWORD 
echo MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD >> .env

echo "Set database application user"
read MYSQL_USER 
echo MYSQL_USER=$MYSQL_USER >> .env

echo "Set database application password"
read MYSQL_PASSWORD
echo MYSQL_PASSWORD=$MYSQL_PASSWORD >> .env

echo "Which port should be exposed"
read  PORT
echo PORT=$PORT >> .env

echo "Setup of variables is done"



