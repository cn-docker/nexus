#!/bin/bash

set -e
set -u

while [ ! -f /nexus-data/admin.password ]
do
  sleep 5
done

CURRENT_PASSWORD=$(cat /nexus-data/admin.password)

echo "**********"
echo "**********"
echo "**********"
echo "admin user current password: " $CURRENT_PASSWORD
echo "**********"
echo "**********"
echo "**********"

echo "=========="
echo "Changing Default Admin password"
echo "=========="

source /tmp/scripts/change_admin_password_function.sh
change_admin_password http://localhost:8081 $CURRENT_PASSWORD admin123

echo "=========="
echo "Default Admin password changed"
echo "=========="
