#define N 200
#define M 300
#define DATA_TYPE float

void matadd(DATA_TYPE A[N][M], DATA_TYPE B[N][M], DATA_TYPE C[N][M]) {
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < M; j++) {
      C[i][j] = A[i][j] + B[i][j];
    }
  }
}

