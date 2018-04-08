#!/bin/bash

# generate a random number between lower bound and upperbound
# lowerbound inclusive, upperbound exclusive
# arguments are passed as command line arguments
range=$(($2-$1))
echo $(($RANDOM % $range + $1))
