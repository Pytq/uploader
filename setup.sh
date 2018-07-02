#!/bin/bash

mkdir games
for gnum in {1480..1680}
do
	wget https://s3.amazonaws.com/lczero/training/games${gnum}0000.tar.gz
	mkdir "games/games${gnum}0000"
	tar -xzf "games${gnum}0000.tar.gz" -C "games${gnum}0000/"
	gzip "games/games${gnum}0000/training.*"
	echo "${gnum} done"
done
