#include <stdio.h>

void createMatrix(int N, int matrix[N][N]) {
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            matrix[i][j] = i * N + j + 1;
        }
    }
}
void sortTask2(int N, int matrix[N][N]) {
    for(int i = 0; i < N * N - 1; i++) {
        for(int j = 0; j < N * N - i - 1; j++) {
            int row1 = j / N, col1 = j % N,row2 = (j + 1) / N, col2 = (j + 1) % N;
            if(matrix[row1][col1] < matrix[row2][col2]) {
                int temp = matrix[row1][col1];
                matrix[row1][col1] = matrix[row2][col2];
                matrix[row2][col2] = temp;
            }
        }
    }
}
void task1(int N) {
    int matrix[N][N];
    createMatrix(N, matrix);
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }
}

void task2(int N) {
    int matrix[N][N];
    createMatrix(N, matrix);
    sortTask2(N, matrix);
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }
}
int main() {
    int N, task;
    printf("Введите номер задачи: ");
    scanf("%d", &task);
    printf("Введите размер матрицы: ");
    scanf("%d", &N);
    switch (task){
        case (1):
            task1(N);
            break;
        case (2):
            task2(N);
            break;
        default:
            printf("Такой задачи нет\n");
            return 0;
    }
    return 0;
}
