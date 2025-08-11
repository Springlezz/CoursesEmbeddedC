#include <stdio.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <signal.h>
#include <stdlib.h>
#include <curses.h>
#include <dirent.h>
#include <unistd.h>
#include <string.h>
#include <ncurses.h>
#include "server.h"

#define MAX_FILES 1024
#define MAX_PATH 1024

WINDOW *left_win, *right_win;

char left_path[MAX_PATH], right_path[MAX_PATH];
int current_side = 0;

int left_index = 0, right_index = 0;
int left_count = 0, right_count = 0;

char **left_namelist = NULL;
char **right_namelist = NULL;

void sig_winch(int signo) {
    struct winsize size;
    ioctl(fileno(stdout), TIOCGWINSZ, (char *) &size);resizeterm(size.ws_row, size.ws_col);
}

void init_panels(char *left_path , char *right_path) {
    int focus_panel = 0;

    signal(SIGWINCH, sig_winch);

    cbreak();
    initscr();
    noecho();
    
    keypad(stdscr, TRUE);
    //curs_set(0);

    int y, x;
    getmaxyx(stdscr, y, x);

    left_win = newwin(y, x / 2, 0, 0);
    right_win = newwin(y, x / 2, 0, x / 2);

    start_color();
    use_default_colors();
    init_pair(1, COLOR_WHITE, COLOR_BLUE);
    init_pair(2, COLOR_BLACK, COLOR_CYAN);
    //bkgd(COLOR_PAIR(1));
    wbkgd(left_win, COLOR_PAIR(1));
    wbkgd(right_win, COLOR_PAIR(1));

    strncpy(left_path, left_path, MAX_PATH);
    strncpy(right_path, right_path, MAX_PATH);

    display_directories();
}

void free_panel_files(char ***namelist, int count) {
    if (*namelist != NULL){
        for (int i = 0; i < count; i++){
            free((*namelist)[i]);
        }
        free(*namelist);
        *namelist = NULL;
    }
}

void quit_filemanager(){
    free_panel_files(&left_namelist, left_count);
    free_panel_files(&right_namelist, right_count);

    delwin(left_win);
    delwin(right_win);
    endwin();
}

void input(){
    while (1){
        int ch = wgetch(stdscr);
        if (ch == 'q' || ch == 'Q'){
            quit_filemanager();
            break;
        }
        
        switch (ch){
            case (KEY_UP):{
                if (current_side == 0 && left_index > 0){
                    left_index--;
                }
                else if (current_side == 1 && right_index > 0){
                    right_index--;
                }
                break;
            }
            case (KEY_DOWN):{
                if (current_side == 0 && left_index < left_count - 1){
                    left_index++;
                }
                else if (current_side == 1 && right_index < right_count - 1){
                    right_index++;
                }
                break;
            }
            case ('\t'):{
                current_side = !current_side;
                break;
            }
            case ('\n'):{
                enter_directory();
                break; 
            }
        }
    }
    display_directories();
}

void load_directory(char *path, char ***namelist, int *count) {
    DIR *dir = opendir(path);
    if (!dir) return;

    free_panel_files(namelist, *count);
    *count = 0;

    *namelist = malloc(sizeof(char*) * MAX_FILES);
    if (!*namelist) {
        closedir(dir);
        return;
    }

    closedir(dir);
}

void display_directories() {
    load_directory(left_path, &left_namelist, &left_count);
    load_directory(right_path, &right_namelist, &right_count);

    draw_panel(left_win, left_namelist, left_count, left_index, left_path, current_side == 0);
    draw_panel(right_win, right_namelist, right_count, right_index, right_path, current_side == 1);
}


/*void load_directory(panel_data *panel, char *path) {
    DIR *dir = opendir(path);
    if (!dir) return;
    free_panel_files(panel);
    panel->selected = 0;
    strncpy(panel->path, path, sizeof(panel->path) - 1);
    panel->path[sizeof(panel->path) - 1] = '\0';

    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL && panel->count < MAX_FILES) {
        panel->files[panel->count++] = strdup(entry->d_name);
    }

    closedir(dir);
}*/


/*void draw_panel(WINDOW *win, panel_data *panel, int focus) {
    werase(win);
    box(win, 0, 0);
    mvwprintw(win, 0, 2, "[%s]", panel->path);
    for (int i = 0; i < panel->count; i++) {
        if (i == panel->selected) {
            wattron(win, COLOR_PAIR(2));
        }
        //wprintw(win, i + 1, 1, "%s", panel->files[i]);
        mvwprintw(win, i + 1, 2, "%s", panel->files[i]);
        if (i == panel->selected) {
            wattroff(win, COLOR_PAIR(2));
        }
    }
    wrefresh(win);
}*/



