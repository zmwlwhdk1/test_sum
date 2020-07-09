#Makefile

all: sum_test

sum_test: sum.o main.o
	g++ sum_test sum.o main.o

main.o : sum.h main.cpp

sum.o : sum.h sum.cpp

clean : 
	rm -f sum_test
	rm -f *.o
