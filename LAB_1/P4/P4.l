%{

#include<stdio.h>
int t_lines = 1;
int t_characters = 0;

%}

%%
[A-Za-z0-9]         {t_characters++;}
[\n]                {t_lines++;}
.                   ;
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

printf("\nNumber of Characters : %d\n",t_characters);
printf("\nNumber of Lines : %d\n",t_lines);

return 0;
}