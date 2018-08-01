%{
int vowel=0,cons=0;
%}

%%
[aeiou] {vowel++;}
[^aeiou^" "\n^]+ {cons++;}
%%


main()
{
	FILE *fp;
	char file[10];
	printf("enter filename : ");
	scanf("%s",file);
	fp=fopen(file,"r");
	yyin=fp;
	yylex();
	printf("\n VOWELS=%d \n CONSONANT=%d",vowel,cons);
}

int yywrap()
{
return 1;
}

