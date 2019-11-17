package language;

%%

%public
%class Language

%unicode

%line
%column
%char
%type JavaScriptType

%{

%}

/* main character classes */
LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]

WhiteSpace = {LineTerminator} | [ \t\f]

/* comments */
Comment = {TraditionalComment} | {EndOfLineComment} | 
          {DocumentationComment}

TraditionalComment = "/*" [^*] ~"*/" | "/*" "*"+ "/"
EndOfLineComment = "//" {InputCharacter}* {LineTerminator}?
DocumentationComment = "/*" "*"+ [^/*] ~"*/"

/* identifiers  */
Identifier = [:jletter:][:jletterdigit:]*

/* integer literals */
DecIntegerLiteral = 0 | [1-9][0-9]*
DecLongLiteral    = {DecIntegerLiteral} [lL]

HexIntegerLiteral = 0 [xX] 0* {HexDigit} {1,8}
HexLongLiteral    = 0 [xX] 0* {HexDigit} {1,16} [lL]
HexDigit          = [0-9a-fA-F]

OctIntegerLiteral = 0+ [1-3]? {OctDigit} {1,15}
OctLongLiteral    = 0+ 1? {OctDigit} {1,21} [lL]
OctDigit          = [0-7]
    
/* floating point literals */        
FloatLiteral  = ({FLit1}|{FLit2}|{FLit3}) {Exponent}? [fF]
DoubleLiteral = ({FLit1}|{FLit2}|{FLit3}) {Exponent}?

FLit1    = [0-9]+ \. [0-9]* 
FLit2    = \. [0-9]+ 
FLit3    = [0-9]+ 
Exponent = [eE] [+-]? [0-9]+

/* string and character literals */
StringCharacter = [^\r\n\"\\]
SingleCharacter = [^\r\n\'\\]



%state STRING, CHARLITERAL

%%

<YYINITIAL> {

  /* keywords */
	"abstract"                         { return JavaScriptType.KEYWORD; }
	"arguments"                         { return JavaScriptType.KEYWORD; }
	"boolean"                         { return JavaScriptType.KEYWORD; }
	"break"                         { return JavaScriptType.KEYWORD; }
	"byte"                         { return JavaScriptType.KEYWORD; }
	"case"                         { return JavaScriptType.KEYWORD; }
	"catch"                         { return JavaScriptType.KEYWORD; }
	"char"                         { return JavaScriptType.KEYWORD; }
	"class"                         { return JavaScriptType.KEYWORD; }
	"const"                         { return JavaScriptType.KEYWORD; }
	"continue"                         { return JavaScriptType.KEYWORD; }
	"debugger"                         { return JavaScriptType.KEYWORD; }
	"default"                         { return JavaScriptType.KEYWORD; }
	"delete"                         { return JavaScriptType.KEYWORD; }
	"do"                         { return JavaScriptType.KEYWORD; }
	"double"                         { return JavaScriptType.KEYWORD; }
	"else"                         { return JavaScriptType.KEYWORD; }
	"enum"                         { return JavaScriptType.KEYWORD; }
	"eval"                         { return JavaScriptType.KEYWORD; }
	"export"                         { return JavaScriptType.KEYWORD; }
	"extends"                         { return JavaScriptType.KEYWORD; }
	"false"                         { return JavaScriptType.KEYWORD; }
	"final"                         { return JavaScriptType.KEYWORD; }
	"finally"                         { return JavaScriptType.KEYWORD; }
	"float"                         { return JavaScriptType.KEYWORD; }
	"for"                         { return JavaScriptType.KEYWORD; }
	"function"                         { return JavaScriptType.KEYWORD; }
	"goto"                         { return JavaScriptType.KEYWORD; }
	"if"                         { return JavaScriptType.KEYWORD; }
	"implements"                         { return JavaScriptType.KEYWORD; }
	"import"                         { return JavaScriptType.KEYWORD; }
	"in"                         { return JavaScriptType.KEYWORD; }
	"instanceof"                         { return JavaScriptType.KEYWORD; }
	"int"                         { return JavaScriptType.KEYWORD; }
	"interface"                         { return JavaScriptType.KEYWORD; }
	"let"                         { return JavaScriptType.KEYWORD; }
	"long"                         { return JavaScriptType.KEYWORD; }
	"native"                         { return JavaScriptType.KEYWORD; }
	"new"                         { return JavaScriptType.KEYWORD; }
	"null"                         { return JavaScriptType.KEYWORD; }
	"package"                         { return JavaScriptType.KEYWORD; }
	"private"                         { return JavaScriptType.KEYWORD; }
	"protected"                         { return JavaScriptType.KEYWORD; }
	"public"                         { return JavaScriptType.KEYWORD; }
	"return"                         { return JavaScriptType.KEYWORD; }
	"short"                         { return JavaScriptType.KEYWORD; }
	"static"                         { return JavaScriptType.KEYWORD; }
	"super"                         { return JavaScriptType.KEYWORD; }
	"switch"                         { return JavaScriptType.KEYWORD; }
	"synchronized"                         { return JavaScriptType.KEYWORD; }
	"this"                         { return JavaScriptType.KEYWORD; }
	"throw"                         { return JavaScriptType.KEYWORD; }
	"throws"                         { return JavaScriptType.KEYWORD; }
	"transient"                         { return JavaScriptType.KEYWORD; }
	"true"                         { return JavaScriptType.KEYWORD; }
	"try"                         { return JavaScriptType.KEYWORD; }
	"typeof"                         { return JavaScriptType.KEYWORD; }
	"var"                         { return JavaScriptType.KEYWORD; }
	"void"                         { return JavaScriptType.KEYWORD; }
	"volatile"                         { return JavaScriptType.KEYWORD; }
	"while"                         { return JavaScriptType.KEYWORD; }
	"with"                         { return JavaScriptType.KEYWORD; }
	"yield"							{ return JavaScriptType.KEYWORD; }


  /* separators  */
    "("                            { return JavaScriptType.LPAREN; }
  ")"                            { return JavaScriptType.RPAREN; }
  "{"                            { return JavaScriptType.LBRACE; }
  "}"                            { return JavaScriptType.RBRACE; }
  "["                            { return JavaScriptType.LBRACK; }
  "]"                            { return JavaScriptType.RBRACK; }
  ";"                            { return JavaScriptType.SEMICOLON; }
  ","                            { return JavaScriptType.COMMA; }
  "."                            { return JavaScriptType.DOT; }

  /* operators  */
  "="                            { return JavaScriptType.OPERATOR; }
  ">"                            { return JavaScriptType.OPERATOR; }
  "<"                            { return JavaScriptType.OPERATOR; }
  "!"                            { return JavaScriptType.OPERATOR; }
  "~"                            { return JavaScriptType.OPERATOR; }
  "?"                            { return JavaScriptType.OPERATOR; }
  ":"                            { return JavaScriptType.OPERATOR; }
  "=="                           { return JavaScriptType.OPERATOR; }
  "<="                           { return JavaScriptType.OPERATOR; }
  ">="                           { return JavaScriptType.OPERATOR; }
  "!="                           { return JavaScriptType.OPERATOR; }
  "&&"                           { return JavaScriptType.OPERATOR; }
  "||"                           { return JavaScriptType.OPERATOR; }
  "++"                           { return JavaScriptType.OPERATOR; }
  "--"                           { return JavaScriptType.OPERATOR; }
  "+"                            { return JavaScriptType.OPERATOR; }
  "-"                            { return JavaScriptType.OPERATOR; }
  "*"                            { return JavaScriptType.OPERATOR; }
  "/"                            { return JavaScriptType.OPERATOR; }
  "&"                            { return JavaScriptType.OPERATOR; }
  "|"                            { return JavaScriptType.OPERATOR; }
  "^"                            { return JavaScriptType.OPERATOR; }
  "%"                            { return JavaScriptType.OPERATOR; }
  "<<"                           { return JavaScriptType.OPERATOR; }
  ">>"                           { return JavaScriptType.OPERATOR; }
  ">>>"                          { return JavaScriptType.OPERATOR; }
  "+="                           { return JavaScriptType.OPERATOR; }
  "-="                           { return JavaScriptType.OPERATOR; }
  "*="                           { return JavaScriptType.OPERATOR; }
  "/="                           { return JavaScriptType.OPERATOR; }
  "&="                           { return JavaScriptType.OPERATOR; }
  "|="                           { return JavaScriptType.OPERATOR; }
  "^="                           { return JavaScriptType.OPERATOR; }
  "%="                           { return JavaScriptType.OPERATOR; }
  "<<="                          { return JavaScriptType.OPERATOR; }
  ">>="                          { return JavaScriptType.OPERATOR; }
  ">>>="                         { return JavaScriptType.OPERATOR; }
  
  /* string literal */
   \"                             { yybegin(STRING); return JavaScriptType.STRING;}

  /* character literal */
  \'                             { yybegin(CHARLITERAL);return JavaScriptType.CHARACTER_LITERAL; }

  /* numeric literals */

  /* This is matched together with the minus, because the number is too big to 
     be represented by a positive integer. */
  
  {DecIntegerLiteral}            { return JavaScriptType.INTEGER_LITERAL; }
  {DecLongLiteral}               { return JavaScriptType.INTEGER_LITERAL; }
  
  {HexIntegerLiteral}            { return JavaScriptType.INTEGER_LITERAL; }
  {HexLongLiteral}               { return JavaScriptType.INTEGER_LITERAL; }
 
  {OctIntegerLiteral}            { return JavaScriptType.INTEGER_LITERAL; }  
  {OctLongLiteral}               { return JavaScriptType.INTEGER_LITERAL; }
  
  {FloatLiteral}                 { return JavaScriptType.FLOATING_POINT_LITERAL; }
  {DoubleLiteral}                { return JavaScriptType.FLOATING_POINT_LITERAL; }
  {DoubleLiteral}[dD]            { return JavaScriptType.FLOATING_POINT_LITERAL; }
  
  /* comments */
  {Comment}                      { return JavaScriptType.COMMENT; }

  /* whitespace  */
  {WhiteSpace}                   { return JavaScriptType.WHITE_SPACE; }

  /* identifiers */ 
  {Identifier}                   { return JavaScriptType.IDENTIFIER; } 
  

}

<STRING> {
    \"                             { yybegin(YYINITIAL);return JavaScriptType.STRING;}
  
  {StringCharacter}+             	{  return JavaScriptType.STRING;}
  \\.				            	 {  return JavaScriptType.STRING;}
  {LineTerminator}             	    { throw new RuntimeException("Unterminated string at end of line"); }
}

<CHARLITERAL> {
   \'							{yybegin(YYINITIAL);return JavaScriptType.CHARACTER_LITERAL;}
  {SingleCharacter}+         	{  return JavaScriptType.CHARACTER_LITERAL; }
   \\.				            {  return JavaScriptType.CHARACTER_LITERAL;}
  {LineTerminator}              { throw new RuntimeException("Unterminated character literal at end of line"); }
}

/* error fallback */
[^]                              { throw new RuntimeException("Illegal character \""+yytext()+
                                                              "\" at line "+yyline+", column "+yycolumn); }
<<EOF>>                          { return JavaScriptType.EOF; }