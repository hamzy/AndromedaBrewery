#!/bin/bash
find . -name README.markdown | while read MD
do
	# From:
	#   ./SourBeers/Raspberry/v1/README.markdown
	# to:
	#  SourBeers/Raspberry/v1
	DIR=$(dirname ${MD} | sed -e 's,^[.]/,,')

	cd ~/AndromedaBrewery/${DIR}

	qrencode -o QR.png -s 4 -l H -d 360 "https://github.com/hamzy/AndromedaBrewery/tree/master/${DIR}"
done
