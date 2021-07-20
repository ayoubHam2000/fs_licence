#include <stdio.h> 

int isNumber(char c, int *state){
    if(c <= '9' && c >= '0'){
        switch(*state) {
            case 1: *state = 2;break;
            case 2: *state = 2;break;
            case 3: *state = 3;break;
            case 4: *state = 5;break;
            case 5: *state = 5;break;
            default : *state = -1; break;
        }
        return 1;
    }
    return 0;
}

int isPoint(char c, int *state){
    if(c == '.'){
        switch(*state) {
            case 1: *state = 4;break;
            case 2: *state = 3;break;
            default : *state = -1;break;
        }
        return 1;
    }   
    return 0;
}



int main(){
    int state = 1;
    int i = 0;
    char *str = "99988844.332.v";
    char c;

    while(str[i] != 0){
        c = str[i];
        if(!isNumber(c, &state) && !isPoint(c, &state)){
            state = -1;
        }
        if(state == -1){
            break;
        }
        i++;
    }

    if(state == 2 || state == 3 || state == 5)
        printf("Match");
    else
        printf("Not match");

    return 0;
}