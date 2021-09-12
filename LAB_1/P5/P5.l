%{

#include<stdio.h>

%}

%%

[\t" "]+         {printf(" ");}
.|\n             {printf("%s",yytext);}

%%
int yywrap() {}

int main()
{
 FILE *fp;
 char filename[50];
 printf("Enter the filename: \n");
 scanf("%s",filename);
 fp = fopen(filename,"r");
 yyin = fp;

yylex();

return 0;
}