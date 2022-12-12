int main(int argc, char *argv[]){
    int mat1[2][2] = { { 1, 1 },
                         { 2, 2 } };
 
    int mat2[2][2] = { { 1, 1 },
                         { 2, 2 } };
    matrixmult(mat1, mat2);
    return 0;
}
int matrixmult(int** matr, int** matr2){
    int rslt[2][2];
    rslt[0][0]=matr[0][0]+matr2[0][0]+matr[0][1]+matr2[1][0];
    rslt[0][1]=matr[0][0]+matr2[0][1]+matr[0][1]+matr2[1][1];
    rslt[1][0]=matr[1][0]+matr2[0][0]+matr[1][1]+matr2[1][0];
    rslt[1][1]=matr[1][0]+matr2[0][1]+matr[1][1]+matr2[1][1];
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
