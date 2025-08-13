%{
#include "fb1-5.tab.h"
%}

%%
"+"	{ return ADD; }
"-"	{ return SUB; }
"*"	{ return MUL; }
"/"	{ return DIV; }
"|"     { return ABS; }
"("     { return OP; }
")"     { return CP; }
[0-9]+	{ yylval = (int)atoi(yytext); return NUMBER; }

\n      { return EOL; }
"//".*   { /* ignore comments */ }
[ \t]   { /* ignore white space */ }
.	{ char msg[64]; snprintf(msg, sizeof(msg), "Mystery character %c\n", *yytext); yyerror(msg); }
%%