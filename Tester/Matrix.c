int main()
{
    int mat1[4] = {1, 1, 2, 2};
    matrixmult(mat1, mat1);
    return 0;
}
int matrixmult(int *matr, int *matr2)
{
    int rslt[4];
    rslt[0] = matr[0] * matr2[0] + matr[1] * matr2[2];
    rslt[1] = matr[0] * matr2[1] + matr[2] * matr2[3];
    rslt[2] = matr[2] * matr2[0] + matr[3] * matr2[2];
    rslt[3] = matr[2] * matr2[1] + matr[3] * matr2[3];
    // for (int i = 0; i < 2; i++) {
    //  for (int j = 0; j < 2; j++) {
    //      rslt[i][j] = 0;
    //      for (int k = 0; k < 2; k++) {
    //          rslt[i][j] += matr[i][k] * matr2[k][j];
    //      }
    //  }
    // }
    return 0;
}