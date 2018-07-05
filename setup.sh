#!/bin/bash

mkdir games
for gnum in {1480..1680}
do
	wget https://s3.amazonaws.com/lczero/training/games${gnum}0000.tar.gz
	mkdir "games/games${gnum}0000"
	echo "Extracting games ${gnum}..."
	tar -xzf "games${gnum}0000.tar.gz" -C "games/games${gnum}0000/"
	echo "zipping games ${gnum}..."
	ls games/games14800000/training.* | parallel --citation gzip {}
	echo "${gnum} done"
done
