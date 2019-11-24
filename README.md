# JacasVript

# Analisador Léxico de JacasVript

Este analisador foi escrito em Java no Eclipse IDE, utilizando a biblioteca de geração de linguagem para análise léxica [JFLEX](https://jflex.de/), e analisa código escrito principalmente do tipo JacasVript, que é gerada na tipagem original do JavaScript, informando o que foi utilizado, e se é permitido para esta linguagem ou não.

Como foi solicitado no enunciado do trabalho desenvolvido para a disciplina de Compiladores, a entrada é realizada no arquivo `/src/test/Testes_ScannerAAI.txt`, e obtem-se como saída o que está no arquivo `/src/test/saida.txt`.

## Desenvolvimento

1. Primeiramente foi preciso ter a biblioteca do JFlex instalada e configurada no projeto, eu segui o passo-a-passo [deste video](https://www.youtube.com/watch?v=WLHn5JzLx6I).

2. Após isso, importe a biblioteca .jar no projeto, a partir do Build Path, fui seguindo os passos deste link [aqui](https://johnidm.gitbooks.io/compiladores-para-humanos/content/part2/building-the-first-lexical-analyzer-with-JFlex.html)

3. Após isso, configurei a linguagem que eu queria que fosse analisada, no caso que fosse semelhante a JavaScript no arquivo de lexemas, que é o arquivo que se encontra em `/src/language/lexema.lex`.

Lá podemos adicionar várias regras e retornos.

4. Após isso, a segunda coisa a ser feita é gerar a classe da linguagem, basta executar o arquivo `/src/generator/Generator.java`.
Repare que vai ser gerado um novo arquivo chamado `/src/language/JacasVript.java`.

Pronto! O analisador está pronto pra ser utilizado!

## Utilização

1. Após tudo isso, execute o arquivo `/src/analyzer/Analyzer.java` e verifique a saída no Console a respeito do arquivo parametrizado que está no arquivo `/src/test/saida.txt`, ou no console da IDE.

2. Para trocar o código parametrizado, basta informar o caminho do novo arquivo, ou trocar o que se tem dentro do arquivo `/src/test/Testes_ScannerAAI.txt`.

## Observações

O arquivo do enunciado encontra-se na pasta `Enunciado` na raiz do projeto.