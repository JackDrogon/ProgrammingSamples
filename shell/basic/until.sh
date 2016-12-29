#!/bin/bash

count=0

until ! [ $count -le 100 ]
do
    echo $count
    count=$[$count+1]
done
