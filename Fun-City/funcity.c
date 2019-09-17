#include <stdio.h>
#include <string.h>
void main() {
    printf("    ███████╗██╗   ██╗███╗   ██╗     ██████╗██╗████████╗██╗   ██╗        \n");
    printf("    ██╔════╝██║   ██║████╗  ██║    ██╔════╝██║╚══██╔══╝╚██╗ ██╔╝        \n");
    printf("    █████╗  ██║   ██║██╔██╗ ██║    ██║     ██║   ██║    ╚████╔╝         \n");
    printf("    ██╔══╝  ██║   ██║██║╚██╗██║    ██║     ██║   ██║     ╚██╔╝          \n");
    printf("    ██║     ╚██████╔╝██║ ╚████║    ╚██████╗██║   ██║      ██║           \n");
    printf("    ╚═╝      ╚═════╝ ╚═╝  ╚═══╝     ╚═════╝╚═╝   ╚═╝      ╚═╝           \n");
    printf("                                                 *******                \n");
    printf("                                 ~             *---*******              \n");
    printf("                                ~             *-----*******             \n");
    printf("                         ~                   *-------*******            \n");
    printf("                        __      _   _!__     *-------*******            \n");    
    printf("                   _   /  \\_  _/ \\  |::| ___ **-----********   ~      \n");
    printf("                 _/ \\_/^    \\/   ^\\/|::|\\|:|  **---*****/^\\_       \n");
    printf("              /\\/  ^ /  ^    / ^ ___|::|_|:|_/\\_******/  ^  \\        \n");    
    printf("             /  \\  _/ ^ ^   /    |::|--|:|---|  \\__/  ^     ^\\___    \n");
    printf("           _/_^  \\/  ^    _/ ^   |::|::|:|-::| ^ /_  ^    ^  ^   \\_   \n");
    printf("          /   \\^ /    /\\ /       |::|--|:|:--|  /  \\        ^      \\\n");
    printf("         /     \\/    /  /        |::|::|:|:-:| / ^  \\  ^      ^     \\\n");
    printf("   _Q   / _Q  _Q_Q  / _Q    _Q   |::|::|:|:::|/    ^ \\   _Q      ^     \n");
    printf("  /_\\)   /_\\)/_/\\\\)  /_\\)  /_\\)  |::|::|:|:::|          /_\\)     \n");
    printf("_O|/O___O|/O_OO|/O__O|/O__O|/O__________________________O|/O__________  \n");
    printf("//////////////////////////////////////////////////////////////////////  \n");

    printf("Enter your password to fun: ");
    char pass[31];
    fgets(pass,31,stdin);
    strtok(pass,"\n"); //remove trailing newline char
    printf("You entered: %s\n\n",pass);
    int i;
    int j = 0;
    char* notflag = "\x0a\x10\x1a\x00\x0d\x02\x0d\x04\x1f\x18\x0c\x1c\x15\x2a\x02\x03\x0a\x1f\x2c\x0e\x0e\x04\x3a\x00\x1b\x1f\x0c\x08\x12\x1d\x11";
    char output[31];
    if (strcmp(pass, "letshavesomefun") == 0) {
        //xor
        for (i=0; i<31; i++) {
            char temp = pass[j] ^ notflag[i];
            j += 1;
            if (j == 15) j = 0;
            output[i] = temp;
        }
        output[i] = '\0';
        printf("%s\n\n", output);
    }
    else { 
        printf("Try again!\n\n");
    }
}