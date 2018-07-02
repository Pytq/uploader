#!/bin/bash

wget https://s3.amazonaws.com/lczero/training/games14800000.tar.gz
mkdir games14800000
tar -xzf games14800000.tar.gz -C games14800000/
ls games14800000/training.* | parallel gzip {}


for iit in {1..10}
do
	echo "${iit}"
done
