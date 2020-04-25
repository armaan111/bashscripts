#!/bin/bash
version=$(httpd -v 2>&1 |awk -F '/' 'NR==1{print $2}'|awk '{print $1}')
status=$(systemctl status httpd|grep Active|awk '{print $2}')
port=$(cat /etc/httpd/conf/httpd.conf|grep ^Listen|awk '{print $2}')

echo "The httpd version is: $version"
echo "current status of httpd: $status"
echo "httpd is running on port: $port"




