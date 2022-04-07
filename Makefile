cc = g++
target = execute
objects = main.o
headers = LinkedList.h Stack.h

$(target) : $(objects) $(headers)
	$(cc) -o $(target) $(objects)

.c.o:
	$(cc) -c -o $@ $<

.PHONY: clean
clean: 
	rm *.o $(target)
