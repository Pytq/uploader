#!/bin/bash

mkdir games
mkdir downloads
for gnum in {1482..1680}
do
	wget -P downloads https://s3.amazonaws.com/lczero/training/games${gnum}0000.tar.gz
	mkdir "games/games${gnum}0000"
	echo "Extracting games ${gnum}..."
	tar -xzf "downloads/games${gnum}0000.tar.gz" -C "games/games${gnum}0000/"
	echo "zipping games ${gnum}..."
	ls games/games${gnum}0000/training.* | parallel gzip {}
	echo "${gnum} done"
done
