%{
#include <stdio.h>
#include <string.h>
char temp[100];
int j;
%}

%%

if|else|while|for|do|return|break|continue|switch|case|default|goto|int|float|double { printf("Keyword: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* {
    printf("Identifier: %s\n", yytext);

    strcpy(temp, yytext); // Copy yytext to temp
    j = 0;
    int isPalindrome = 1; // Assume it's a palindrome initially

    for (int i = 0, len = strlen(temp); i < len / 2; i++) {
        if (temp[i] != temp[len - i - 1]) {
            isPalindrome = 0;
            printf("Not Palindrome");// Not a palindrome
            break;
        }
    }

    if (isPalindrome) {
        printf("Palindrome Identifier: %s\n", yytext);
    }
}
[0-9]+ { printf("Number: %s\n", yytext); }
[+\-*/%] { printf("Operator: %s\n", yytext); }
[ \t]+ {}; // Ignore whitespace (including tabs)
[\n]+ {};  // Ignore newlines
. { printf("Special Character: %s\n", yytext); } // Ignore any other characters

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
