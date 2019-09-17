#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long long addition(long long a, long long b) {
    unsigned long long result;
    result = a + b;
    return result;
}

void zero() {
    int c;
    FILE *file;
    file = fopen("flag.txt", "r");
    printf("\nCongrats, you've successfully broken the rules of mathematics!\n");
    printf("Here is the flag: ");
    if (file) {
        while ((c = getc(file)) != EOF)
            putchar(c);
        fclose(file);
    }
    else {
        printf("\nNo 'flags.txt' file found. If you are running this on the CTF server\n");
        printf("please let the admin know!\n\n");
    }
}

int main() {
    setbuf(stdout, NULL);  // fixes buffer issue when using ncat
    long int first, second;
    int sum;
    printf("\nTo get the flag enter 2 positive integers that have a sum of 0.\n");
    printf("\nEnter the first number: ");
    if (scanf("%lu", &first) != 1) {
        printf("ERROR: NOT A NUMBER. GOODBYE\n");
        return 1;
    }
    if (first <= 0) {
        printf("ERROR: Not a positive integer!\n");
        return 1;
    }
    printf("Enter the second number: ");
    if (scanf("%lu", &second) != 1) {
        printf("ERROR: NOT A NUMBER. GOODBYE\n");
        return 1;
    }
    if (second <= 0) {
        printf("ERROR: Not a positive integer!\n");
        return 1;
    }
    sum = addition(first, second);
    printf("%lu + %lu = %d\n",first, second, sum);
    if (sum == 0)
        zero();
    else 
        printf("That's no good!\n");
    return 0;
}


