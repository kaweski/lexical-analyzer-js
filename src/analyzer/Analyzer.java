package analyzer;

import java.io.FileReader;
import java.io.PrintWriter;

import language.Language;
import language.JavaScriptType;

public class Analyzer {

	public static void main(String[] args) throws Exception {
		// Lê o arquivo de teste
		FileReader fileReader = new FileReader("src/test/Testes_ScannerAAI.txt");
		
		// Converte o código para o tipo que foi gerado para linguagem JavaScript
		Language lexer = new Language(fileReader);
		
		// Número de linhas
		int index = 0;
		
		// Inicializa o arquivo de saída
		PrintWriter writer = new PrintWriter("src/test/saida.txt", "UTF-8");
		
		while (true) {
			try {
				JavaScriptType type = lexer.yylex();
				
				// Sai do loop se a linha for a última
				if (type == JavaScriptType.EOF) break;
				
				int lexerLength = lexer.yytext().length();
				
				// Formata o resultado
				String target = String.format("%d: %s, word: \"%s\", length: %d", index, type.name(), lexer.yytext(), lexerLength);
				
				// Printa na tela a análise do código
				System.out.println(target);
				writer.println(target);
				
				index+=lexerLength;
				
			} catch(Exception error) {
				error.printStackTrace();
			}
		}
		
		writer.close();
	}
	
}
