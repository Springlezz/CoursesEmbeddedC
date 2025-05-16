#include <stdio.h>

void createMatrix(int N, int matrix[N][N]) {
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            matrix[i][j] = i * N + j + 1;
        }
    }
}
void createArray(int N, int array[N]){
    for (int i = 0; i < N; i++){
        array[i] = i + 1;
    }
}
void sortTask2(int size, int array []) {
    int gap = size; float shrink = 1.247; int sorted = 0;
    while (!sorted){
        gap = (int)(gap / shrink);
        if (gap <= 1){
            gap = 1;
            sorted = 1;
        }
        for (int i = 0; i + gap < size; i++){
            if (array[i] < array[i + gap]){
                int temp = array[i];
                array[i] = array[i+gap];
                array[i+gap] = temp;
                sorted = 0;
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
    int array[N];
    createArray(N, array);
    sortTask2(N, array);
    for (int i = 0; i < N; i++){
        printf("%d\t", array[i]);
    }
    printf("\n");
}

void triangle(int N, int matrix[N][N]){
    for (int i = 0; i < N; i++){
        for (int j = 0; j < N; j++){
            if (i + j >= N - 1){
                matrix[i][j] = 1;
            }
            else{
                matrix[i][j] = 0;
            }
        }
    }
}
void task3(int N){
    int matrix[N][N];
    triangle(N, matrix);
    for (int i = 0; i < N; i ++){
        for (int j = 0; j < N; j ++){
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }
}
void task4(int N){
    int matrix[N][N]; int num = 1;
    createMatrix(N, matrix);
    int top = 0, bottom = N - 1, left = 0, right = N - 1;
    while (num <= N * N){
        for (int i = left; i <= right; i++){
            matrix[top][i] = num++;
        }
        top++;
        for (int j = top; j <= bottom; j++){
            matrix[j][right] = num++;
        }
        right--;
        for (int i = right; i >= left; i--){
            matrix[bottom][i] = num++;
        }
        bottom--;
        for (int j = bottom; j >= top; j--){
            matrix[j][left] = num++;
        }
        left++;
    }
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
        case (3):
            task3(N);
            break;
        case (4):
            task4(N);
            break;
        default:
            printf("Такой задачи нет\n");
            return 0;
    }
    return 0;
}
