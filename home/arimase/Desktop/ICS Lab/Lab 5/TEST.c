#include <stdio.h>

int A[67][61], B[61][67], N = 67, M = 61;

int main() {
        int i, j, k, l;
        int c0, c1, c2, c3, c4, c5, c6, c7;

        for (i = 0; i < 67; i++)
                for (j = 0; j < 61; j++)
                        A[i][j] = i * 100 + j;

        for (j = 0; j < 64; j += 8)
                for (i = 0; i < 64; i += 8)
                        for (l = j; l < j + 8; l += 4)
                                for (k = i; k < i + 8; k++) {
                                        if (l % 8 == 0) {
                                                c0 = A[k][l + 0];
                                                c1 = A[k][l + 1];
                                                c2 = A[k][l + 2];
                                                c3 = A[k][l + 3];
                                                c4 = A[k][l + 4];
                                                if (l + 5 < 61) {
                                                        c5 = A[k][l + 5];
                                                        c6 = A[k][l + 6];
                                                        c7 = A[k][l + 7];
                                                }

                                                B[l + 0][k] = c0;
                                                B[l + 1][k] = c1;
                                                B[l + 2][k] = c2;
                                                B[l + 3][k] = c3;

                                                if (k + 8 < 64) {
                                                        B[l + 0][k + 8] = c4;
                                                        if (l + 5 < 61) {
                                                                B[l + 1][k + 8] = c5;
                                                                B[l + 2][k + 8] = c6;
                                                                B[l + 3][k + 8] = c7;
                                                        }
                                                } else if (l + 8 < 64) {
                                                        B[l + 8][k % 8] = c4;
                                                        if (l + 5 < 61) {
                                                                B[l + 9][k % 8] = c5;
                                                                B[l + 10][k % 8] = c6;
                                                                B[l + 11][k % 8] = c7;
                                                        }
                                                }
                                        } else {
                                                if (k + 8 < 64) {
                                                        B[l + 0][k] = B[l - 4][k + 8];
                                                        if (l + 1 < 61) {
                                                                B[l + 1][k] = B[l - 3][k + 8];
                                                                B[l + 2][k] = B[l - 2][k + 8];
                                                                B[l + 3][k] = B[l - 1][k + 8];
                                                        }
                                                } else if (l + 4 < 64) {
                                                        B[l + 0][k] = B[l + 4][k % 8];
							if (l + 1 < 61) {
								B[l + 1][k] = B[l + 5][k % 8];
								B[l + 2][k] = B[l + 6][k % 8];
								B[l + 3][k] = B[l + 7][k % 8];
							}
                                                } else {
                                                        c0 = A[k][l + 0];
                                                        if (l + 1 < 61) {
                                                                c1 = A[k][l + 1];
                                                                c2 = A[k][l + 2];
                                                                c3 = A[k][l + 3];
                                                        }

                                                        B[l + 0][k] = c0;
                                                        if (l + 1 < 61) {
                                                                B[l + 1][k] = c1;
                                                                B[l + 2][k] = c2;
                                                                B[l + 3][k] = c3;
                                                        }
                                                }
                                        }
                                }

        for (i = 0; i < 61; i++)
                for (j = 0; j < 64; j++)
                        if (B[i][j] != A[j][i])
                                printf("%d %d\n", i, j);
}
