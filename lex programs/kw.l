%{
#include <stdio.h>
%}

%%
if|else|while|for|do|return|break|continue|switch|case|default|goto|int|float|double { printf("Keyword: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* { printf("Identifier: %s\n", yytext); }
[0-9]+ { printf("Number: %s\n", yytext); }
[+\-*/%] { printf("Operator: %s\n", yytext); }
[ \t]+ {}; // Ignore whitespace (including tabs)
[\n]+ {}; // Ignore newlines
. {printf("Special Character: %s\n",yytext);} // Ignore any other characters

%%

int main() {
    yylex();
    return 0;
}


int yywrap(){
    return 1;
}
