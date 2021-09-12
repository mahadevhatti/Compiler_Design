%{

#include<stdio.h>

%}

%%

[\t" "]+         {fprintf(yyout," ");}
.|\n             {fprintf(yyout,"%s",yytext);}

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

yyout=fopen("output.txt","w");

yylex();

return 0;
}