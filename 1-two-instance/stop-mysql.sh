#!/bin/bash

PORT=${1}
MYSQL_HOME_DIR=../mysql/mysql

echo "########################"
echo "# Ping mysql instance at port ${PORT}"
echo "########################"
${MYSQL_HOME_DIR}/bin/mysqladmin -u root --port=${PORT} --protocol=tcp shutdown
