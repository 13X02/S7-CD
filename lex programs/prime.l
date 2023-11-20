%{
    #include<stdio.h>
    int flag,result,i;

%}

%%
[ \t\n]+     /* Skip whitespace */
[0-9]+       {
    flag=0;
    result = 0;
    i=0;
    while (i<yyleng) {
        result = result * 10 + (yytext[i] - '0');
        i++;
    }
                int num = result;
                for(int i=2;i<num;i++){
                    if(num%i==0){
                        flag=1;
                        break;
                    }
                }
    if (flag==1){
        printf("Not prime");
    }else{
        printf("Prime");
    }
              }
.            ;
%%

int main()
{
    
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}