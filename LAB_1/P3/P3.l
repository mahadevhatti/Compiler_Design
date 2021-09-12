%%

.     {printf("%s", yytext);}
\n    {return 0;}

%%
 
int yywrap(){}
int main(){
 
yylex();
 
return 0;
}