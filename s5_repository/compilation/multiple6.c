#include <stdio.h>

int isMulti3(char *str){
    int s = 0;

    while(*str != 0){
        if(s == 0){
            switch(*str){
                case '0' : s = 0; break;
                case '1' : s = 1; break;
                default : return 0;
            }
        }else if(s == 1){
            switch(*str){
                case '0' : s = 2; break;
                case '1' : s = 0; break;
                default : return 0;
            }
        }else{
            switch(*str){
                case '0' : s = 1; break;
                case '1' : s = 2; break;
                default : return 0;
            }
        }
        str++;
    }
    return s == 0;
}

int isMulti2(char *str){
    int s = 0;

    while(*str != 0){
        if(s == 0){
            switch(*str){
                case '0' : s = 0; break;
                case '1' : s = 1;break;
                default: return 0;
            }
        } else if(s == 1){
            switch(*str){
                case '0' : s = 0; break;
                case '1' : s = 1; break;
                default : return 0;
            }
        }
        str++;
    }
    return s == 0;
}

int main(int ac, char **av){
    char *num = av[1];
    //char *num = "100100";

    printf("%s\n", num);
    if(isMulti2(num))
        printf("div by 2\n");
    else
        printf("Not div by 2\n");
    
    printf("%s\n", num);
    if(isMulti3(num))
        printf("div 3 and 2\n");
    else
        printf("Not div by 3\n");
}