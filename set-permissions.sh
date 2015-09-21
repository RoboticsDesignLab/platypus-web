#!/bin/sh
sudo chown pmahoney:www-data .
sudo chown -R pmahoney:www-data *
find . -type f \( ! -path "./bin/*"  -or  ! -name "set-permissions.sh" \) | xargs chmod 664
find . -type f \( -path "./bin/*"  -or  -name "set-permissions.sh" \) | xargs chmod 775
find . -type d | xargs chmod 775
find . -type d | xargs chmod +s
umask 0002
