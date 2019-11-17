package analyzer;

import java.io.IOException;
import java.io.StringReader;
import language.*;

public class Analyzer {

    public static void main(String[] args) throws IOException {

        String expr = "if 2 + 3+a then";

        Language lexical = new Language(new StringReader(expr));
        lexical.yylex();

    }
	
}
