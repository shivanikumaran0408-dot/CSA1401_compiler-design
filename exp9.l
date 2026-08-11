%{
#include <stdio.h>
%}

%%
S[ \t]*->[ \t]*\(L\)[ \t]*\|[ \t]*a {
    printf("S -> (L) | a\n");
}

L[ \t]*->[ \t]*L,S[ \t]*\|[ \t]*S {
    printf("L -> S L'\n");
    printf("L' -> , S L' | epsilon\n");
}

[ \t\n]+ ;
. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the grammar:\n");
    yylex();

    printf("\nAfter eliminating left recursion:\n");
    printf("S  -> (L) | a\n");
    printf("L  -> S L'\n");
    printf("L' -> , S L' | epsilon\n");

    return 0;
}
