#!/usr/bin/env bash

AA_FILE="$(dirname $0)/boooon.aa"

if [[ ! -f $AA_FILE ]]; then
	echo "AAファイルが見つかりません。 file='$AA_FILE'"
	exit 1
fi

c=0
space=' '

function booooooon () {
	while [[ $c -lt 60 ]]; do
		clear
		sed "s/^/$space/g" ./boooon.aa
		c=$((++c))
		space=${space}' '
		sleep 0.1
	done
	c=0
	space=' '
}

while true; do
	clear
	booooooon
done
