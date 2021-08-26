#!/bin/sh
#generates boilerplate code in the language from cmd arg

#TODO: man page
#main args: -cljp (C, Lua, Java, Python), <filename>

while getopts cljp FILENAME; do
	case $FILENAME in
		c) cat > $FILENAME.c "insert boilerplate here";;
		l) cat > $FILENAME.lua "insert boilerplate here";;
		j) cat > $FILENAME.java "insert boilerplate here";;
		p) cat > $FILENAME.py "insert boilerplate here";;
	esac
done
print("File created\n")
exit


