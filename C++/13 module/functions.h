#pragma once

#include <iostream>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <map>

using namespace std;

string advice_sysadmin();
string character_of_day(string anime);
string coder_or_gamer(int hours_of_coding, int hours_of_gaming);
string coffee(int hours_of_studying);
string compliment_to_student(string name);
string anime_lazy(int series);
string guide_IT(const string &interest);
string level_of_anime(int anime_in_week, int series_of_day);
string coffee_for_studying(int hours, int cups);
string anime_student(string name, int age, const string &favourite_anime);
string path_to_guru(int hours, int weeks);
string test_sysadmin(int difficult_tasks, int easy_tasks);
string procrastination(int hours, const string &activity);
string anime_exam(double grade, string favourite_hero);

void philosophy_of_coder(void(*thought)());
void think();
void tea();
void bugs();

string success();
string failure();
string oracle();

string reload();
string check_networks();
string optimization_database();
string day_sysadmin(string (*action)());

string genius_of_code();
string master_of_debut();
string compliment(string (*phrase)());

string kaizen();
string relax();
string wisdom_of_sensei(string (*advice)());

string drink_coffee();
string watch_anime();
string do_homework();
string mood_of_day(string (*action)());

string learn_python();
string relax_task();
string fix_bugs();
string  task_of_day();