#!/bin/sh

/usr/bin/mysql_install_db --user=mysql
/usr/bin/supervisord -n -c /etc/supervisord.conf
