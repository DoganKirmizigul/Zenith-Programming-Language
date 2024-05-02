%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
%}

%token INTEGER FLOAT IDENTIFIER EQ NE LT GT LE GE IF ELSE WHILE DO FOR FUNCTION TRY CATCH FORK JOIN COMMENT

%%

program              : statement_list

statement_list       : statement
                     | statement_list statement

statement            : assignment_statement
                     | conditional_statement
                     | loop_statement
                     | function_declaration
                     | exception_handling_statement
                     | concurrency_statement
                     | COMMENT

assignment_statement : IDENTIFIER '=' expression ';'

conditional_statement : IF '(' condition ')' '{' statement_list '}' ELSE '{' statement_list '}'
                      | IF '(' condition ')' '{' statement_list '}'

loop_statement       : WHILE '(' condition ')' '{' statement_list '}'
                      | DO '{' statement_list '}' WHILE '(' condition ')' ';'

function_declaration : FUNCTION IDENTIFIER '(' parameter_list ')' '{' statement_list '}'

exception_handling_statement : TRY '{' statement_list '}' CATCH '(' IDENTIFIER ')' '{' statement_list '}'

concurrency_statement : FORK '{' statement_list '}' JOIN ';'

condition            : expression relational_operator expression

relational_operator  : EQ | NE | LT | GT | LE | GE

expression           : term
                     | expression '+' term
                     | expression '-' term

term                 : factor
                     | term '*' factor
                     | term '/' factor

factor               : INTEGER
                     | FLOAT
                     | IDENTIFIER
                     | '(' expression ')'

parameter_list       : /* empty */
                     | parameter_list ',' parameter

parameter            : IDENTIFIER

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
    exit(1);
}

