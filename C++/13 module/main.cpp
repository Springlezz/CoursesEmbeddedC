#include <iostream>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <map>

#include "functions.h"

using namespace std;

// string toLowerCase(string str) {
//     for (char &c : str) { через ссылку, но только английские буквы
//         c = tolower(c);
//     }
//     return str;
// }

//мне не нравится слитно писать текст, поэтому сделано через rowstring
int main(){
    int choice = -1;
    srand(time(0));

    cout << R"(Введите номер задания
        Дедлайн бот 3000 - 1;
        Рандомайзер отмазок - 2;
        Калькулятор курса 'Антистресс' - 3;
        ИИ-предсказатель погоды - 4;
        Бюджетный советник студента - 5;
        Тест на романтику с числами - 6;
        Хронический откладыватель задач - 7;
        Величина твоей лени - 8;
        Калькулятор калорийных угрызений - 9;
        Финансовый план 'Ближе к мечте' - 10;
        Фабрика друзей - 11;
        Понедельник, умноженный на два - 12;
        Миллионером за 100 лет - 13;
        Калорийный ударник - 14;
        Оценка в процентах - 15;
        Детектор 'успел/не успед' - 16;
        Тест на лень - 17;
        Индикатор выживания студента - 18;
        Оракул академического успеха - 19;
        Голоден или нет - 20;
        Погода настроения - 21;
        Идеальный план для выходного - 22;
        Детектор оптимизма - 23;
        Счетчик когда я наконец высплюсь - 24;
        Угадайка попал или нет - 25;
        Магическое умножение - 26;
        Подготовка к марафону Курсовые за один день - 27;
        Бесконечный счетчик кофе - 28;
        Генератор отговорок - 29;
        Прокрастинатор дня - 30;
        Подсчет сколько раз я говорил, что начну с понедельника - 31;
        Сисадминский бесконечный цикл - 32;
        Геймерский уровень кодера - 33;
        IT-бойцовский клуб - 34;
        Сколько аниме осталось досмотреть - 35;
        Экзамен на true студента IT - 36;
        Генератор мудрости сисадмина - 37;
        Функция аниме-персонаж дня - 38;
        Функция кодер или геймер - 39;
        Подсчет сколько чашек кофе тебе нужно - 40;
        Функция рандомный комплимент - 41;
        Калькулятор лени для анимешника - 42;
        Гайд для новичка в IT - 43;
        Калькулятор уровня аниме-энтузиаста - 44;
        Прогноз кофе-потребления - 45;
        Генератор персонажей аниме-студента - 46;
        Подсчет сколько кодинга до уровня гуру - 47;
        Тест на выносливость сисадмина - 48;
        Идеальный планировщик прокрастинации - 49;
        Симулятор оценки по аниме критериям - 50;
        Экзамен на философа-программиста - 51;
        IT оракул: спроси свою функцию - 52;
        Сисадминская рутина: функция в функции - 53;
        Генератор комплиментов для кодера - 54;
        Аниме-наставник дня - 55;
        Студенческий симулятор настроения - 56;
        Рандомный планировщик задач - 57
        НАЖАТЬ 0, ЧТОБЫ ВЫЙТИ
        )" << endl;

    while (choice != 0){
        cout << "Введите номер задания (или нажмите 0, чтобы выйти): ";
        cin >> choice;

        switch (choice){
            case (0):{
                break;
            }
            case (1):{
                int days;

                cout << "Введите количество дней, которые вам остались до дедлайна: ";
                cin >> days;

                if (days <= 5){
                    cout << "Эй, бегом за кофе, ведь дедлайн уже близко! Осталось всего" << days << " дней!" << endl;
                }
                else if (days > 5){
                    cout << "Расслабься, у тебя еще целых" << days << " дней... Хотя, может, пора начать?" << endl;
                }
                else if (days <= 0){
                    cout << "Поздравляю, ты официально просрочил дедлайн!" << endl;
                }
                break;
            }

            case (2):{
                string name;
                srand(time(nullptr));

                vector<string> reasons = {
                    "застрял в пробке",
                    "умер 1000-7",
                    "играл в доту3 до ночи",
                    "крутил крутки в геншин импакт",
                    "похитили инопланетяне",
                    "ты стал ситхом и выбрал сторону зла, дела джедаев тебе безразличны",
                };

                cout << "Как тебя зовут? :" << endl;
                cin >> name;

                cout << "Привет, " << name << "! Если кто спросит, скажи, что ты не смог прийти, потому что причина - " << reasons[rand() % reasons.size()] << endl;

                break;
            }

            case (3):{
                int coffee_cups;

                cout << "Сколько чашек кофе ты выпил за день? ";
                cin >> coffee_cups;

                int dzen_count = coffee_cups * 2;

                cout << "Ты выпил " << coffee_cups << " чашек кофе? Тебе нужно " << dzen_count << " минут медитации, чтобы стать дзен!" << endl;

                break;
            }

            case (4):{
                srand(time(nullptr));

                string city; double temp;

                vector<string> weather = {
                    "сильный ливень из пончиков",
                    "отсутствие солнца и всемирный потоп",
                    "облачно, возможны осадки в виде фрикаделек"
                };

                cout << "В каком городе ты живешь? ";
                cin >> city;
                
                cout << "А любимая температура? ";
                cin >> temp;

                cout << "Сегодня в " << city << " ожидается " << weather[rand() % weather.size()] << " при температуре " << temp << " градусов!" << endl;

                break;
            }

            case (5):{
                double stipend, wishedSum, deferred;
                cout << "Напиши свою стипендию: ";
                cin >> stipend;

                cout << "Напиши сумму, которую хочешь отложить: ";
                cin >> wishedSum;


                if (wishedSum > stipend) {
                    cout << "Вы не можете откладывать больше, чем получаете!" << endl;
                    return 0;
                }

                deferred = wishedSum * 5;

                cout << "Ты можешь отложить за семестр " << deferred << " рублей" << endl;

                if (deferred < 5000) {
                    cout << "Придется просить у родителей!" << endl;
                }

                else if (deferred >= 5000) {
                    cout << "Поздравляю, ты почти миллионер!" << endl;
                }

                break;
            }

            case (6):{
                int favoriteInteger;
                string result;

                cout << "Введи свое любимое число: ";
                cin >> favoriteInteger;
        
                if (favoriteInteger % 2 == 0 && favoriteInteger % 3 == 0) {
                    result = "баланс логики и любви";
                }
                else if (favoriteInteger % 2 == 0) {
                    result = "логика и здравый смысл";
                }
                else if (favoriteInteger % 3 != 0) {
                    result = "любовь и страсть";
                }
                else{
                    cout << "Твое число какое-то несильно удачное, выбери другое, пожалуйста..." << endl;
                    break;
                }

                cout << "Ваше число - это знак " << result << " результат!" << endl;

                break;
            }

            case (7):{
                string name, favoriteActivity;

                cout << "Как тебя зовут? ";
                cin >> name;

                cout << "Какая у тебя любимая активность? ";
                cin >> favoriteActivity;

                int hours = name.length();

                cout << "Привет, " << name << "! Согласно данным иследований, ты будешь откладывать активность еще " << hours << " часов!" << endl;
                break;
            }

            case (8):{
                int countHours, hours_slept;

                cout << "Сколько часов ты спал? ";
                cin >> countHours;

                hours_slept = countHours * 2;

                cout << "Поздравляю, ты мог проспать " << hours_slept << " часов, если бы твоя лень увеличилась вдвое!" << (hours_slept > 10 ? " Ты настоящий мастер сна!" : "") << endl;

                break;
            }

            case (9):{
                int pizza_slices;

                cout << "Сколько пиццы ты съел за день? ";
                cin >> pizza_slices;

                int calories = pizza_slices * 300;
                int Y = calories / 10;

                cout << "Ты съел " << calories << " калорий, это примерно как поднять " << Y << " кг веса на 1 метр!\nТак держать, чемпион!" << endl;

                break;
            }

            case (10):{
                double money_left;

                cout << "Сколько денег осталось после выходных? ";
                cin >> money_left;

                double wish = money_left * 100;

                cout << "Ты на " << wish << " % приблизился к своей мечте о яхте!" << (money_left < 100 ? " Ого! Уже не так уж и далеко, верно?" : " ") << endl;

                break;
            }

            case (11):{
                int friends;

                cout << "Сколько у тебя друзей? ";
                cin >> friends;

                int guests = friends * 2;

                if (friends <= 0){
                    cout << "У тебя нет друзей, у тебя никого не будет на встрече" << endl;
                    break;
                }

                cout << "У тебя будет " << guests << " гостей на встрече" << (friends > 10 ? ". Это будет эпичная встреча!" : "") << endl;

                break;
            }

            case (12):{
                int tasks;

                cout << "Сколько дел ты откладываешь по понедельникам?";
                cin >> tasks;

                cout << "В понедельник умноженный на два тебе пришлось бы отложить аж " << tasks * 2 << " задач!" << (tasks > 5 ? ". Мастер откладывания найден! Ты - профессионал!" : "") << endl;

                break;
            }

            case (13):{
                double savings_per_month;

                cout << "Сколько ты готов откладывать каждый месяц? ";
                cin >> savings_per_month;

                double saving_per_year = savings_per_month * 12;

                cout << "Через 100 лет ты будешь мультимиллионером с суммой " << saving_per_year * 100 << "!" << endl;

                break;
            }

            case (14):{
                int donuts;
                
                cout << "Сколько пончиков ты съел за день? ";
                cin >> donuts;

                int calories = donuts * 300;

                cout << "Чтобы сжечь пончики, тебе понадобится " << calories / 5 << " минут активности!" << endl;
            }

            case (15):{
                double grade;

                cout << "Введи свою среднюю оценку по экзаменам: ";
                cin >> grade;

                if (grade < 0 || grade > 100){
                    cout << "Ты ввел неверное значение!";
                    break;
                }

                double x = 100 - grade ;

                cout << "Ты прошел на " << grade << "%. Оставшиеся " << x << "% - это бесконечный потенциал!" << endl;

                break;
            }

            case (16):{
                int hours;

                cout << "Напиши в часах, когда ты просыпаешься: " << endl;
                cin >> hours;

                if (hours > 24 || hours < 0){
                    cout << "больше/меньше 25 часов в сутки это все же реально?!" << endl;
                    break;
                }

                else if (hours < 7){
                    cout << "Ты - суперранняя пташка!";
                }
                else if (hours >= 7 && hours <= 9){
                    cout << "Отличный режим!" << endl;
                }
                else if (hours > 9){
                    cout << "Опять проспал? Похоже, что понедельник стал твоим врагом!" << endl;
                }

                break;
            }

            case (17):{
                int study_hours;

                cout << "Сколько сегодня ты провел часов за учебой? " << endl;
                cin >> study_hours;

                if (study_hours > 5){
                    cout << "Ты настоящий ботаник!";
                }
                else if (study_hours >= 2 && study_hours <= 5){
                    cout << "Неплохо! Ты на верном пути";
                }
                else if (study_hours < 2){
                    cout << "Кажется, твоя лень сильнее тебя! Попробуй еще раз завтра";
                }
                break;
            }

            case (18):{
                int countCoffeeCups;

                cout << "Сколько кофейных чашек ты выпил за день? " << endl;
                cin >> countCoffeeCups;

                if (countCoffeeCups > 5){
                    cout << "Ты на пределе! Постепенно ты становишься машиной." << endl;
                }
                else if (countCoffeeCups >= 3 && countCoffeeCups <= 5){
                    cout << "Стабильный уровень энергии. Продолжай!" << endl;
                }
                else if (countCoffeeCups < 3){
                    cout << "Ты удивляешь всех своими суперспособностями выживания!" << endl;
                }
                break;
            }

            case (19):{
                int grade;

                cout << "Введи свою оценку за последний тест: ";
                cin >> grade;

                if (grade < 0 || grade > 100){
                    cout << "Ты ввел неверное значение!" << endl;
                    break;
                }
                else if (grade >= 90){
                    cout << "Ты прирожденный гений!" << endl;
                }
                else if (grade >= 70 && grade < 90){
                    cout << "Ты силен, но потенциал еще не раскрыт полностью!" << endl;
                }
                else if (grade > 70){
                    cout << "Не отчаивайся, каждый гений начинал с малого" << endl;
                }
                break;
            }

            case (20):{
                int eatedSlicesPizza;

                cout << "Сколько ты съел кусочков пиццы?  " << endl;
                cin >> eatedSlicesPizza;

                if (eatedSlicesPizza > 6){
                    cout << "Ты официальный пицца-магнат!" << endl;
                }
                else if (eatedSlicesPizza >= 3 && eatedSlicesPizza <= 6){
                    cout << "Ты нормально наелся, можно и отдохнуть!" << endl;
                }
                else if (eatedSlicesPizza < 3){
                    cout << "Ты точно уверен, что не хочешь еще кусочек?" << endl;
                }
                break;
            }

            case (21):{
                string mood;

                cout << "Как ты чувствуешь себя сегодня? " << endl;
                cin >> mood;

                // string moodLower = toLowerCase(mood); с русскими не работает

                if (mood == "счастлив" || "счастлива" || "счастливый"){
                    cout << "Похоже, у тебя солнечный день!" << endl;
                }
                else if (mood == "уставший" || "устал" || "устала"){
                    cout << "Нужно кофе и пижамный день!" << endl;
                }
                else{
                    cout << "Что бы ни случилось, главное - держи хвост пистолетом!" << endl;
                }
                break;
            }

            case (22):{
                int taskWeekend;

                cout << "Сколько дел у тебя запланировано на выходной?" << endl;
                cin >> taskWeekend;

                if (taskWeekend > 5){
                    cout << "Ты точно решил стать суперменом? Тебе нужен отдых!" << endl;
                }
                else if (taskWeekend >= 1 && taskWeekend >= 5){
                    cout << "Отличный план для продуктивного дня!" << endl;
                }
                else if (taskWeekend == 0){
                    cout << "Выходной создан для полного расслабления! Наслаждайся!" << endl;
                }
                break;
            }

            case (23):{
                int optimispic;

                cout << "На сколько процентов ты доволен своей жизнью? " << endl;
                cin >> optimispic;

                if (optimispic  > 80){
                    cout << "Ты заряжен на успех, оптимизм в тебе зашкаливает!" << endl;
                }
                else if (optimispic >= 50 && optimispic <= 80){
                    cout << "Отличный настрой, хотя всегда есть к чему стремиться" << endl;
                }
                else if (optimispic < 50){
                    cout << "Не забывай, что радость начинается с маленьких шагов! Ты справишься!" << endl;
                }
                break;
            }

            case (24):{
                int hoursOfSleep;

                cout << "Сколько часов ты спишь обычно? " << endl;
                cin >> hoursOfSleep;

                if (hoursOfSleep < 8){
                    for (int i = 0; i <= 8; i++){
                        cout << "Еще чуть-чуть, и я высплюсь!" << endl;
                    }
                }

                cout << "Поздравляю! Ты выспался! Хотя, может, еще пару часов не повредят?" << endl;
                break;
            }

            case (25):{
                int usersInt;
                cout << "Давай поиграем! Выбери число от 1 до 10: " << endl;
                cin >> usersInt;

                if (usersInt < 1 || usersInt > 10){
                    cout << "От 1 до 10. Попробуй еще раз" << endl;
                    break;
                }

                cout << "ИИ: Хорошо, хм... " << endl;
                int AIthinking; int howMuchTry = 0;
                int alreadyAIGuessed[11] = {false};

                while (true){
                    do{
                        AIthinking = rand() % 10 + 1;
                    } while (alreadyAIGuessed[AIthinking] == true);

                    alreadyAIGuessed[AIthinking] = true;
                    howMuchTry++;

                    cout << "ИИ: я думаю, что это - " << AIthinking << endl;

                    if (AIthinking == usersInt){
                        cout << "ИИ: Правильно! Я угадал за " << howMuchTry << " попыток! Твое число - " <<  usersInt << endl;
                        break;
                    }
                }
                break;
            }

            case (26):{
                int num;
                int result = 0;
                
                cout << "Введи число: " << endl;
                cin >> num;

                for (int i = 0; i <= 10; i++){
                    result = num * i;
                    cout << num << " x " << i << " = " << result << (result > 50 ? " Вот это да! Кажется, я близок к бесконечности!" : " ") << endl;     
                }

                break;
            }

            case (27):{
                int countpagesToDeadline;

                cout << "Сколько страниц тебе нужно прочесть до дедлайна: " << endl;
                cin >> countpagesToDeadline;

                for (int i = 0; i++; ){
                    if (countpagesToDeadline <= 0) {
                        cout << "Все задание выполнено" << endl;
                        break;
                    }

                    countpagesToDeadline -= 5;
                    cout << "Еще " << countpagesToDeadline << " страниц. Близок к финишу!" << endl;

                    if (countpagesToDeadline < 5 && countpagesToDeadline > 0){
                        cout << "Ты почти на финише, можно и передохнуть!" << endl;
                        break;
                    }
                    else if (countpagesToDeadline <= 0){
                        cout << "Все задание выполнено" << endl;
                        break;
                    }
                }
                break;
            }

            case (28):{
                int countCoffeeCup = 0;
                while (countCoffeeCup < 5){
                    cout << "Чашка " << countCoffeeCup + 1 << " выпита! Энергии прибавилось!" << endl;

                    countCoffeeCup++;
                }

                cout << "Пора остановиться! Иначе начнётся перегрузка!" << endl;

                //через while (или потом прервать цикл вручную через if и break;)
                // while (countCoffeeCupWhile < 5){
                //     cout << "Чашка " << countCoffeeCupWhile + 1 << " выпита! Энергии прибавилось!" << endl;
                //     countCoffeeCupWhile++;
                // }
                // cout << "Пора остановиться! Иначе начнётся перегрузка!" << endl;

                break;
            }

            case (29):{
                int countExcuses;

                cout << "Сколько оправданий тебе пришлось придумать отговорок на недавней встрече? " << endl;
                cin >> countExcuses;

                for (int i = 0; i < countExcuses; i++){
                    cout << "Извините, просто так получилось... №" << i + 1 <<  endl;
                }
                cout << "Ты стал мастером отговорок!" << endl;
                break;
            }

            case (30):{
                string answer;
                for (int i = 0; i <= 10; i++){
                    cout << "Сделал домашку?" << endl;
                    cin >> answer;
                    // answer = toLowerCase(answer);

                    if (answer == "нет" || answer == "нет." || answer == "НЕТ" || answer == "Нет" || answer == "Нет."){
                        cout << "Ну ладно, в следующий раз" << endl;
                        continue;
                    }
                    else if (answer == "да" || answer == "Да" || answer == "да." || answer == "Да." || answer == "ДА"){
                        cout << "Ура! Наконец-то!" << endl;
                        break;
                    }
                }
                break;
            }

            case (31):{
                string answer;
                while (true){
                    cout << "Когда ты начнешь учиться?" << endl;
                    cin >> answer;

                    if (answer == "с понедельника" || answer == "с понедельника." || answer == "С ПОНЕДЕЛЬНИКА" || answer == "С понедельника." || answer == "С понедельника"){
                        continue;
                    }
                    else if (answer == "сегодня" || answer == "Сегодня" || answer == "сегодня." || answer == "Сегодня." || answer == "СЕГОДНЯ"){
                        cout << "Наконец-то! Вперёд к знаниям!" << endl;
                        break;
                    }
                }
                break;
            }

            case (32):{
                int countIteration = 0;

                while (true){
                    cout << "Обрабатываю запрос №" << countIteration+1 << endl;

                    countIteration++;
                    if (countIteration % 5 == 0 && countIteration != 20){
                        cout << "Сисадмин устал, пора на перерыв!" << endl;
                    }
                    else if (countIteration == 20) {
                        cout << "Сисадмин ушел пить кофе и слушать музыкальные аниме-треки." << endl;
                        break;
                    }
                }
                break;
            }

            case (33):{
                int code_lines;

                cout << "Сколько строк кода ты написал за неделю?" << endl;
                cin >> code_lines;

                int startCodeLines = 0;

                for (int i = 0; i != code_lines; i++){
                    cout << "Код написан: " << startCodeLines << endl;

                    if (startCodeLines < 500){
                        cout << "Уровень кодера - новичок" << endl;
                    }
                    else if (startCodeLines >= 500 && startCodeLines < 1000){
                        cout << "Уровень кодера - продвинутый" << endl;
                    }
                    else if (startCodeLines >= 1000 && startCodeLines < 2000){
                        cout << "Уровень кодера - Геймер-кодер" << endl;
                    }
                    else if (startCodeLines >= 2000 && startCodeLines < 3000){
                        cout << "Ты стал гуру IT и готов к покорению мира хакеров!" << endl;
                        break;
                    }
                    startCodeLines +=100;
                }
                break;
            }

            case (34):{
                int levelITskills;
                string userChoice;

                cout << "Каков уровень твоих IT-навыков? (от 1 до 10)" << endl;
                cin >> levelITskills;

                if (levelITskills > 1 || levelITskills > 10){
                    cout << "Неверно. Укажите число от 1 до 10" << endl;
                }

                while (levelITskills != 10){
                    cout << "IT-ниндзя получил новый уровень: " << levelITskills+1 << endl;
                    levelITskills++;

                    if (levelITskills == 10){
                        cout << "Ты открыл доступ к скрытым силам сисадминов и суперсиле геймера!" << endl;
                        break;
                    }

                    cout << "Хочешь продолжить тренировку?\nНажми 'y' - чтобы продолжить, 'n'  - чтобы прервать"  << endl;
                    cin >> userChoice;

                    if (userChoice == "n" || userChoice == "N" || userChoice == "н" || userChoice == "Н"){
                        cout << "Тренировка завершена, но путь к IT-величию бесконечен!" << endl;
                        break;
                    }
                    else if (userChoice == "y" || userChoice == "Y" || userChoice == "д" || userChoice == "Д"){
                        continue;
                    }
                    else {
                        cout << "Неверно. Укажите 'y' или 'n'" << endl;
                    }
                }
                break;
            }

            case (35):{
                int countAnimeEpisodes;

                cout << "Сколько аниме серий тебе осталось досмотреть? " << endl;
                cin >> countAnimeEpisodes;

                for (int i = countAnimeEpisodes; i > 0; i--){
                    cout << "Еще одна серия! Осталось " << i << " серий" << endl;
    
                    if (i == 1) {
                        cout << "Ты сделал это! Теперь можно начинать новый тайтл или пересмотреть классику." << endl;
                    }
                }
                break;
            }

            case (36):{
                double coffeeLitersPerNight;
                string skillLevel = "студент";

                cout << "Сколько литров кофе ты выпил за ночь?" << endl;
                cin >> coffeeLitersPerNight;

                if (coffeeLitersPerNight > 3){
                    while (skillLevel != "просветленный кодер"){
                        if (skillLevel == "студент") {
                            cout << "Сила кофе поднимает навыки студента на уровень 'эксперт'" << endl;
                            skillLevel = "эксперт";
                        }
                        else if (skillLevel == "эксперт") {
                            cout << "Сила кофе поднимает навыки студента на уровень 'мастер'" << endl;
                            skillLevel = "мастер";
                        }
                        else if (skillLevel == "мастер") {
                            cout << "Сила кофе поднимает навыки студента на уровень 'просветленный кодер'" << endl;

                            skillLevel = "просветленный кодер";

                            cout << "Экзамен — это просто еще один код!" << endl;
                            break;
                        }
                    }
                }
                break;
            }

            case (37):{
                cout << "Совет: " << advice_sysadmin() << endl;
                cout << "Совет: " << advice_sysadmin() << endl;
                cout << "Совет: " << advice_sysadmin() << endl;
                cout << "Совет: " << advice_sysadmin() << endl;

                break;
            }

            case (38):{
                cout << character_of_day("Naruto") << endl;
                cout << character_of_day("TokyoGhoul") << endl;
                cout << character_of_day("ChainsawMan") << endl;

                cout << character_of_day("Naruto") << endl;
                cout << character_of_day("TokyoGhoul") << endl;
                cout << character_of_day("ChainsawMan") << endl;
                break;
            }

            case (39):{
                cout << coder_or_gamer(5, 4) << endl;
                cout << coder_or_gamer(4, 5) << endl;
                cout << coder_or_gamer(10, 10) << endl;
                break;
            }

            case (40):{
                cout << coffee(2) << endl;
                cout << coffee(4) << endl;
                cout << coffee(8) << endl;
                cout << coffee(9) << endl;
                cout << coffee(11) << endl;
                break;
            }

            case (41):{
                cout << compliment_to_student("Гриша") << endl;
                cout << compliment_to_student("Макс") << endl;
                cout << compliment_to_student("Ксюша") << endl;
                cout << compliment_to_student("Марина") << endl;
                break;
            }

            case (42):{
                cout << anime_lazy(0) << endl;
                cout << anime_lazy(4) << endl;
                cout << anime_lazy(8) << endl;
                break;
            }

            case (43):{
                cout << guide_IT("кодинг") << endl;
                cout << guide_IT("сисадмин") << endl;
                cout << guide_IT("сети") << endl;
                cout << guide_IT("аниме") << endl;
                break;
            }

            case (44):{
                cout << level_of_anime(7, 1) << endl;
                cout << level_of_anime(20,1) << endl;
                break;
            }

            case (45):{
                cout << coffee_for_studying(1, 11) << endl;
                cout << coffee_for_studying(3, 3) << endl;
                break;
            }

            case (46):{
                cout << anime_student("Ваня", 20, "Naruto") << endl;
                cout << anime_student("Валя", 28, "TokyoGhoul") << endl;
                cout << anime_student("Игорь", 18, "ChainsawMan") << endl;
                cout << anime_student("Марина", 31, "OnePiece") << endl;
                break;
            }

            case (47):{
                cout << path_to_guru(3, 2) << endl;
                cout << path_to_guru(50, 3) << endl;
                break;
            }

            case (48):{
                cout << test_sysadmin(6, 6) << endl;
                cout << test_sysadmin(4, 2) << endl;
                cout << test_sysadmin(4, 0) << endl;
                break;
            }

            case (49):{
                cout << procrastination(3, "игры") << endl;
                cout << procrastination(10, "соцсети") << endl;
                cout << procrastination(1, "аниме") << endl;
                cout << procrastination(23, "плакать") << endl;
                break;
            }

            case (50):{
                cout << anime_exam(76, "Наруто") << endl;
                cout << anime_exam(80, "Саске") << endl;
                cout << anime_exam(30, "Денджи") << endl;
                break;
            }

            case (51):{
                philosophy_of_coder(think);
                philosophy_of_coder(tea);
                philosophy_of_coder(bugs);
                break;
            }

            case (52):{
                cout <<  oracle() << endl;
                cout <<  oracle() << endl;
                cout <<  oracle() << endl;
                break;
            }

            case (53):{
                cout <<  day_sysadmin(reload) << endl;
                cout <<  day_sysadmin(check_networks) << endl;
                cout <<  day_sysadmin(optimization_database) << endl;
                break;
            }

            case (54):{
                cout << compliment (genius_of_code) << endl;
                cout << compliment (master_of_debut) << endl;
                break;
            }

            case (55):{
                cout << wisdom_of_sensei(relax) << endl;
                cout << wisdom_of_sensei(kaizen) << endl;
                break;
            }

            case (56):{
                cout << mood_of_day(drink_coffee) << endl;
                cout << mood_of_day(watch_anime) << endl;
                cout << mood_of_day(do_homework) << endl;
                break;
            }

            case (57):{
                cout << task_of_day() << endl;
                cout << task_of_day() << endl;
                cout << task_of_day() << endl;
                cout << task_of_day() << endl;
                break;
            }

            default:{
                cout << "Такого задания нет" << endl;
            }
        
        }   
    }
    return 0;
}
