#!/usr/bin/env bash

if [ -z "$TEST_SERVER_IP" ]; then
    echo "TEST_SERVER_IP env needed"
    exit 1
fi

while :
do
   echo "trying to reach server $TEST_SERVER_IP on port 1234"
   nc -v "$TEST_SERVER_IP" 1234
   sleep 5
done
