#!/bin/sh
c=6

#pip install -U pytest

while [ $c -ge 1 ];  do
	mkdir q$c
	cp q.py ./q$c/q$c.py
	sed -i -e 's/nnn/'"$c"'/g' ./q$c/q$c.py
	((c--))
done

read -p "Press enter to exit"