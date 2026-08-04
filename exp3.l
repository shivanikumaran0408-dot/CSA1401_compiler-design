%{
#include <stdio.h>
%}

%%
"//".*                              ;    

"/*"([^*]|\*+[^*/])*\*+"/"          ;    

[ \t\n]+                            ;    

[a-zA-Z_][a-zA-Z0-9_]*              { printf("Token: %s\n", yytext); }

.                                   ;    
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the input:\n");
    yylex();
    return 0;
}
