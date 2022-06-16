exec = cly
sources = $(wildcard clay/src/*.c)
objects = $(sources:.c=.o)
flags = -g -O1 -Wall -Wextra -lm -ldl -fPIC -rdynamic

$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)

%.o: %.c clay/include/%.h
	gcc -c $(flags) $< -o $@

git:
	-rm $(exec)
	-rm *.o
	-rm *.s
	-rm clay/src/*.o
	git add .
	git commit -m "commit"
	git branch -M main
	git push -u origin main

clean:
	-rm *.out
	-rm *.o
	-rm *.s
	-rm clay/src/*.o
