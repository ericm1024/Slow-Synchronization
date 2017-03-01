
counter_test: counter_test.c counter.h
	gcc -Wall -Wextra -std=c99 -O2 -o $@ $< -lpthread

test:
	time ./counter_test m 1000000
	time ./counter_test a 1000000
