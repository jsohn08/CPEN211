#define BLOCKSIZE 16
void do_block(
  int n,
  int si, int sj, int sk,
  double *A, double *B, double *C
){
  int i, j, k;
  double cij;

  for (i = si; i < si + BLOCKSIZE; i++) {
    for (j = sj; j < sj + BLOCKSIZE; j++) {
      // cij = C[i][j]
      cij = C[(j * n) + i];

      for (k = sk; k < sk + BLOCKSIZE; k++) {
        // cij += A[i][k] * B[k][j]
        cij += A[(k * n) + i] * B[(j * n) + k]
      }

      // C[i][j] = cij
      C[(j * n) + i] = cij;
    }
  }
}

void dgemm(int n, double *A, double *B, double *C) {
  int si, sj, sk;
  for (sj = 0; sj < n; sj += BLOCKSIZE)
    for (si = 0; si < n; si += BLOCKSIZE)
      for (sk = 0; sk < n; sk += BLOCKSIZE)
        do_block(n, si, sj, sk, A, B, C);
}


void matrixMultiply(int n, double *A, double *B, double *C) {
  for (int j = 0; j < n; j += BLOCKSIZE)
    for (int i = 0; i < n; i += BLOCKSIZE)
      for (int k = 0; k < n; k += BLOCKSIZE)

        for (int in = i; in < i + BLOCKSIZE; in++)
          for (int jn = j; jn < j + BLOCKSIZE; jn++) {
            double cij = C[(in * n) + jn]
            for (kn = k; kn < kn + BLOCKSIZE; kn++)
              cij += A[(in * n) + kn] * B[(kn * n) + jn]
            C[(in * n) + jn] = cij;
          }
}
