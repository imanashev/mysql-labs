#!/bin/bash

DATA_DIR=${1}
PORT=${2}
SOCKET=${3}
MYSQL_HOME_DIR=../mysql/mysql/

echo "Creating data dir"
mkdir -p ${MYSQL_HOME_DIR}/${DATA_DIR}

echo "Creating socket"
touch ${MYSQL_HOME_DIR}/${SOCKET}

echo "Initialization mysql with data dir: ${DATA_DIR}"
${MYSQL_HOME_DIR}/bin/mysqld --initialize-insecure --user=root --datadir=${MYSQL_HOME_DIR}/${DATA_DIR} --basedir=.

echo "Starting mysql at port ${PORT} and socket ${SOCKET}"
${MYSQL_HOME_DIR}/bin/mysqld --datadir=${MYSQL_HOME_DIR}/${DATA_DIR} --basedir=. --port=${PORT} --socket=${MYSQL_HOME_DIR}/${SOCKET}
