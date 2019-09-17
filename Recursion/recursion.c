#include <stdio.h>
#include <string.h>

void main() {
    int good = 1;
    char pass[25];

    printf("To get the flag enter the flag to get the flag: ");
    fgets(pass,25,stdin);
    strtok(pass,"\n");

    char* zero = "f";
    char* one = "u";
    char* two = "n";
    char* three = "s";
    char* four = "e";
    char* five = "c";
    char* six = "{";
    char* seven = "9";
    char* eight = "8";
    char* nine = "7";
    char* ten = "6";
    char* eleven = "5";
    char* twelve = "4";
    char* thirteen = "3";
    char* fourteen = "2";
    char* fifteen = "1";
    char* sixteen = "0";
    char* seventeen = "}";

    if (pass[0] != *zero) {
        good = 0;
    }
    if (pass[1] != *one) {
        good = 0;
    }
    if (pass[2] != *two) {
        good = 0;    
    }
    if (pass[3] != *three) {
        good = 0;
    }
    if (pass[4] != *four) {
        good = 0;
    }
    if (pass[5] != *five) {
        good = 0;
    }
    if (pass[6] != *six) {
        good = 0;
    }
    if (pass[7] != *seven) {
        good = 0;
    }
     if (pass[8] != *eight) {
        good = 0;
    }
     if (pass[9] != *nine) {
        good = 0;
    }
     if (pass[10] != *ten) {
        good = 0;
    }
     if (pass[11] != *eleven) {
        good = 0;
    }
     if (pass[12] != *twelve) {
        good = 0;
    }
     if (pass[13] != *thirteen) {
        good = 0;
    }
    if (pass[14] != *fourteen) {
        good = 0;
    }
    if (pass[15] != *fifteen) {
        good = 0;
    }
    if (pass[16] != *sixteen) {
        good = 0;
    }
    if (pass[17] != *seventeen) {
        good = 0;
    }
  
    if (good == 1) {
        printf("Good Job! The flag is: %s\n", pass);
    }
    else {
        printf("Wrong! Try again!\n");
    }
    

}