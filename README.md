# Analisador l�xico simples

Este analisador foi escrito em Java, utilizando a biblioteca de gera��o de linguagem para an�lise l�xica JFLEX.

## Utiliza��o

O arquivo para altera��o das lexemas � o arquivo que se encontra em src/language/language.lex

L� podemos adicionar v�rias regras e retornos.

1. A primeira coisa a ser feita � gerar a classe da linguagem, basta executar o arquivo /src/generator/Generator.java. Repare que vai ser gerado um novo arquivo chamado /src/language/Language.java.

2. Ap�s isso, fa�a as corre��es necess�rias at� conseguir rodar os c�digos novamente.

3. Ap�s as corre��es, execute o arquivo /src/analyzer/Analyzer.java e verifique a sa�da no Console a respeito do c�digo parametrizado.