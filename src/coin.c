#include <stdlib.h>
#include <stdio.h>
#include "coin.h"

void flip_coin(int flips) {
	for (int i = 0; i < flips; i++) {
		int result = rand() % 2; // 0 or 1
		if (result == 0) {
			printf("Flip %d: Heads\n", i + 1);
		} else {
			printf("Flip %d: Tails\n", i + 1);
		}
	}
}
