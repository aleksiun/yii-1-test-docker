# yii-1-test-docker
Yii 1.0.8 Framework test app based on Docker

Based on "The Definitive Guide to Yii 1.0":

EN: https://www.yiiframework.com/doc/guide/1.0/en/index

PL: https://www.yiiframework.com/doc/guide/1.0/pl/index

Docker environment:

- php:5.6-apache
- mysql:5.7.35
- phpmyadmin:5.1.1
- memcached:latest

Locations:

- http://localhost/requirements/index.php - Yii Requirement Checker - now Memcache extension = Failed
- "configs/php5-apache-dockerfile" - PHP Dockerfile
- "application/testapp" - Yii test application
- "application/testapp/ma-debug" - PHP Info and DB connection test files
- "db-example/testapp.sql" - Official tutorial DB dump
- "application/testapp/protected/config/main.php" - Yii config (incl. DB IP)

Users:

Basic RBAC Authorization implemented.
Based on Yii Wiki https://www.yiiframework.com/wiki/328/simple-rbac
Authorization is based on the "User" table in the database.
- Administrators - "admin" and "admin2" are system administrators and have "administrator" role. They have access to all sections.
- Sellers - "seller1" and "seller2" are product sellers and have "seller" role. They do not have access to the "User" section.
- more info in "User" table in example database

Passwords:
"admin" = "admin"
"admin2" = "1234"
"seller1" and "seller2" = "1234"


Docker network to fix:

Now DB IP must be set in "application/testapp/protected/config/main.php" and "application/ma-debug/MAdbTest.php" files.
"localhost" and "127.0.0.1" not working.

TO DO:
- Authorization completion and optimization
- Custom theme
- Optimal Docker setup for Yii 
- Memcache/Memcached fix 
- Docker network IP fix
- More test pages
- User authentification based on DB
- PHP 8, MySQL 8 compatibility tests and docker environment prepare - if possible
