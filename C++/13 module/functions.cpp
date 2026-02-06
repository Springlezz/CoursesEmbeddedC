#include <iostream>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <map>

#include "functions.h"

using namespace std;
string advice_sysadmin(){
    vector<string> advices = {
        "a. Не работает - перезагрузи!",
        "b. Загляни в логи, они знают больше, чем ты.",
        "c. Кофе — топливо всех серверов.",
    };

    return advices[rand() % advices.size()];
}

string character_of_day(string anime){
    vector<string> Naruto = {
        "Наруто Узумаки",
        "Саске Учиха",
        "Сакура",
    };

    vector<string> ChainsawMan = {
        "Денджи",
        "Пауэр",
        "Резе",
    };

    vector<string> TokyoGhoul = {
        "Канеки кен",
        "Ризе",
        "Джузо",
    };

    return anime == "Naruto" ? Naruto[rand() % Naruto.size()] : (anime == "ChainsawMan" ? ChainsawMan[rand() % ChainsawMan.size()] : TokyoGhoul[rand() % TokyoGhoul.size()]);
}

string coder_or_gamer(int hours_of_coding, int hours_of_gaming){
    if (hours_of_coding > hours_of_gaming){
        return "Ты настоящий кодер!";
    }
    else if (hours_of_coding < hours_of_gaming){
        return "Геймер во всей красе!";
    }
    else if (hours_of_coding == hours_of_gaming){
        return "Ты геймер-кодер!";
    }
    return 0;
}

string coffee(int hours_of_studying){
    int cups = ceil(hours_of_studying / 2);
    return "Для " + to_string(hours_of_studying) + " часов учёбы тебе понадобится " + to_string(cups) + " чашек кофе. Удачи!";
}

string compliment_to_student(string name){
    vector<string> compliments = {
        "Ты ломаешь все силой мысли, " + name,
        "В мире сисадминов тебе нет равных, " + name,
        "Ты можешь настроить сервер даже во сне, " + name,
        "Настолько крут, что продакшн постоянно падает от твоих коммитов и реквестов, " + name,
    };

    return compliments[rand() % compliments.size()];
}

string anime_lazy(int series){
    if (series < 3){
        return ("Уровень: Рабочая пчелка");
    }
    else if (series >= 3 && series <= 5){
        return ("Уровень: Опытный анимешник");   
    }
    else if (series > 5){
        return ("Уровень: Профессиональный прокрастинатор");
    }
    else{
        return 0;
    }
    return 0;
}

string guide_IT(const string &interest){ //через мап
    map<string, string> IT_guides = {
        {"кодинг", "Начни с C++, как делают 2% новичков!"},
        {"сети", "Никогда не забывай о пинге!"},
        {"сисадмин", "Лучшие друзья сисадмина — резервные копии."},
    };

    if (IT_guides.count(interest)) {
        return IT_guides[interest];
    } else {
        return "Интерес не распознан, возможно, ты написал с большой буквы. Но добро пожаловать в мир IT!";
    }
}

string level_of_anime(int anime_in_week, int series_of_day){
    if (series_of_day * 7 >= anime_in_week){
        return ("Ты настоящий аниме-герой!");
    }
    else{
        return "Кажется, ты застрянешь в этом тайтле до следующего семестра.";
    }
    return 0;
}

string coffee_for_studying(int hours, int cups){
    int totalCups = hours * cups;

    if (totalCups > 10){
        cout << "Предупреждение! Возможно, потребуется апгрейд на систему охлаждения!" << endl;
    }

    return "Для " + to_string(hours) + " часов учёбы тебе понадобится " + to_string(totalCups) + " чашек кофе.";
}

string anime_student(string name, int age, const string &favourite_anime){
    map<string, vector<string>> animePhrases = {
        {"Naruto", {
            "Мечтает стать хокаге в IT.",
            "Мечтает кушать много лапши."
        }},
        {"OnePiece", {
            "В поисках сокровища кодов и багов.",
            "Плывёт по морям дедлайнов."
        }},
        {"ChainsawMan", {
            "Лучшие друзья — демоны резервные копии.",
            "Живёт ради девушек с обоев фанатов Arch Linux (секундочку.. а это точно деву-)"
        }}
    };

    if (animePhrases.count(favourite_anime) == 0){
        return "Такого аниме нет у меня в списке";
    }

    const auto& phrases = animePhrases[favourite_anime];
    return "Имя: " + name + ", Возраст: " + to_string(age) + ", Любимое аниме: " + favourite_anime + ", Факт о тебе: " + phrases[rand() % phrases.size()];
}

string path_to_guru(int hours, int weeks){
    int totalHours = hours * weeks;

    if (totalHours >= 100){
        return "Ты  - будущий гуру!";
    }
    else if (totalHours < 100){
        return "Неплохо, но до гуру еще немного не хватает.";
    }
    return 0;
}

string test_sysadmin(int difficult_tasks, int easy_tasks){
    int totalTasks = difficult_tasks + easy_tasks;

    if (totalTasks >= 10){
        return "Сисадмин готов! Настоящий боец сетей!";
    }
    else if (totalTasks < 10){
        return "Сисадмин еще тренируется, но уже близок к вершинам мастерства!";
    }
    return 0;
}

string procrastination(int hours, const string &activity){
    map<string, string> procrastinationActivity = {
        {"игры", "Ты точно вернёшься на учебу после ещё одного уровня, да?"},
        {"аниме", "Всего 5 серий... до экзамена времени точно хватит!"},
        {"соцсети", "Проверь свой статус почаще, ведь учеба подождёт!"},
    };

    if (procrastinationActivity.count(activity) == 0){
        return "Такого деятельности нет у меня в списке";
    }
    return procrastinationActivity[activity];
}

string anime_exam(double grade, string favourite_hero){
    if (grade >= 80){
        return "Ты почти как " + favourite_hero + ", твой результат потрясающий!";
    }
    else if (grade < 80){
        return "Не сдавайся, " + favourite_hero + " бы продолжал сражаться";
    }
    return 0;
}


void philosophy_of_coder(void(*thought)()){
    thought();
}

void think() {
    cout << "Чтобы учить Python, нужно сначала научиться думать, как Python." << endl;
}

void tea() {
    cout << "Код — это как хороший чай: если переборщишь, получишь горечь багов." << endl;
}

void bugs() {
    cout << "Баги — это твои лучшие учителя, если не сердиться." << endl;
}


string success() {
    return "Тебя ждёт успех на экзамене по программированию!";
}

string failure() {
    return "Кажется, пора меньше смотреть аниме и больше готовиться...";
}

string oracle(){
    if (rand() % 2 == 0) {
        return success();
    } else {
        return failure();
    }
}


string reload(){
    return "Перезагружаю сервер... Ну, теперь точно всё заработает!";
}

string check_networks(){
    return "Пингуем все машины. Надеюсь, интернет живой.";
}

string optimization_database(){
    return "Оптимизирую базу данных, сейчас удалю все таблицы";
}

string day_sysadmin(string (*action)()){
    return action();
}


string genius_of_code(){
    return "Код — это как хороший чай: если переборщишь, получишь горечь багов.";
}

string master_of_debut(){
    return "Ты как Stack Overflow на максималках!";
}

string compliment(string (*phrase)()){
    return phrase();
}

string kaizen(){
    return "Совершенствуй свой код каждый день, чтобы стать сильнее.";
}

string relax(){
    return "Без отдыха ты не достигнешь ни уровня героя, ни уровня кодера.";
}

string wisdom_of_sensei(string (*advice)()){
    return advice();
}


string drink_coffee(){
    return "Кофеин в крови — настроение на подъеме!";
}

string watch_anime(){
    return "Настроение на уровне главного героя, готов к коду!";
}

string do_homework(){
    return "Тяжело, но прокачка опыта стоит того.";
}

string mood_of_day(string (*action)()){
    return action();
}


string learn_python(){
    return "Смотрю туториалы по Python, уровень уверенности: +1.";
}

string relax_task(){
    return "Пора отвлечься! Можно немного аниме для поднятия настроения.";
}

string fix_bugs(){
    return  "Никакой баг не уйдёт от моего взгляда!";
}
string  task_of_day(){
    int choice_task = rand() % 3;

    if (choice_task == 0) {
        return fix_bugs();
    }
    else if (choice_task == 1) {
        return relax_task();
    }
    else {
        return learn_python();
    }
}