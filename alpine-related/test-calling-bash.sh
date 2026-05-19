#!/bin/bash
set -x
THE_VALUE=$("./build-and-run.sh")
echo "Value is $THE_VALUE"
