%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

"var"                   { printf("KEYWORD_VAR\n"); }
"if"                    { printf("KEYWORD_IF\n"); }
"then"                  { printf("KEYWORD_THEN\n"); }
"else"                  { printf("KEYWORD_ELSE\n"); }
"while"                 { printf("KEYWORD_WHILE\n"); }
"do"                    { printf("KEYWORD_DO\n"); }
"print"                 { printf("KEYWORD_PRINT\n"); }
"scan"                  { printf("KEYWORD_SCAN\n"); }
"not"                   { printf("LOGICAL_NOT\n"); }
"and"                   { printf("LOGICAL_AND\n"); }
"or"                    { printf("LOGICAL_OR\n"); }
"true"                  { printf("BOOLEAN_TRUE\n"); }
"false"                 { printf("BOOLEAN_FALSE\n"); }
"=="                    { printf("LOGICAL_EQUALS\n"); }
"!="                    { printf("LOGICAL_NOT_EQUALS\n"); }
"<"                     { printf("LOGICAL_LESS_THAN\n"); }
">"                     { printf("LOGICAL_GREATER_THAN\n"); }
"<="                    { printf("LOGICAL_LESS_THAN_OR_EQUAL\n"); }
">="                    { printf("LOGICAL_GREATER_THAN_OR_EQUAL\n"); }
"+"                     { printf("OPERATOR_PLUS\n"); }
"-"                     { printf("OPERATOR_MINUS\n"); }
"*"                     { printf("OPERATOR_MULTIPLY\n"); }
"/"                     { printf("OPERATOR_DIVIDE\n"); }
"="                     { printf("ASSIGNMENT\n"); }
";"                     { printf("SEMICOLON\n"); }
"("                     { printf("LEFT_PAREN\n"); }
")"                     { printf("RIGHT_PAREN\n"); }
"'"([^'\n]|"\\'"')*"'"   { printf("CHARACTER: %s\n", yytext); }
"\""([^\"\n]|"\\\"")*"\""   { printf("STRING: %s\n", yytext); }
"//"(.*)                { printf("COMMENT: %s\n", yytext); }

%%




int main(int argc, char* argv[]) {
    if (argc != 2) {
        printf("Usage: %s <input_file>\n", argv[0]);
        return 1;
    }

    FILE* input_file = fopen(argv[1], "r");
    if (!input_file) {
        printf("Error opening file.\n");
        return 1;
    }

    yyin = input_file;
    yylex();

    fclose(input_file);
    return 0;
}


