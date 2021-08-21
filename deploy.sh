#!/bin/sh

git pull origin master

php artisan key:generate

composer install --ignore-platform-reqs

php artisan migrate:fresh --seed

php artisan serve
