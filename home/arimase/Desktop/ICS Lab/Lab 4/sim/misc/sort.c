long Array[4] = {3, 1, 4, 2};

void bubble_a(long *data, long count) {
        long *i, *last;
        for (last = data + count - 1; last > data; last--) {
                for (i = data; i < last; i++)
                        if (*(i + 1) < *i) {
                                long t = *(i + 1);
				*(i + 1) = *i;
				*i = t;
                        }
        }
}

int test_a(long *data, long count) {
        long *i;
	for (i = data; i < data + count - 1; i++)
		if (*(i + 1) < *i)
			return 0;
	return 1;
}

int main() {
	bubble_a(Array, 4);

	test_a(Array, 4);
}
