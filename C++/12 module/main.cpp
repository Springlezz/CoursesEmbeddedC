#include <iostream>
#include <cstdlib>
#include <cmath>

using namespace std;

int add(int a, int b){
    return a + b;
}

bool isEven(int num){
    if (num % 2 == 0){
        return true;
    }
    return false;
}

int factorial(int n) {
    int result = 1;

    for (int i = 1; i <= n; i++) {
        result *= i;
    }

    return result;
}

double power(double base, int exponent = 2){
    return pow (base, exponent);
}

double average(int arr[], int size){
    int average;
    for (int i = 0; i < size; i++){
        average += arr[i];
    }
    return average / size;
}


int main(){
    int choice;
    cout << "Введите номер задания (от 1 до 10): " << endl;
    cin >> choice;
    switch (choice)
    {
    case (1):{
        int array[] = {3, 7, 1, 9, 4};
        for (int i = 0; i < 5; i++){
            cout << array[i] << " ";
        }
        cout << endl;
        break;
    }
    case (2):{
        int array[] = {3, 7, 1, 9, 4, 8, 2, 5, 6, 10};

        int result = 0;
        for (int i = 0; i < 10; i++){
            result += array[i];
        }
        cout << result << endl;

        break;
    }
    case (3):{
        int array[10];
    
        cout << "Массив: ";
        for (int i = 0; i < 10; i++){
            array[i] = rand() % 100;
            cout << array[i] << " ";
        }

        int max = array[0];

        cout << "\nМаксимальное число: ";
        for (int i = 0; i < 10; i++){
            if (array[i] > max){
                max = array[i];
            }
        }
        cout << max << endl;
        break;
    }
    case (4):{
        int array[12];

        cout << "Массив: ";
        for (int i = 0; i < 12; i++){
            array[i] = rand() % 100;
            cout << array[i] << " ";
        }

        cout << "\nМассив после изменения: ";
        for (int i = 0; i < 11; i++){
            for (int j = 0; j < 11; j++){
                if (array[j] > array[j+1]){
                    int temp = array[j];
                    array[j] = array[j+1];
                    array[j+1] = temp;
                }
            }
        }

        for (int i = 0; i < 12; i++) {
            cout << array[i] << " ";
        }
        break;
    }

    case (5):{
        int matrix[3][3];
        
        cout << "Исходная матрица:\n";
        for (int i = 0; i < 3; i++){
            for (int j = 0; j < 3; j++){
                matrix[i][j] = rand() % 100;
                cout << matrix[i][j] << " ";
            }
            cout << endl;
        }

        cout << "Матрица после транспонирования:\n";
        for (int j = 0; j < 3; j++){
            for (int i = 0; i < 3; i++){
                cout << matrix[i][j] << " ";
            }
            cout << endl;
        }
        break;
    }

    case (6):{
        int a, b;
        cin >> a >> b;
        cout << add(a, b) << endl;
        break;
    }

    case (7):{
        cout << "Введите число: ";
        int num;
        cin >> num;

        if (isEven(num)){
            cout << "Число четное" << endl;
        }
        else{
            cout << "Число нечетное" << endl;
        }
        break;
    }

    case (8):{
        int num, exponent;
        cout << "Введите число: ";
        cin >> num;

        cout << "Введите степень: ";
        cin >> exponent;

        cout << power(num, exponent) << endl;
        break;
    }

    case (9):{
        int n;

        cout << "Введите число: ";
        cin >> n;
        cout << factorial(n) << endl;
        break;
    }

    case (10):{
        int array[7];

        cout << "Массив: ";
        for (int i = 0; i < 7; i++){
            array[i] = rand() % 100;
            cout << array[i] << " ";
        }

        cout << "\nСреднее арифметическое: " << average(array, 7) << endl;
        break;

    }
    default:
        cout << "Ошибка" << endl;
        break;
    }
    return 0;
}