%{
    #include<stdio.h>
    #include<stdlib.h>

    FILE *fp;
    int p =0;
    int s =0;

%}

%%
"printf" {p++;}
"scanf" {s++;}
. {}
%%

int main(){

    fp = fopen("ip.txt","r");
    yyin = fp;
    yylex();
    printf("%d %d",p,s);
    return 0;
}

int yywrap(){
    return 1;
}