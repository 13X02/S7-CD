%{
    #include<stdio.h>
    int c =0;

%}

%%
[aeiouAEIOU] {}
. {c++;}
%%

int main()
{
    
    yylex();
    printf("%d",c);
    return 0;
}

int yywrap()
{
    return 1;
}