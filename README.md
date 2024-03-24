# Programming Language: Zenith the New One
 ```
Group Members: 
Doğan KIRMIZIGÜL 
Betül YILDIZ
Ömer ASLAN

 ```

## Grammar in BNF Form
 ```

<program> ::= <statements>

<statements> ::= <statement> | <statements> <statement>

<statement> ::= KEYWORD_VAR IDENTIFIER ASSIGNMENT <expression> SEMICOLON
              | KEYWORD_IF LEFT_PAREN <expression> RIGHT_PAREN KEYWORD_THEN <statements> KEYWORD_ELSE <statements>
              | KEYWORD_WHILE LEFT_PAREN <expression> RIGHT_PAREN KEYWORD_DO <statements>
              | KEYWORD_PRINT LEFT_PAREN <expression> RIGHT_PAREN SEMICOLON
              | KEYWORD_SCAN LEFT_PAREN IDENTIFIER RIGHT_PAREN SEMICOLON
              | COMMENT
              ;

<expression> ::= <expression> OPERATOR_PLUS <expression>
               | <expression> OPERATOR_MINUS <expression>
               | <expression> OPERATOR_MULTIPLY <expression>
               | <expression> OPERATOR_DIVIDE <expression>
               | <expression> LOGICAL_EQUALS <expression>
               | <expression> LOGICAL_NOT_EQUALS <expression>
               | <expression> LOGICAL_LESS_THAN <expression>
               | <expression> LOGICAL_GREATER_THAN <expression>
               | <expression> LOGICAL_LESS_THAN_OR_EQUAL <expression>
               | <expression> LOGICAL_GREATER_THAN_OR_EQUAL <expression>
               | LEFT_PAREN <expression> RIGHT_PAREN
               | INTEGER
               | FLOAT
               | IDENTIFIER
               | CHARACTER
               | STRING
               | BOOLEAN_TRUE
               | BOOLEAN_FALSE
               | LOGICAL_NOT <expression>
               | <expression> LOGICAL_AND <expression>
               | <expression> LOGICAL_OR <expression>
               ;

 ```
## Syntax
# Keywords
 ```
VAR                         KEYWORD_VAR

IF                          KEYWORD_IF

THEN                        KEYWORD_THEN

ELSE                        KEYWORD_ELSE

WHILE                       KEYWORD_WHILE

DO                          KEYWORD_DO

PRINT                       KEYWORD_PRINT

SCAN                        KEYWORD_SCAN
 ```


# Operators
 ```

+                           OPERATOR_PLUS

-                           OPERATOR_MINUS

*                           OPERATOR_MULTIPLY

/                           OPERATOR_DIVIDE

==                          LOGICAL_EQUALS

!=                          LOGICAL_NOT_EQUALS

<                           LOGICAL_LESS_THAN

>                           LOGICAL_GREATER_THAN

<=                          LOGICAL_LESS_THAN_OR_EQUAL

>=                          LOGICAL_GREATER_THAN_OR_EQUAL

 ```

# Delimiters
 ```

=                           ASSIGNMENT

;                           SEMICOLON

(                           LEFT_PAREN

)                           RIGHT_PAREN
 ```

# Data Types
 ```

INTEGER                     INTEGER

FLOAT                       FLOAT

IDENTIFIER                  IDENTIFIER

CHARACTER                   CHARACTER

STRING                      STRING

BOOLEAN_TRUE                BOOLEAN_TRUE

BOOLEAN_FALSE               BOOLEAN_FALSE
 ```


# Conditions
 ```

IF                          CONDITION_IF

THEN                        CONDITION_THEN

ELSE                        CONDITION_ELSE

WHILE                       CONDITION_WHILE

DO                          CONDITION_DO
 ```

# IO
 ```

PRINT                       IO_PRINT

SCAN                        IO_SCAN
 ```


# Logic
 ```
AND                         LOGIC_AND

OR                          LOGIC_OR

NOT                         LOGIC_NOT
 ```

# Paranthesis
 ```

(                           PARANTHESIS_OPEN

)                           PARANTHESIS_CLOSE
 ```

# Function
 ```
FUNC                        FUNCTION

RETURN                      RETURN
 ```


# Literal
 ```

INTEGER                     LITERAL_INTEGER

FLOAT                       LITERAL_FLOAT

STRING                      LITERAL_STRING

CHARACTER                   LITERAL_CHARACTER

BOOLEAN_TRUE                LITERAL_BOOLEAN_TRUE

BOOLEAN_FALSE               LITERAL_BOOLEAN_FALSE
 ```

# Comment
 ```

//                          COMMENT
 ```

# Identifier
 ```

[a-zA-Z][a-zA-Z0-9_]*      IDENTIFIER
 ```


## Explanations about the language
 ```

- Zenith language have ```.znt``` file extension. 

- Zenith performs operations with operator signs, thus preventing typos and confusion by using alphabetical words. 
  ```(ex: x <=111 )```
  ```(not lte x 111 )```
  

- Zenith uses parentheses to express variables.
  ```(ex: func sub(a,b))```

- Zenith has conditions like if, else, do, while.

- Zenith uses letters of the Latin alphabet and all numbers for descriptions and data. In this way, it has a very wide definition range.
   ```(ex: var aZx1 = 'it is a variable')```

- Example usage of Zenith:

var x = 10; // Variable declaration

var y = 5;

func add(a, b) { // Function declaration
    var result = a + b;
    print result; // Print statement
}
if (x > y) { // If statement
    print "x is greater than y";
} else { // Else statement
    print "y is greater than x";
}
while (x > 0) { // While loop
    print x;
    x = x - 1;
}

 ```

- Commands to run example programs;
./zenith example.znt
./zenith example2.znt