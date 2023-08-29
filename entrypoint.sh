#!/bin/bash

php makesite $SITE_PATH $DB_USER:$DB_PASS@$DB_HOST/$DB_NAME "$SITE_URL"
php-fpm8.2
nginx -g 'daemon off;'
