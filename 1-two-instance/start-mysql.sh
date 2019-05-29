#!/bin/bash

DATA_DIR=${1}
PORT=${2}
SOCKET=${3}
MYSQL_HOME_DIR=../mysql/mysql

echo "########################"
echo "# Creating data dir"
echo "########################"
rm -rf ${MYSQL_HOME_DIR}/${DATA_DIR}
mkdir -p ${MYSQL_HOME_DIR}/${DATA_DIR}

echo "########################"
echo "# Creating socket"
echo "########################"
touch ${MYSQL_HOME_DIR}/${SOCKET}

echo "########################"
echo "# Initialization mysql with data dir: ${DATA_DIR}"
echo "########################"
${MYSQL_HOME_DIR}/bin/mysqld --initialize-insecure --user=root --datadir=${MYSQL_HOME_DIR}/${DATA_DIR} --basedir=.

echo "########################"
echo "# Starting mysql at port ${PORT} and socket ${SOCKET}"
echo "########################"
${MYSQL_HOME_DIR}/bin/mysqld --datadir=${MYSQL_HOME_DIR}/${DATA_DIR} --basedir=. --port=${PORT} --socket=${MYSQL_HOME_DIR}/${SOCKET}
