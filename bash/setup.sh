#!/bin/sh
c=6

pip install -U pytest

while [ $c -ge 1 ];  do
	cp q.py q$c.py
	sed -i -e 's/nnn/'"$c"'/g' q$c.py
	((c--))
done
rm q.py

read -p "Press enter to exit"