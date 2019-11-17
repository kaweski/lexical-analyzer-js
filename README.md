# Analisador léxico simples

Este analisador foi escrito em Java, utilizando a biblioteca de geração de linguagem para análise léxica [JFLEX](https://jflex.de/).

## Utilização

O arquivo para alteração das lexemas é o arquivo que se encontra em `src/language/language.lex`

Lá podemos adicionar várias regras e retornos.

1. A primeira coisa a ser feita é gerar a classe da linguagem, basta executar o arquivo `/src/generator/Generator.java`. Repare que vai ser gerado um novo arquivo chamado `/src/language/Language.java`.

2. Após isso, faça as correções necessárias até conseguir rodar os códigos novamente.

3. Após as correções, execute o arquivo `/src/analyzer/Analyzer.java` e verifique a saída no Console a respeito do código parametrizado.
