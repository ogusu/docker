#!/bin/sh
set -e

rm -f /run/httpd/httpd.pid

exec php-fpm -F &
exec httpd -DFOREGROUND
