#makefile

all: gen 

gen: 
	touch README.md
	echo " # UNIX PROJECT GUESSING GAME: " > README.md
	echo "The number of lines in the file guessinggame.sh is: " >> README.md 
	cat guessinggame.sh  | wc -l >> README.md
	date -u  >> README.md
	echo "\n---\n" >> README.md
