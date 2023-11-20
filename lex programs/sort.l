%{
#include <stdio.h>
#include <stdlib.h>

FILE* input_file;

int numbers[100];
int num_count = 0;
%}

%%
[0-9]+  {
    /* Store the number in an array */
    int num = atoi(yytext);
    numbers[num_count] = num;
    num_count++;
}



.  {
    /* Ignore any other characters */
}
%%

int main() {
    

    input_file = fopen("i.txt", "r");
    if (input_file == NULL) {
        perror("Error opening input file");
        return 1;
    }

    yyin = input_file;

    yylex();
        int i, j, temp;

    
    for (i = 0; i < num_count - 1; i++) {
        for (j = 0; j < num_count - i - 1; j++) {
            if (numbers[j] > numbers[j + 1]) {
                /* Swap numbers[j] and numbers[j + 1] */
                temp = numbers[j];
                numbers[j] = numbers[j + 1];
                numbers[j + 1] = temp;
            }
        }
    }

    /* Print the sorted numbers */
    for (i = 0; i < num_count; i++) {
        printf("%d\n", numbers[i]);
    }

    fclose(input_file);
    return 0;
}
int yywrap()
{
    
    return 1;
}