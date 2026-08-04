%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
"//".*                          { printf("Single Line Comment\n"); exit(0); }

"/*"([^*]|\*+[^*/])*\*+"/"      { printf("Multi Line Comment\n"); exit(0); }

\n                              { /* Ignore newline */ }

.|\n                            { printf("Not a Comment\n"); exit(0); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a line: ");
    yylex();
    return 0;
}
