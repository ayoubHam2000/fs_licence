#include <stdio.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(){
    int a = 2;
    char buffer[10];

    sprintf(buffer, "%d", a);
    printf("%d\n", atoi(buffer));

    return 0;

}