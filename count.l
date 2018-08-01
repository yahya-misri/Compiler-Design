
%{
int wc=0,nc=0,lin=0,ch=0;
%}

%%
[a-zA-z]+ {wc++;printf("word");}
[0-9]+ {nc++;printf("number");}
[.] 	
[\n]+ {lin++;}
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
	printf("\n word=%d \n number=%d \n Line=%d Char=%d",wc,nc,lin,ch);
}

int yywrap()
{
return 1;
}

