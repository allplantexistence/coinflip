#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "coin.h"

int main(int argc, char *argv[]) {
	int flips = 1; //default value
	
	if (argc >= 2) {
		flips = atoi(argv[1]);
	}

	printf("You asked for %d coin flip(s).\n", flips);

	srand(time(NULL)); // seed random generator
	flip_coin(flips);

	return 0;
}
