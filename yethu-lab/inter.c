#include <stdio.h>
#include <string.h>
char op[2],a1[10],a2[10],res[10];


int main(){

    FILE *fp1 , *fp2;

    fp1 = fopen("input.txt","r");
    fp2 = fopen("output.txt","w");

    while(!feof(fp1)){

        fscanf(fp1,"%s%s%s%s",op,a1,a2,res);

        if (strcmp(op,"+")==0){
            fprintf(fp2,"MOV R0,%s",a1);

        }


        
    }


}