%{ 
/* Definition section */
#include<stdio.h> 
int flag=0; 
%} 

%token NUMBER 

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

/* Rule Section */
%% 

ArithmeticExpression: E{ 

        printf("\nResult=%d\n", $$); 

		return 0; 

		}; 
E:E'+'E {$$=$1+$3;} 

|E'-'E {$$=$1-$3;} 

|E'*'E {$$=$1*$3;} 

|E'/'E {$$=$1/$3;} 

|E'%'E {$$=$1%$3;} 

|'('E')' {$$=$2;} 

| NUMBER {$$=$1;} 

; 

%% 

//driver code 
void main() 
{ 
printf("\nEnter Any Arithmetic Expression which can have operations Addition, Subtraction, Multiplication, Division, Modulus and Round brackets:\n"); 

int yyparse(); 
if(flag==0) 
printf("\nEntered arithmetic expression is Valid\n\n"); 
} 

int yyerror(char*) 
{ 
printf("\nEntered arithmetic expression is Invalid\n\n"); 
} 
