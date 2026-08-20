package antlr.preprocessor;

import antlr.ANTLRException;
import antlr.TokenStreamException;
import antlr.collections.impl.IndexedVector;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Enumeration;
import java.util.Hashtable;
/* loaded from: classes.dex */
public class Hierarchy {
    protected Grammar LexerRoot;
    protected Grammar ParserRoot;
    protected Grammar TreeParserRoot;
    protected antlr.Tool antlrTool;
    protected Hashtable symbols = new Hashtable(10);
    protected Hashtable files = new Hashtable(10);

    public Hierarchy(antlr.Tool tool) {
        this.LexerRoot = null;
        this.ParserRoot = null;
        this.TreeParserRoot = null;
        this.antlrTool = tool;
        this.LexerRoot = new Grammar(tool, "Lexer", null, null);
        this.ParserRoot = new Grammar(tool, "Parser", null, null);
        this.TreeParserRoot = new Grammar(tool, "TreeParser", null, null);
        this.LexerRoot.setPredefined(true);
        this.ParserRoot.setPredefined(true);
        this.TreeParserRoot.setPredefined(true);
        this.symbols.put(this.LexerRoot.getName(), this.LexerRoot);
        this.symbols.put(this.ParserRoot.getName(), this.ParserRoot);
        this.symbols.put(this.TreeParserRoot.getName(), this.TreeParserRoot);
    }

    public void addGrammar(Grammar grammar) {
        grammar.setHierarchy(this);
        this.symbols.put(grammar.getName(), grammar);
        getFile(grammar.getFileName()).addGrammar(grammar);
    }

    public void addGrammarFile(GrammarFile grammarFile) {
        this.files.put(grammarFile.getName(), grammarFile);
    }

    public void expandGrammarsInFile(String str) {
        Enumeration elements = getFile(str).getGrammars().elements();
        while (elements.hasMoreElements()) {
            ((Grammar) elements.nextElement()).expandInPlace();
        }
    }

    public Grammar findRoot(Grammar grammar) {
        Grammar superGrammar;
        return (grammar.getSuperGrammarName() == null || (superGrammar = grammar.getSuperGrammar()) == null) ? grammar : findRoot(superGrammar);
    }

    public GrammarFile getFile(String str) {
        return (GrammarFile) this.files.get(str);
    }

    public Grammar getGrammar(String str) {
        return (Grammar) this.symbols.get(str);
    }

    public static String optionsToString(IndexedVector indexedVector) {
        String stringBuffer = new StringBuffer("options {").append(System.getProperty("line.separator")).toString();
        Enumeration elements = indexedVector.elements();
        while (elements.hasMoreElements()) {
            stringBuffer = new StringBuffer().append(stringBuffer).append((Option) elements.nextElement()).append(System.getProperty("line.separator")).toString();
        }
        return new StringBuffer().append(stringBuffer).append("}").append(System.getProperty("line.separator")).append(System.getProperty("line.separator")).toString();
    }

    public void readGrammarFile(String str) throws FileNotFoundException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
        addGrammarFile(new GrammarFile(this.antlrTool, str));
        PreprocessorLexer preprocessorLexer = new PreprocessorLexer(bufferedReader);
        preprocessorLexer.setFilename(str);
        Preprocessor preprocessor = new Preprocessor(preprocessorLexer);
        preprocessor.setTool(this.antlrTool);
        preprocessor.setFilename(str);
        try {
            preprocessor.grammarFile(this, str);
        } catch (TokenStreamException e2) {
            this.antlrTool.toolError(new StringBuffer("Token stream error reading grammar(s):\n").append(e2).toString());
        } catch (ANTLRException e3) {
            this.antlrTool.toolError(new StringBuffer("error reading grammar(s):\n").append(e3).toString());
        }
    }

    public boolean verifyThatHierarchyIsComplete() {
        Enumeration elements = this.symbols.elements();
        boolean z = true;
        while (elements.hasMoreElements()) {
            Grammar grammar = (Grammar) elements.nextElement();
            if (grammar.getSuperGrammarName() != null && grammar.getSuperGrammar() == null) {
                this.antlrTool.toolError(new StringBuffer("grammar ").append(grammar.getSuperGrammarName()).append(" not defined").toString());
                this.symbols.remove(grammar.getName());
                z = false;
            }
        }
        if (z) {
            Enumeration elements2 = this.symbols.elements();
            while (elements2.hasMoreElements()) {
                Grammar grammar2 = (Grammar) elements2.nextElement();
                if (grammar2.getSuperGrammarName() != null) {
                    grammar2.setType(findRoot(grammar2).getName());
                }
            }
            return true;
        }
        return false;
    }

    public antlr.Tool getTool() {
        return this.antlrTool;
    }

    public void setTool(antlr.Tool tool) {
        this.antlrTool = tool;
    }
}
