/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 *
 * 赵义凯 1600013015
 */
#include "cachelab.h"
#include "contracts.h"
#include <stdio.h>

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 *
 *     分三种情况考虑
 *     N = 32, M = 32
 *     分成8×8的块，使用临时变量保存一行，特殊处理一下对角线
 *     N = 64，M = 64
 *     分成8×8的块，使用临时变量保存一行，前4个放在当前块，后4个放在下一块，
 *     遍历完A矩阵后，将下一块的数据移动到当前块
 *     N = 61，M = 67
 *     分成8×8的块，使用临时变量保存一行，特殊处理下边界情况
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
  int i, j, k, l;
  int c0, c1, c2, c3, c4, c5, c6, c7;

  REQUIRES(M > 0);
  REQUIRES(N > 0);

  if (N == 32 && M == 32) {
    for (j = 0; j < 32; j += 8)
      for (i = 0; i < 32; i += 8) {
        for (j = 0; j < 32; j += 8)
          for (i = 0; i < 32; i += 8) {
            for (c0 = 0, k = i; k < i + 8; k++)
              for (l = j; l < j + 8; l++) {
                c1 = ((long)A + 128 * k + 4 * j) & 992;
                c2 = ((long)B + 128 * l + 4 * i) & 992;
                c0 |= (c1 == c2);
              }

            if (c0 == 0) {
              for (k = i; k < i + 8; k++) {
                B[j + 0][k] = A[k][j + 0];
                B[j + 1][k] = A[k][j + 1];
                B[j + 2][k] = A[k][j + 2];
                B[j + 3][k] = A[k][j + 3];
                B[j + 4][k] = A[k][j + 4];
                B[j + 5][k] = A[k][j + 5];
                B[j + 6][k] = A[k][j + 6];
                B[j + 7][k] = A[k][j + 7];
              }
            } else if (i + 8 >= 32 && j + 8 >= 32) {
              for (k = i; k < i + 8; k++) {
                c0 = A[k][j + 0];
                c1 = A[k][j + 1];
                c2 = A[k][j + 2];
                c3 = A[k][j + 3];
                c4 = A[k][j + 4];
                c5 = A[k][j + 5];
                c6 = A[k][j + 6];
                c7 = A[k][j + 7];

                B[j + 0][k] = c0;
                B[j + 1][k] = c1;
                B[j + 2][k] = c2;
                B[j + 3][k] = c3;
                B[j + 4][k] = c4;
                B[j + 5][k] = c5;
                B[j + 6][k] = c6;
                B[j + 7][k] = c7;
              }
            } else if (i + 8 >= 32) {
              for (k = i; k < i + 8; k++) {
                B[j + 8][k % 8] = A[k][j + 0];
                B[j + 9][k % 8] = A[k][j + 1];
                B[j + 10][k % 8] = A[k][j + 2];
                B[j + 11][k % 8] = A[k][j + 3];
                B[j + 12][k % 8] = A[k][j + 4];
                B[j + 13][k % 8] = A[k][j + 5];
                B[j + 14][k % 8] = A[k][j + 6];
                B[j + 15][k % 8] = A[k][j + 7];
              }
              for (k = i; k < i + 8; k++) {
                B[j + 0][k] = B[j + 8][k % 8];
                B[j + 1][k] = B[j + 9][k % 8];
                B[j + 2][k] = B[j + 10][k % 8];
                B[j + 3][k] = B[j + 11][k % 8];
                B[j + 4][k] = B[j + 12][k % 8];
                B[j + 5][k] = B[j + 13][k % 8];
                B[j + 6][k] = B[j + 14][k % 8];
                B[j + 7][k] = B[j + 15][k % 8];
              }
            } else {
              for (k = i; k < i + 8; k++) {
                B[j + 0][k + 8] = A[k][j + 0];
                B[j + 1][k + 8] = A[k][j + 1];
                B[j + 2][k + 8] = A[k][j + 2];
                B[j + 3][k + 8] = A[k][j + 3];
                B[j + 4][k + 8] = A[k][j + 4];
                B[j + 5][k + 8] = A[k][j + 5];
                B[j + 6][k + 8] = A[k][j + 6];
                B[j + 7][k + 8] = A[k][j + 7];
              }
              for (k = i; k < i + 8; k++) {
                B[j + 0][k] = B[j + 0][k + 8];
                B[j + 1][k] = B[j + 1][k + 8];
                B[j + 2][k] = B[j + 2][k + 8];
                B[j + 3][k] = B[j + 3][k + 8];
                B[j + 4][k] = B[j + 4][k + 8];
                B[j + 5][k] = B[j + 5][k + 8];
                B[j + 6][k] = B[j + 6][k + 8];
                B[j + 7][k] = B[j + 7][k + 8];
              }
            }
          }
      }
  }

  if (N == 64 && M == 64) {
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
              c5 = A[k][l + 5];
              c6 = A[k][l + 6];
              c7 = A[k][l + 7];

              B[l + 0][k] = c0;
              B[l + 1][k] = c1;
              B[l + 2][k] = c2;
              B[l + 3][k] = c3;

              if (k + 8 < 64) {
                B[l + 0][k + 8] = c4;
                B[l + 1][k + 8] = c5;
                B[l + 2][k + 8] = c6;
                B[l + 3][k + 8] = c7;
              } else if (l + 8 < 64) {
                B[l + 8][k % 8] = c4;
                B[l + 9][k % 8] = c5;
                B[l + 10][k % 8] = c6;
                B[l + 11][k % 8] = c7;
              }
            } else {
              if (k + 8 < 64) {
                B[l + 0][k] = B[l - 4][k + 8];
                B[l + 1][k] = B[l - 3][k + 8];
                B[l + 2][k] = B[l - 2][k + 8];
                B[l + 3][k] = B[l - 1][k + 8];
              } else if (l + 4 < 64) {
                B[l + 0][k] = B[l + 4][k % 8];
                B[l + 1][k] = B[l + 5][k % 8];
                B[l + 2][k] = B[l + 6][k % 8];
                B[l + 3][k] = B[l + 7][k % 8];
              } else {
                c0 = A[k][l + 0];
                c1 = A[k][l + 1];
                c2 = A[k][l + 2];
                c3 = A[k][l + 3];

                B[l + 0][k] = c0;
                B[l + 1][k] = c1;
                B[l + 2][k] = c2;
                B[l + 3][k] = c3;
              }
            }
          }
  }

  if (N == 67 && M == 61) {
    for (j = 0; j < 61; j += 8)
      for (i = 0; i < 67; i += 8)
        for (k = i; k < i + 8 && k < 67; k++) {
          c0 = A[k][j + 0];
          c1 = A[k][j + 1];
          c2 = A[k][j + 2];
          c3 = A[k][j + 3];
          c4 = A[k][j + 4];
          if (j + 5 < 61) {
            c5 = A[k][j + 5];
            c6 = A[k][j + 6];
            c7 = A[k][j + 7];
          }

          B[j + 0][k] = c0;
          B[j + 1][k] = c1;
          B[j + 2][k] = c2;
          B[j + 3][k] = c3;
          B[j + 4][k] = c4;
          if (j + 5 < 61) {
            B[j + 5][k] = c5;
            B[j + 6][k] = c6;
            B[j + 7][k] = c7;
          }
        }
  }
  ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the
 * cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
  int i, j, tmp;

  REQUIRES(M > 0);
  REQUIRES(N > 0);

  for (i = 0; i < N; i++) {
    for (j = 0; j < M; j++) {
      tmp = A[i][j];
      B[j][i] = tmp;
    }
  }

  ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
  /* Register your solution function */
  registerTransFunction(transpose_submit, transpose_submit_desc);

  /* Register any additional transpose functions */
  registerTransFunction(trans, trans_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
  int i, j;

  for (i = 0; i < N; i++) {
    for (j = 0; j < M; ++j) {
      if (A[i][j] != B[j][i]) {
        return 0;
      }
    }
  }
  return 1;
}
