README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	date >> README.md
	echo "" >> README.md
	lines=$$(wc -l < guessinggame.sh); \
	echo "Le nombre de lignes de code contenu dans guessinggame.sh : $$lines" >> README.md

.PHONY: clean
clean:
	rm README.md

