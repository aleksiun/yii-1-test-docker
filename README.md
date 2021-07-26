# yii-1-test-docker
Yii 1.0 Framework test app based on Docker
Based on "The Definitive Guide to Yii 1.0":

EN: https://www.yiiframework.com/doc/guide/1.0/en/index

PL: https://www.yiiframework.com/doc/guide/1.0/pl/index

Docker environment:
- php:5.6-apache
- mysql:5.7.35
- phpmyadmin:5.1.1
- memcached:latest

Locations:

- "configs/php5-apache-dockerfile" - PHP Dockerfile
- "application/testapp" - Yii test application
- "application/ma-debug" - PHP Info and DB connection test files
- "db-example/testapp.sql" - Official tutorial DB dump
- "application/testapp/protected/config/main.php" - Yii config (incl. DB IP)


Docker network to fix:

Now DB IP must be set in "application/testapp/protected/config/main.php" and "application/ma-debug/MAdbTest.php" files.
"localhost" and "127.0.0.1" not working.

TO DO:
- Memcache/Memcached fix 
- Docker network IP fix
- More test pages
- User authentification based on DB
- PHP 8, MySQL 8 compatibility tests and docker environment prepare - if possible
