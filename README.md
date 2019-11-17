# Analisador Léxico de JavaScript

Este analisador foi escrito em Java, utilizando a biblioteca de geração de linguagem para análise léxica JFLEX, e analisa código escrito em JavaScript, analisando e informando o que foi utilizado e o que deve ser utilizado ou não nesta linguagem.

## Utilização

O arquivo para alteração das lexemas é o arquivo que se encontra em src/language/language.lex

Lá podemos adicionar várias regras e retornos.

1. A primeira coisa a ser feita é gerar a classe da linguagem, basta executar o arquivo /src/generator/Generator.java. Repare que vai ser gerado um novo arquivo chamado /src/language/Language.java.

2. Após isso, execute o arquivo /src/analyzer/Analyzer.java e verifique a saída no Console a respeito do arquivo parametrizado. Para trocar o código parametrizado, basta informar o caminho do arquivo.