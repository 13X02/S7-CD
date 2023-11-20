%{
#include <stdio.h>
int is_palindrome = 1;
%}

%token A B END

%%
input: symbols END { if (is_palindrome) printf("It's a palindrome.\n"); else printf("It's not a palindrome.\n"); }
     ;

symbols: 
  | symbols A symbols A { }
  | symbols B symbols B { }
  | /* empty */
  ;
%%
int main() {
    yyparse();
    return 0;
}

int yyerror(const char *s) {
    is_palindrome = 0;
    fprintf(stderr, "Error: %s\n", s);
    return 1;
}
