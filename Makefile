
counter_test: counter_test.c counter.h
	gcc -Wall -Wextra -std=c99 -O2 -o $@ $< -lpthread

# this test will eat your computer, run with caution
test: counter_test
	time ./counter_test m 1000000 64
	time ./counter_test a 1000000 64
