#!/bin/bash

mysql -uroot -p$MYSQL_ROOT_PASSWORD << EOF
    CREATE DATABASE IF NOT EXISTS HomeBurrow;
    CREATE DATABASE IF NOT EXISTS HomeBurrow_test;
EOF

if ! [ -z ${DB_USER+x} ] || ! [ -z ${DB_PASS+x}];
then 
mysql -uroot -p$MYSQL_ROOT_PASSWORD << EOF
    CREATE USER '$DB_USER'@'*' IDENTIFIED BY '$DB_PASS';
    GRANT ALL ON *.* TO '$DB_USER'@'*';
EOF
fi

