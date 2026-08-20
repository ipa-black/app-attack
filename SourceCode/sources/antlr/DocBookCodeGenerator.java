package antlr;

import antlr.collections.impl.Vector;
import java.io.IOException;
import java.util.Enumeration;
import org.slf4j.Marker;
/* loaded from: classes.dex */
public class DocBookCodeGenerator extends CodeGenerator {
    protected boolean firstElementInAlt;
    protected int syntacticPredLevel = 0;
    protected boolean doingLexRules = false;
    protected AlternativeElement prevAltElem = null;

    @Override // antlr.CodeGenerator
    public void gen(ActionElement actionElement) {
    }

    @Override // antlr.CodeGenerator
    public void gen(BlockEndElement blockEndElement) {
    }

    protected void genSynPred(SynPredBlock synPredBlock) {
    }

    @Override // antlr.CodeGenerator
    public String getASTCreateString(GrammarAtom grammarAtom, String str) {
        return null;
    }

    @Override // antlr.CodeGenerator
    public String getASTCreateString(Vector vector) {
        return null;
    }

    @Override // antlr.CodeGenerator
    public String mapTreeId(String str, ActionTransInfo actionTransInfo) {
        return str;
    }

    @Override // antlr.CodeGenerator
    protected String processActionForSpecialSymbols(String str, int i, RuleBlock ruleBlock, ActionTransInfo actionTransInfo) {
        return str;
    }

    public DocBookCodeGenerator() {
        this.charFormatter = new JavaCharFormatter();
    }

    static String HTMLEncode(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '&') {
                stringBuffer.append("&amp;");
            } else if (charAt == '\"') {
                stringBuffer.append("&quot;");
            } else if (charAt == '\'') {
                stringBuffer.append("&#039;");
            } else if (charAt == '<') {
                stringBuffer.append("&lt;");
            } else if (charAt == '>') {
                stringBuffer.append("&gt;");
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    static String QuoteForId(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '_') {
                stringBuffer.append(".");
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    @Override // antlr.CodeGenerator
    public void gen() {
        try {
            Enumeration elements = this.behavior.grammars.elements();
            while (elements.hasMoreElements()) {
                Grammar grammar = (Grammar) elements.nextElement();
                grammar.setCodeGenerator(this);
                grammar.generate();
                if (this.antlrTool.hasError()) {
                    this.antlrTool.fatalError("Exiting due to errors.");
                }
            }
        } catch (IOException e2) {
            this.antlrTool.reportException(e2, null);
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(AlternativeBlock alternativeBlock) {
        genGenericBlock(alternativeBlock, "");
    }

    @Override // antlr.CodeGenerator
    public void gen(CharLiteralElement charLiteralElement) {
        if (charLiteralElement.not) {
            _print("~");
        }
        _print(new StringBuffer().append(HTMLEncode(charLiteralElement.atomText)).append(" ").toString());
    }

    @Override // antlr.CodeGenerator
    public void gen(CharRangeElement charRangeElement) {
        print(new StringBuffer().append(charRangeElement.beginText).append("..").append(charRangeElement.endText).append(" ").toString());
    }

    @Override // antlr.CodeGenerator
    public void gen(LexerGrammar lexerGrammar) throws IOException {
        setGrammar(lexerGrammar);
        this.antlrTool.reportProgress(new StringBuffer("Generating ").append(this.grammar.getClassName()).append(CodeGenerator.TokenTypesFileExt).toString());
        this.currentOutput = this.antlrTool.openOutputFile(new StringBuffer().append(this.grammar.getClassName()).append(CodeGenerator.TokenTypesFileExt).toString());
        this.tabs = 0;
        this.doingLexRules = true;
        genHeader();
        println("");
        if (this.grammar.comment != null) {
            _println(HTMLEncode(this.grammar.comment));
        }
        println(new StringBuffer("<para>Definition of lexer ").append(this.grammar.getClassName()).append(", which is a subclass of ").append(this.grammar.getSuperClass()).append(".</para>").toString());
        genNextToken();
        Enumeration elements = this.grammar.rules.elements();
        while (elements.hasMoreElements()) {
            RuleSymbol ruleSymbol = (RuleSymbol) elements.nextElement();
            if (!ruleSymbol.id.equals("mnextToken")) {
                genRule(ruleSymbol);
            }
        }
        this.currentOutput.close();
        this.currentOutput = null;
        this.doingLexRules = false;
    }

    @Override // antlr.CodeGenerator
    public void gen(OneOrMoreBlock oneOrMoreBlock) {
        genGenericBlock(oneOrMoreBlock, Marker.ANY_NON_NULL_MARKER);
    }

    @Override // antlr.CodeGenerator
    public void gen(ParserGrammar parserGrammar) throws IOException {
        setGrammar(parserGrammar);
        this.antlrTool.reportProgress(new StringBuffer("Generating ").append(this.grammar.getClassName()).append(".sgml").toString());
        this.currentOutput = this.antlrTool.openOutputFile(new StringBuffer().append(this.grammar.getClassName()).append(".sgml").toString());
        this.tabs = 0;
        genHeader();
        println("");
        if (this.grammar.comment != null) {
            _println(HTMLEncode(this.grammar.comment));
        }
        println(new StringBuffer("<para>Definition of parser ").append(this.grammar.getClassName()).append(", which is a subclass of ").append(this.grammar.getSuperClass()).append(".</para>").toString());
        Enumeration elements = this.grammar.rules.elements();
        while (elements.hasMoreElements()) {
            println("");
            GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
            if (grammarSymbol instanceof RuleSymbol) {
                genRule((RuleSymbol) grammarSymbol);
            }
        }
        this.tabs--;
        println("");
        genTail();
        this.currentOutput.close();
        this.currentOutput = null;
    }

    @Override // antlr.CodeGenerator
    public void gen(RuleRefElement ruleRefElement) {
        RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(ruleRefElement.targetRule);
        _print(new StringBuffer("<link linkend=\"").append(QuoteForId(ruleRefElement.targetRule)).append("\">").toString());
        _print(ruleRefElement.targetRule);
        _print("</link>");
        _print(" ");
    }

    @Override // antlr.CodeGenerator
    public void gen(StringLiteralElement stringLiteralElement) {
        if (stringLiteralElement.not) {
            _print("~");
        }
        _print(HTMLEncode(stringLiteralElement.atomText));
        _print(" ");
    }

    @Override // antlr.CodeGenerator
    public void gen(TokenRangeElement tokenRangeElement) {
        print(new StringBuffer().append(tokenRangeElement.beginText).append("..").append(tokenRangeElement.endText).append(" ").toString());
    }

    @Override // antlr.CodeGenerator
    public void gen(TokenRefElement tokenRefElement) {
        if (tokenRefElement.not) {
            _print("~");
        }
        _print(tokenRefElement.atomText);
        _print(" ");
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeElement treeElement) {
        print(new StringBuffer().append(treeElement).append(" ").toString());
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeWalkerGrammar treeWalkerGrammar) throws IOException {
        setGrammar(treeWalkerGrammar);
        this.antlrTool.reportProgress(new StringBuffer("Generating ").append(this.grammar.getClassName()).append(".sgml").toString());
        this.currentOutput = this.antlrTool.openOutputFile(new StringBuffer().append(this.grammar.getClassName()).append(".sgml").toString());
        this.tabs = 0;
        genHeader();
        println("");
        println("");
        if (this.grammar.comment != null) {
            _println(HTMLEncode(this.grammar.comment));
        }
        println(new StringBuffer("<para>Definition of tree parser ").append(this.grammar.getClassName()).append(", which is a subclass of ").append(this.grammar.getSuperClass()).append(".</para>").toString());
        println("");
        this.tabs++;
        Enumeration elements = this.grammar.rules.elements();
        while (elements.hasMoreElements()) {
            println("");
            GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
            if (grammarSymbol instanceof RuleSymbol) {
                genRule((RuleSymbol) grammarSymbol);
            }
        }
        this.tabs--;
        println("");
        this.currentOutput.close();
        this.currentOutput = null;
    }

    @Override // antlr.CodeGenerator
    public void gen(WildcardElement wildcardElement) {
        _print(". ");
    }

    @Override // antlr.CodeGenerator
    public void gen(ZeroOrMoreBlock zeroOrMoreBlock) {
        genGenericBlock(zeroOrMoreBlock, Marker.ANY_MARKER);
    }

    protected void genAlt(Alternative alternative) {
        if (alternative.getTreeSpecifier() != null) {
            _print(alternative.getTreeSpecifier().getText());
        }
        this.prevAltElem = null;
        for (AlternativeElement alternativeElement = alternative.head; !(alternativeElement instanceof BlockEndElement); alternativeElement = alternativeElement.next) {
            alternativeElement.generate();
            this.firstElementInAlt = false;
            this.prevAltElem = alternativeElement;
        }
    }

    public void genCommonBlock(AlternativeBlock alternativeBlock) {
        if (alternativeBlock.alternatives.size() > 1) {
            println("<itemizedlist mark=\"none\">");
        }
        for (int i = 0; i < alternativeBlock.alternatives.size(); i++) {
            Alternative alternativeAt = alternativeBlock.getAlternativeAt(i);
            AlternativeElement alternativeElement = alternativeAt.head;
            if (alternativeBlock.alternatives.size() > 1) {
                print("<listitem><para>");
            }
            if (i > 0 && alternativeBlock.alternatives.size() > 1) {
                _print("| ");
            }
            boolean z = this.firstElementInAlt;
            this.firstElementInAlt = true;
            this.tabs++;
            genAlt(alternativeAt);
            this.tabs--;
            this.firstElementInAlt = z;
            if (alternativeBlock.alternatives.size() > 1) {
                _println("</para></listitem>");
            }
        }
        if (alternativeBlock.alternatives.size() > 1) {
            println("</itemizedlist>");
        }
    }

    public void genFollowSetForRuleBlock(RuleBlock ruleBlock) {
        printSet(this.grammar.maxk, 1, this.grammar.theLLkAnalyzer.FOLLOW(1, ruleBlock.endNode));
    }

    protected void genGenericBlock(AlternativeBlock alternativeBlock, String str) {
        if (alternativeBlock.alternatives.size() > 1) {
            _println("");
            if (!this.firstElementInAlt) {
                _println("(");
            } else {
                _print("(");
            }
        } else {
            _print("( ");
        }
        genCommonBlock(alternativeBlock);
        if (alternativeBlock.alternatives.size() > 1) {
            _println("");
            print(new StringBuffer(")").append(str).append(" ").toString());
            if (alternativeBlock.next instanceof BlockEndElement) {
                return;
            }
            _println("");
            print("");
            return;
        }
        _print(new StringBuffer(")").append(str).append(" ").toString());
    }

    protected void genHeader() {
        println("<?xml version=\"1.0\" standalone=\"no\"?>");
        println("<!DOCTYPE book PUBLIC \"-//OASIS//DTD DocBook V3.1//EN\">");
        println("<book lang=\"en\">");
        println("<bookinfo>");
        println(new StringBuffer("<title>Grammar ").append(this.grammar.getClassName()).append("</title>").toString());
        println("  <author>");
        println("    <firstname></firstname>");
        println("    <othername></othername>");
        println("    <surname></surname>");
        println("    <affiliation>");
        println("     <address>");
        println("     <email></email>");
        println("     </address>");
        println("    </affiliation>");
        println("  </author>");
        println("  <othercredit>");
        println("    <contrib>");
        println(new StringBuffer("    Generated by <ulink url=\"http://www.ANTLR.org/\">ANTLR</ulink>").append(Tool.version).toString());
        println(new StringBuffer("    from ").append(this.antlrTool.grammarFile).toString());
        println("    </contrib>");
        println("  </othercredit>");
        println("  <pubdate></pubdate>");
        println("  <abstract>");
        println("  <para>");
        println("  </para>");
        println("  </abstract>");
        println("</bookinfo>");
        println("<chapter>");
        println("<title></title>");
    }

    protected void genLookaheadSetForAlt(Alternative alternative) {
        if (this.doingLexRules && alternative.cache[1].containsEpsilon()) {
            println("MATCHES ALL");
            return;
        }
        int i = alternative.lookaheadDepth;
        if (i == Integer.MAX_VALUE) {
            i = this.grammar.maxk;
        }
        for (int i2 = 1; i2 <= i; i2++) {
            printSet(i, i2, alternative.cache[i2]);
        }
    }

    public void genLookaheadSetForBlock(AlternativeBlock alternativeBlock) {
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= alternativeBlock.alternatives.size()) {
                break;
            }
            Alternative alternativeAt = alternativeBlock.getAlternativeAt(i);
            if (alternativeAt.lookaheadDepth == Integer.MAX_VALUE) {
                i2 = this.grammar.maxk;
                break;
            }
            if (i2 < alternativeAt.lookaheadDepth) {
                i2 = alternativeAt.lookaheadDepth;
            }
            i++;
        }
        int i3 = i2;
        for (int i4 = 1; i4 <= i3; i4++) {
            printSet(i3, i4, this.grammar.theLLkAnalyzer.look(i4, alternativeBlock));
        }
    }

    public void genNextToken() {
        println("");
        println("/** Lexer nextToken rule:");
        println(" *  The lexer nextToken rule is synthesized from all of the user-defined");
        println(" *  lexer rules.  It logically consists of one big alternative block with");
        println(" *  each user-defined rule being an alternative.");
        println(" */");
        RuleBlock createNextTokenRule = MakeGrammar.createNextTokenRule(this.grammar, this.grammar.rules, "nextToken");
        RuleSymbol ruleSymbol = new RuleSymbol("mnextToken");
        ruleSymbol.setDefined();
        ruleSymbol.setBlock(createNextTokenRule);
        ruleSymbol.access = "private";
        this.grammar.define(ruleSymbol);
        genCommonBlock(createNextTokenRule);
    }

    public void genRule(RuleSymbol ruleSymbol) {
        if (ruleSymbol == null || !ruleSymbol.isDefined()) {
            return;
        }
        println("");
        if (ruleSymbol.access.length() != 0 && !ruleSymbol.access.equals("public")) {
            _print(new StringBuffer("<para>").append(ruleSymbol.access).append(" </para>").toString());
        }
        println(new StringBuffer("<section id=\"").append(QuoteForId(ruleSymbol.getId())).append("\">").toString());
        println(new StringBuffer("<title>").append(ruleSymbol.getId()).append("</title>").toString());
        if (ruleSymbol.comment != null) {
            _println(new StringBuffer("<para>").append(HTMLEncode(ruleSymbol.comment)).append("</para>").toString());
        }
        println("<para>");
        RuleBlock block = ruleSymbol.getBlock();
        _println("");
        print(new StringBuffer().append(ruleSymbol.getId()).append(":\t").toString());
        this.tabs++;
        genCommonBlock(block);
        _println("");
        this.tabs--;
        _println("</para>");
        _println(new StringBuffer("</section><!-- section \"").append(ruleSymbol.getId()).append("\" -->").toString());
    }

    public void genTail() {
        println("</chapter>");
        println("</book>");
    }

    protected void genTokenTypes(TokenManager tokenManager) throws IOException {
        this.antlrTool.reportProgress(new StringBuffer("Generating ").append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append(CodeGenerator.TokenTypesFileExt).toString());
        this.currentOutput = this.antlrTool.openOutputFile(new StringBuffer().append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append(CodeGenerator.TokenTypesFileExt).toString());
        this.tabs = 0;
        genHeader();
        println("");
        println("*** Tokens used by the parser");
        println("This is a list of the token numeric values and the corresponding");
        println("token identifiers.  Some tokens are literals, and because of that");
        println("they have no identifiers.  Literals are double-quoted.");
        this.tabs++;
        Vector vocabulary = tokenManager.getVocabulary();
        for (int i = 4; i < vocabulary.size(); i++) {
            String str = (String) vocabulary.elementAt(i);
            if (str != null) {
                println(new StringBuffer().append(str).append(" = ").append(i).toString());
            }
        }
        this.tabs--;
        println("*** End of tokens used by the parser");
        this.currentOutput.close();
        this.currentOutput = null;
    }

    public void printSet(int i, int i2, Lookahead lookahead) {
        int[] array = lookahead.fset.toArray();
        if (i != 1) {
            print(new StringBuffer("k==").append(i2).append(": {").toString());
        } else {
            print("{ ");
        }
        if (array.length > 5) {
            _println("");
            this.tabs++;
            print("");
        }
        int i3 = 0;
        for (int i4 = 0; i4 < array.length; i4++) {
            i3++;
            if (i3 > 5) {
                _println("");
                print("");
                i3 = 0;
            }
            if (this.doingLexRules) {
                _print(this.charFormatter.literalChar(array[i4]));
            } else {
                _print((String) this.grammar.tokenManager.getVocabulary().elementAt(array[i4]));
            }
            if (i4 != array.length - 1) {
                _print(", ");
            }
        }
        if (array.length > 5) {
            _println("");
            this.tabs--;
            print("");
        }
        _println(" }");
    }
}
