# Analisador Léxico de JavaScript

Este analisador foi escrito em Java, utilizando a biblioteca de geração de linguagem para análise léxica [JFLEX](https://jflex.de/), no Eclipse IDE, e analisa código escrito em JavaScript, informando o que foi utilizado, e se é permitido para esta linguagem ou não.

## Desenvolvimento

1. Primeiramente foi preciso ter a biblioteca do JFlex instalada e configurada no projeto, eu segui o passo-a-passo [deste video](https://www.youtube.com/watch?v=WLHn5JzLx6I).

2. Após isso, importe a biblioteca .jar no projeto, a partir do Build Path, fui seguindo os passos deste link [aqui](https://johnidm.gitbooks.io/compiladores-para-humanos/content/part2/building-the-first-lexical-analyzer-with-JFlex.html)

3. Após isso, configurei a linguagem que eu queria que fosse analisada, no caso que fosse semelhante a JavaScript no arquivo de lexemas, que é o arquivo que se encontra em `/src/language/language.lex`.

Lá podemos adicionar várias regras e retornos.

4. Após isso, a segunda coisa a ser feita é gerar a classe da linguagem, basta executar o arquivo `/src/generator/Generator.java`.
Repare que vai ser gerado um novo arquivo chamado `/src/language/Language.java`.

Pronto! Seu analisador está pronto pra ser utilizado!

## Utilização

1. Após tudo isso, execute o arquivo `/src/analyzer/Analyzer.java` e verifique a saída no Console a respeito do arquivo parametrizado.

2. Para trocar o código parametrizado, basta informar o caminho do novo arquivo.
