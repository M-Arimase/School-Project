#include "cachelab.h"
#include <stdio.h>
#include <stdlib.h>

#define BUF_SIZE (100)

long hit_count, miss_count, eviction_count, ins_count;
long cache_S, cache_s, cache_E, cache_b, cache_B;
long **cache_v, **cache_tag, **cache_LRU;
char *file_name, BUF[BUF_SIZE];

void Cache_Sim(char mem_ope, long mem_add, long data_size) {
        long i;
        long hit_flag, hit_add, empty_flag, empty_add, LRU_add;
        long add_s, add_tag;

        add_s = (mem_add >> cache_b) & ((1 << cache_s) - 1);
        add_tag = mem_add >> (cache_s + cache_b);

        hit_flag = 0;
	hit_add = 0;
        for (i = 0; i < cache_E; i++)
                if (cache_v[add_s][i] == 1 && cache_tag[add_s][i] == add_tag) {
                        hit_flag = 1;
			hit_add = i;
		}

        if (hit_flag == 1) {
                hit_count++;
                cache_LRU[add_s][hit_add] = ins_count;
                return;
        } else
                miss_count++;

        empty_flag = 0;
        empty_add = 0;
        for (i = 0; i < cache_E; i++)
                if (cache_v[add_s][i] == 0) {
                        empty_flag = 1;
                        empty_add = i;
                }

        if (empty_flag == 1) {
                cache_v[add_s][empty_add] = 1;
                cache_tag[add_s][empty_add] = add_tag;
                cache_LRU[add_s][empty_add] = ins_count;
                return;
        } else
                eviction_count++;

        LRU_add = 0;
        for (i = 0; i < cache_E; i++)
                if (cache_LRU[add_s][i] < cache_LRU[add_s][LRU_add])
                        LRU_add = i;

        cache_tag[add_s][LRU_add] = add_tag;
        cache_LRU[add_s][LRU_add] = ins_count;
}

int main(int argc, char **argv) {
        long i;

        sscanf(argv[2], "%ld", &cache_s);
        sscanf(argv[4], "%ld", &cache_E);
        sscanf(argv[6], "%ld", &cache_b);

        cache_S = 1 << cache_s;
        cache_B = 1 << cache_b;

        file_name = argv[8];
        FILE *file_in = fopen(file_name, "r");

        cache_v = (long **)malloc(sizeof(long *) * cache_S);
        cache_tag = (long **)malloc(sizeof(long *) * cache_S);
        cache_LRU = (long **)malloc(sizeof(long *) * cache_S);
        for (i = 0; i < cache_S; i++) {
                cache_v[i] = (long *)malloc(sizeof(long) * cache_E);
                cache_tag[i] = (long *)malloc(sizeof(long) * cache_E);
                cache_LRU[i] = (long *)malloc(sizeof(long) * cache_E);
        }

        while (fscanf(file_in, "%s", BUF) != EOF) {
                long mem_add, data_size;
                fscanf(file_in, "%lx,%lx", &mem_add, &data_size);
                ins_count++;
                Cache_Sim(BUF[0], mem_add, data_size);
        }
        printSummary(hit_count, miss_count, eviction_count);

        return 0;
}
