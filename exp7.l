%{
#include <stdio.h>
%}

%%
S       { printf("FIRST(S) = { a, b }\n"); }
A       { printf("FIRST(A) = { epsilon }\n"); }
B       { printf("FIRST(B) = { epsilon }\n"); }
[ \t\n]+ ;
.       { printf("Invalid symbol: %s\n", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter non-terminal (S/A/B): ");
    yylex();
    return 0;
}
