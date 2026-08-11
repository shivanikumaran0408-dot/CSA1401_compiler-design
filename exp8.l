%{
#include <stdio.h>
%}

%%
S       { printf("FOLLOW(S) = { $ }\n"); }
A       { printf("FOLLOW(A) = { a, b }\n"); }
B       { printf("FOLLOW(B) = { a, b }\n"); }
[ \t\n]+ ;
.       { printf("Invalid symbol\n"); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Grammar:\n");
    printf("S -> AaAb | BbBa\n");
    printf("A -> epsilon\n");
    printf("B -> epsilon\n\n");

    printf("Enter Non-Terminal (S/A/B): ");
    yylex();

    return 0;
}
