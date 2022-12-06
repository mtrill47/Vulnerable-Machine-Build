#include <stdio.h>
#include <string.h>
#include <stdlib.h>
//char pass[] = "Naarut00_(!s)_Th33Go@@t$$";
void do_input(){
    int key = 0x12345678;
    char buffer[32];
    char pass[] = "Naarut00_(!s)_Th33Go@@t$$";
    printf("Is Sasuke better than Naruto?? ");
    fflush(stdout);
    gets(buffer);
    if(key == 0xdeadbeef){
        printf("Are you dumb???!!\n");
        printf("%04x\n", key);
        printf("oops?? %s", pass);
        fflush(stdout);
    }
    else{
        printf("%04x\n", key);
        printf("...\n");
        fflush(stdout);
    }
}

int main(int argc, char* argv[]){
    do_input();
    return 0;
}