%{
    #include<stdio.h>
    int v =0;
    int c=0;

%}

%%
[aeiouAEIOU] {v++;}

[^aeiouAEIOU \t\n] { c++; }
%%

int main()
{
    
    yylex();
    printf("Vowel :%d  Consonent: %d",v,c);
    return 0;
}

int yywrap()
{
    return 1;
}