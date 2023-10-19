#!/bin/bash


read -p "What is your name?" NAME
read -p "Are you a DevOps Engineer?" JOB

if [ $JOB = yes ]
then
	echo "That is awesome $NAME!"
else
	echo "We do not have any opportunity for you at this time"

fi

#echo "your name is: $NAME and you said  $JOB to being a DevOps Engineer"

