#include <cstring>
#include <deque>
#include <iostream>

using namespace std;

const int MAXN = 205;

int con[MAXN][MAXN][4], dis[MAXN][MAXN], dx[4] = {1, 0, -1, 0},
                                         dy[4] = {0, 1, 0, -1};

deque<pair<int, int>> Q;

int main() {
        int n, m;
        double x, y;

        while (cin >> n >> m && (n != -1 || m != -1)) {
                memset(con, 0, sizeof con);
                memset(dis, -1, sizeof dis);

                for (int i = 0; i < n; i++) {
                        int x, y;
                        cin >> x >> y;
                        int d, t;
                        cin >> d >> t;

                        for (int j = 0; j < t; j++) {
                                int nx = x - dx[d ^ 1];
                                int ny = y - dy[d ^ 1];

                                con[x][y][3 - d] = -1;
                                con[nx][ny][1 - d] = -1;

                                x = x + dx[d];
                                y = y + dy[d];
                        }
                }

                for (int i = 0; i < m; i++) {
                        int x, y, d;
                        cin >> x >> y >> d;

                        {
                                int nx = x - dx[d ^ 1];
                                int ny = y - dy[d ^ 1];

                                con[x][y][3 - d] = 1;
                                con[nx][ny][1 - d] = 1;
                        }
                }

                dis[0][0] = 0;
                Q.push_back(make_pair(0, 0));

                while (!Q.empty()) {
                        int x = Q.front().first;
                        int y = Q.front().second;
                        Q.pop_front();

                        for (int i = 0; i < 4; i++) {
                                if (con[x][y][i] == -1)
                                        continue;

                                int nx = x + dx[i];
                                int ny = y + dy[i];

                                if (nx < 0 || nx >= MAXN)
                                        continue;
                                if (ny < 0 || ny >= MAXN)
                                        continue;
                                if (dis[nx][ny] != -1)
                                        continue;

                                dis[nx][ny] = dis[x][y] + con[x][y][i];
                                if (con[x][y][i] == 0)
                                        Q.push_front(make_pair(nx, ny));
                                else
                                        Q.push_back(make_pair(nx, ny));
                        }
                }

                cin >> x >> y;
                if (x < 0 || x >= MAXN || y < 0 || y >= MAXN)
                        cout << 0 << endl;
                else
                        cout << dis[(int)x][(int)y] << endl;
        }

        return 0;
}
