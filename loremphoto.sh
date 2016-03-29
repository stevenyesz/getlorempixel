#!/bin/sh


width="500"
height="500"
base_url="http://lorempixel.com/"
categories="abstract animals business cats city food nightlife 
fashion people nature sports technics transport"

if [ -d ./loremphoto ]; then
	rm -rf loremphoto
fi

mkdir loremphoto

for category in $categories
do
	for i in 1 2 3 4 5 6 7 8 9
	do
		wget -O loremphoto/$category-$i.jpg "$base_url/$width/$height/$category/$i";
	done
done

exit 0