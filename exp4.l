%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
"+"     { printf("+ : Addition Operator\n"); }
"-"     { printf("- : Subtraction Operator\n"); }
"*"     { printf("* : Multiplication Operator\n"); }
"/"     { printf("/ : Division Operator\n"); }

[ \t\n]+    ;   +

.       { printf("%s : Invalid Operator\n", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter arithmetic operators:\n");
    yylex();
    return 0;
}
