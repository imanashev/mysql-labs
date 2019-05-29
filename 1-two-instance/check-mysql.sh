#!/bin/bash

PORT=${1}
MYSQL_HOME_DIR=../mysql/mysql/

echo "Ping mysql instance at port ${PORT}"
${MYSQL_HOME_DIR}/bin/mysqladmin -u root --port=${PORT} --protocol=tcp ping 
