#!/bin/bash

echo "Starting 1st instance"
./start-mysql.sh mydata1 3306 sock.1

echo ""
echo "Starting 2nd instance"
./start-mysql.sh mydata2 4000 sock.2


echo "######################################################"
echo "Check 1st instance"
./check-mysql.sh 3306

echo ""
echo "Check 2nd instance"
./check-mysql.sh 4000


echo "######################################################"
echo "Stopping 1st instance"
./stop-mysql.sh 3306

echo ""
echo "Stopping 2nd instance"
./stop-mysql.sh 4000
