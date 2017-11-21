#include <algorithm>
#include <cstring>
#include <iostream>

using namespace std;

const int MAXN = 1005;

double Matrix[MAXN][MAXN];

bool Func(void *Matrix_Ptr, int N) {
        double dist[N][N];

        memcpy(dist, Matrix_Ptr, sizeof(dist));

        double maxRate = 0;
        for (int k = 0; k < N; k++) {
                for (int i = 0; i < N; i++)
                        for (int j = 0; j < N; j++)
                                maxRate = max(maxRate, dist[i][k] * dist[k][j] *
                                                           dist[j][i]);
                for (int i = 0; i < N; i++)
                        for (int j = 0; j < N; j++)
                                dist[i][j] =
                                    max(dist[i][j], dist[i][k] * dist[k][j]);
        }
        return maxRate > 1;
}

int main() {
        int N;
        cin >> N;

        for (int i = 0; i < N; i++)
                for (int j = 0; j < N; j++)
                        cin >> Matrix[i][j];

        cout << Func(Matrix, N) << endl;
}
