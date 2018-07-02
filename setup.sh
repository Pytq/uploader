#!/bin/bash

wget https://s3.amazonaws.com/lczero/training/games14800000.tar.gz
mkdir games14800000
tar -xzf games14800000.tar.gz -C games14800000/
gzip games14800000/training.*


for iit in {1..10}
do
	echo "${iit}"
done
