# Analisador L�xico de JavaScript

Este analisador foi escrito em Java, utilizando a biblioteca de gera��o de linguagem para an�lise l�xica JFLEX, e analisa c�digo escrito em JavaScript, analisando e informando o que foi utilizado e o que deve ser utilizado ou n�o nesta linguagem.

## Utiliza��o

O arquivo para altera��o das lexemas � o arquivo que se encontra em src/language/language.lex

L� podemos adicionar v�rias regras e retornos.

1. A primeira coisa a ser feita � gerar a classe da linguagem, basta executar o arquivo /src/generator/Generator.java. Repare que vai ser gerado um novo arquivo chamado /src/language/Language.java.

2. Ap�s isso, execute o arquivo /src/analyzer/Analyzer.java e verifique a sa�da no Console a respeito do arquivo parametrizado. Para trocar o c�digo parametrizado, basta informar o caminho do arquivo.