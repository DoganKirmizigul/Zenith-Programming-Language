newprog: zenith.l
	lex zenith.l
	gcc -o zenith lex.yy.c -ll

clean:
	rm zenith lex.yy.c
