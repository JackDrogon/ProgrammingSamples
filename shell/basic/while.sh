#!/bin/bash

count=0

while [ $count -le 100 ]
do
    echo $count
    count=$[$count+1]
done
