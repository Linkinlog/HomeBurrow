#!/bin/bash

mysql -uroot -p$DB_PASS << EOF
    CREATE DATABASE IF NOT EXISTS HomeBurrow;
    CREATE DATABASE IF NOT EXISTS HomeBurrow_test;

    CREATE USER '$DB_USER'@'*' IDENTIFIED BY '$DB_PASS';
    GRANT PRIVILEGE ON *.* TO '$DB_USER'@'*';
EOF