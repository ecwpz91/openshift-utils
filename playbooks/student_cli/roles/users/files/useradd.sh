#!/usr/bin/env bash

for (( i = 1; i <= 30; i++ )); do /usr/bin/htpasswd -b /etc/origin/master/htpasswd "student$i" "student$i"; done

groupadd oseuser \
&& for (( i = 1; i <= 30; i++ )); do useradd "student$i"; echo "student$i" | passwd "student$i" --stdin; usermod -G oseuser student$i; done
