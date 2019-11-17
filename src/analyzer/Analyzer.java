package analyzer;

import java.io.FileReader;

import language.Language;
import language.JavaScriptType;

public class Analyzer {

	public static void main(String[] args) throws Exception {
		// L� o arquivo de teste
		FileReader fileReader = new FileReader("src/test/jsTestJFlex.js");
		
		// Converte o c�digo para o tipo que foi gerado para linguagem JavaScript
		Language lexer = new Language(fileReader);
		
		// N�mero de linhas
		int index = 0;
		
		while (true) {
			try {
				JavaScriptType type = lexer.yylex();
				
				// Sai do loop se a linha for a �ltima
				if (type == JavaScriptType.EOF) break;
				
				int lexerLength = lexer.yytext().length();
				
				// Formata o resultado
				String target = String.format("(%d,%s,\"%s\",%d)", index, type.name(), lexer.yytext(), lexerLength);
				
				// Printa na tela a an�lise do c�digo
				System.out.println(target);
				
				index+=lexerLength;
				
			} catch(Exception error) {
				error.printStackTrace();
			}
		}
	}
	
}
