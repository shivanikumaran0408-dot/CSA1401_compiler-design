%{
#include <stdio.h>

int spaces = 0;
int newlines = 0;
%}

%%
" "         { spaces++; }
"\n"        { newlines++; }
.           ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the text:\n");
    yylex();

    printf("\nNumber of Whitespaces = %d\n", spaces);
    printf("Number of Newlines = %d\n", newlines);

    return 0;
}
