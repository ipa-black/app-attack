package antlr;

import antlr.collections.impl.Vector;
import java.io.IOException;
import java.util.Enumeration;
/* loaded from: classes.dex */
public class DiagnosticCodeGenerator extends CodeGenerator {
    protected int syntacticPredLevel = 0;
    protected boolean doingLexRules = false;

    @Override // antlr.CodeGenerator
    public void gen(BlockEndElement blockEndElement) {
    }

    @Override // antlr.CodeGenerator
    public String mapTreeId(String str, ActionTransInfo actionTransInfo) {
        return str;
    }

    @Override // antlr.CodeGenerator
    protected String processActionForSpecialSymbols(String str, int i, RuleBlock ruleBlock, ActionTransInfo actionTransInfo) {
        return str;
    }

    public DiagnosticCodeGenerator() {
        this.charFormatter = new JavaCharFormatter();
    }

    @Override // antlr.CodeGenerator
    public void gen() {
        try {
            Enumeration elements = this.behavior.grammars.elements();
            while (elements.hasMoreElements()) {
                Grammar grammar = (Grammar) elements.nextElement();
                grammar.setGrammarAnalyzer(this.analyzer);
                grammar.setCodeGenerator(this);
                this.analyzer.setGrammar(grammar);
                grammar.generate();
                if (this.antlrTool.hasError()) {
                    this.antlrTool.panic("Exiting due to errors.");
                }
            }
            Enumeration elements2 = this.behavior.tokenManagers.elements();
            while (elements2.hasMoreElements()) {
                TokenManager tokenManager = (TokenManager) elements2.nextElement();
                if (!tokenManager.isReadOnly()) {
                    genTokenTypes(tokenManager);
                }
            }
        } catch (IOException e2) {
            this.antlrTool.reportException(e2, null);
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(ActionElement actionElement) {
        if (actionElement.isSemPred) {
            return;
        }
        print("ACTION: ");
        _printAction(actionElement.actionText);
    }

    @Override // antlr.CodeGenerator
    public void gen(AlternativeBlock alternativeBlock) {
        println("Start of alternative block.");
        this.tabs++;
        genBlockPreamble(alternativeBlock);
        if (!this.grammar.theLLkAnalyzer.deterministic(alternativeBlock)) {
            println("Warning: This alternative block is non-deterministic");
        }
        genCommonBlock(alternativeBlock);
        this.tabs--;
    }

    @Override // antlr.CodeGenerator
    public void gen(CharLiteralElement charLiteralElement) {
        print("Match character ");
        if (charLiteralElement.not) {
            _print("NOT ");
        }
        _print(charLiteralElement.atomText);
        if (charLiteralElement.label != null) {
            _print(new StringBuffer(", label=").append(charLiteralElement.label).toString());
        }
        _println("");
    }

    @Override // antlr.CodeGenerator
    public void gen(CharRangeElement charRangeElement) {
        print(new StringBuffer("Match character range: ").append(charRangeElement.beginText).append("..").append(charRangeElement.endText).toString());
        if (charRangeElement.label != null) {
            _print(new StringBuffer(", label = ").append(charRangeElement.label).toString());
        }
        _println("");
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
        println("*** Lexer Preamble Action.");
        println("This action will appear before the declaration of your lexer class:");
        this.tabs++;
        println(this.grammar.preambleAction.getText());
        this.tabs--;
        println("*** End of Lexer Preamble Action");
        println("");
        println(new StringBuffer("*** Your lexer class is called '").append(this.grammar.getClassName()).append("' and is a subclass of '").append(this.grammar.getSuperClass()).append("'.").toString());
        println("");
        println("*** User-defined lexer  class members:");
        println("These are the member declarations that you defined for your class:");
        this.tabs++;
        printAction(this.grammar.classMemberAction.getText());
        this.tabs--;
        println("*** End of user-defined lexer class members");
        println("");
        println("*** String literals used in the parser");
        println("The following string literals were used in the parser.");
        println("An actual code generator would arrange to place these literals");
        println("into a table in the generated lexer, so that actions in the");
        println("generated lexer could match token text against the literals.");
        println("String literals used in the lexer are not listed here, as they");
        println("are incorporated into the mainstream lexer processing.");
        this.tabs++;
        Enumeration symbols = this.grammar.getSymbols();
        while (symbols.hasMoreElements()) {
            GrammarSymbol grammarSymbol = (GrammarSymbol) symbols.nextElement();
            if (grammarSymbol instanceof StringLiteralSymbol) {
                StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) grammarSymbol;
                println(new StringBuffer().append(stringLiteralSymbol.getId()).append(" = ").append(stringLiteralSymbol.getTokenType()).toString());
            }
        }
        this.tabs--;
        println("*** End of string literals used by the parser");
        genNextToken();
        println("");
        println("*** User-defined Lexer rules:");
        this.tabs++;
        Enumeration elements = this.grammar.rules.elements();
        while (elements.hasMoreElements()) {
            RuleSymbol ruleSymbol = (RuleSymbol) elements.nextElement();
            if (!ruleSymbol.id.equals("mnextToken")) {
                genRule(ruleSymbol);
            }
        }
        this.tabs--;
        println("");
        println("*** End User-defined Lexer rules:");
        this.currentOutput.close();
        this.currentOutput = null;
        this.doingLexRules = false;
    }

    @Override // antlr.CodeGenerator
    public void gen(OneOrMoreBlock oneOrMoreBlock) {
        println("Start ONE-OR-MORE (...)+ block:");
        this.tabs++;
        genBlockPreamble(oneOrMoreBlock);
        if (!this.grammar.theLLkAnalyzer.deterministic(oneOrMoreBlock)) {
            println("Warning: This one-or-more block is non-deterministic");
        }
        genCommonBlock(oneOrMoreBlock);
        this.tabs--;
        println("End ONE-OR-MORE block.");
    }

    @Override // antlr.CodeGenerator
    public void gen(ParserGrammar parserGrammar) throws IOException {
        setGrammar(parserGrammar);
        this.antlrTool.reportProgress(new StringBuffer("Generating ").append(this.grammar.getClassName()).append(CodeGenerator.TokenTypesFileExt).toString());
        this.currentOutput = this.antlrTool.openOutputFile(new StringBuffer().append(this.grammar.getClassName()).append(CodeGenerator.TokenTypesFileExt).toString());
        this.tabs = 0;
        genHeader();
        println("");
        println("*** Parser Preamble Action.");
        println("This action will appear before the declaration of your parser class:");
        this.tabs++;
        println(this.grammar.preambleAction.getText());
        this.tabs--;
        println("*** End of Parser Preamble Action");
        println("");
        println(new StringBuffer("*** Your parser class is called '").append(this.grammar.getClassName()).append("' and is a subclass of '").append(this.grammar.getSuperClass()).append("'.").toString());
        println("");
        println("*** User-defined parser class members:");
        println("These are the member declarations that you defined for your class:");
        this.tabs++;
        printAction(this.grammar.classMemberAction.getText());
        this.tabs--;
        println("*** End of user-defined parser class members");
        println("");
        println("*** Parser rules:");
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
        println("*** End of parser rules");
        println("");
        println("*** End of parser");
        this.currentOutput.close();
        this.currentOutput = null;
    }

    @Override // antlr.CodeGenerator
    public void gen(RuleRefElement ruleRefElement) {
        RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(ruleRefElement.targetRule);
        print(new StringBuffer("Rule Reference: ").append(ruleRefElement.targetRule).toString());
        if (ruleRefElement.idAssign != null) {
            _print(new StringBuffer(", assigned to '").append(ruleRefElement.idAssign).append("'").toString());
        }
        if (ruleRefElement.args != null) {
            _print(new StringBuffer(", arguments = ").append(ruleRefElement.args).toString());
        }
        _println("");
        if (ruleSymbol == null || !ruleSymbol.isDefined()) {
            println(new StringBuffer("Rule '").append(ruleRefElement.targetRule).append("' is referenced, but that rule is not defined.").toString());
            println("\tPerhaps the rule is misspelled, or you forgot to define it.");
        } else if (!(ruleSymbol instanceof RuleSymbol)) {
            println(new StringBuffer("Rule '").append(ruleRefElement.targetRule).append("' is referenced, but that is not a grammar rule.").toString());
        } else {
            if (ruleRefElement.idAssign != null) {
                if (ruleSymbol.block.returnAction == null) {
                    println(new StringBuffer("Error: You assigned from Rule '").append(ruleRefElement.targetRule).append("', but that rule has no return type.").toString());
                }
            } else if (!(this.grammar instanceof LexerGrammar) && this.syntacticPredLevel == 0 && ruleSymbol.block.returnAction != null) {
                println(new StringBuffer("Warning: Rule '").append(ruleRefElement.targetRule).append("' returns a value").toString());
            }
            if (ruleRefElement.args == null || ruleSymbol.block.argAction != null) {
                return;
            }
            println(new StringBuffer("Error: Rule '").append(ruleRefElement.targetRule).append("' accepts no arguments.").toString());
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(StringLiteralElement stringLiteralElement) {
        print("Match string literal ");
        _print(stringLiteralElement.atomText);
        if (stringLiteralElement.label != null) {
            _print(new StringBuffer(", label=").append(stringLiteralElement.label).toString());
        }
        _println("");
    }

    @Override // antlr.CodeGenerator
    public void gen(TokenRangeElement tokenRangeElement) {
        print(new StringBuffer("Match token range: ").append(tokenRangeElement.beginText).append("..").append(tokenRangeElement.endText).toString());
        if (tokenRangeElement.label != null) {
            _print(new StringBuffer(", label = ").append(tokenRangeElement.label).toString());
        }
        _println("");
    }

    @Override // antlr.CodeGenerator
    public void gen(TokenRefElement tokenRefElement) {
        print("Match token ");
        if (tokenRefElement.not) {
            _print("NOT ");
        }
        _print(tokenRefElement.atomText);
        if (tokenRefElement.label != null) {
            _print(new StringBuffer(", label=").append(tokenRefElement.label).toString());
        }
        _println("");
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeElement treeElement) {
        print(new StringBuffer("Tree reference: ").append(treeElement).toString());
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeWalkerGrammar treeWalkerGrammar) throws IOException {
        setGrammar(treeWalkerGrammar);
        this.antlrTool.reportProgress(new StringBuffer("Generating ").append(this.grammar.getClassName()).append(CodeGenerator.TokenTypesFileExt).toString());
        this.currentOutput = this.antlrTool.openOutputFile(new StringBuffer().append(this.grammar.getClassName()).append(CodeGenerator.TokenTypesFileExt).toString());
        this.tabs = 0;
        genHeader();
        println("");
        println("*** Tree-walker Preamble Action.");
        println("This action will appear before the declaration of your tree-walker class:");
        this.tabs++;
        println(this.grammar.preambleAction.getText());
        this.tabs--;
        println("*** End of tree-walker Preamble Action");
        println("");
        println(new StringBuffer("*** Your tree-walker class is called '").append(this.grammar.getClassName()).append("' and is a subclass of '").append(this.grammar.getSuperClass()).append("'.").toString());
        println("");
        println("*** User-defined tree-walker class members:");
        println("These are the member declarations that you defined for your class:");
        this.tabs++;
        printAction(this.grammar.classMemberAction.getText());
        this.tabs--;
        println("*** End of user-defined tree-walker class members");
        println("");
        println("*** tree-walker rules:");
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
        println("*** End of tree-walker rules");
        println("");
        println("*** End of tree-walker");
        this.currentOutput.close();
        this.currentOutput = null;
    }

    @Override // antlr.CodeGenerator
    public void gen(WildcardElement wildcardElement) {
        print("Match wildcard");
        if (wildcardElement.getLabel() != null) {
            _print(new StringBuffer(", label = ").append(wildcardElement.getLabel()).toString());
        }
        _println("");
    }

    @Override // antlr.CodeGenerator
    public void gen(ZeroOrMoreBlock zeroOrMoreBlock) {
        println("Start ZERO-OR-MORE (...)+ block:");
        this.tabs++;
        genBlockPreamble(zeroOrMoreBlock);
        if (!this.grammar.theLLkAnalyzer.deterministic(zeroOrMoreBlock)) {
            println("Warning: This zero-or-more block is non-deterministic");
        }
        genCommonBlock(zeroOrMoreBlock);
        this.tabs--;
        println("End ZERO-OR-MORE block.");
    }

    protected void genAlt(Alternative alternative) {
        for (AlternativeElement alternativeElement = alternative.head; !(alternativeElement instanceof BlockEndElement); alternativeElement = alternativeElement.next) {
            alternativeElement.generate();
        }
        if (alternative.getTreeSpecifier() != null) {
            println(new StringBuffer("AST will be built as: ").append(alternative.getTreeSpecifier().getText()).toString());
        }
    }

    protected void genBlockPreamble(AlternativeBlock alternativeBlock) {
        if (alternativeBlock.initAction != null) {
            printAction(new StringBuffer("Init action: ").append(alternativeBlock.initAction).toString());
        }
    }

    public void genCommonBlock(AlternativeBlock alternativeBlock) {
        int i = 0;
        boolean z = alternativeBlock.alternatives.size() == 1;
        println("Start of an alternative block.");
        this.tabs++;
        println("The lookahead set for this block is:");
        this.tabs++;
        genLookaheadSetForBlock(alternativeBlock);
        this.tabs--;
        if (z) {
            println("This block has a single alternative");
            if (alternativeBlock.getAlternativeAt(0).synPred != null) {
                println("Warning: you specified a syntactic predicate for this alternative,");
                println("and it is the only alternative of a block and will be ignored.");
            }
        } else {
            println("This block has multiple alternatives:");
            this.tabs++;
        }
        while (i < alternativeBlock.alternatives.size()) {
            Alternative alternativeAt = alternativeBlock.getAlternativeAt(i);
            AlternativeElement alternativeElement = alternativeAt.head;
            println("");
            if (i != 0) {
                print("Otherwise, ");
            } else {
                print("");
            }
            i++;
            _println(new StringBuffer("Alternate(").append(i).append(") will be taken IF:").toString());
            println("The lookahead set: ");
            this.tabs++;
            genLookaheadSetForAlt(alternativeAt);
            this.tabs--;
            if (alternativeAt.semPred != null || alternativeAt.synPred != null) {
                print("is matched, AND ");
            } else {
                println("is matched.");
            }
            if (alternativeAt.semPred != null) {
                _println("the semantic predicate:");
                this.tabs++;
                println(alternativeAt.semPred);
                if (alternativeAt.synPred != null) {
                    print("is true, AND ");
                } else {
                    println("is true.");
                }
            }
            if (alternativeAt.synPred != null) {
                _println("the syntactic predicate:");
                this.tabs++;
                genSynPred(alternativeAt.synPred);
                this.tabs--;
                println("is matched.");
            }
            genAlt(alternativeAt);
        }
        println("");
        println("OTHERWISE, a NoViableAlt exception will be thrown");
        println("");
        if (!z) {
            this.tabs--;
            println("End of alternatives");
        }
        this.tabs--;
        println("End of alternative block.");
    }

    public void genFollowSetForRuleBlock(RuleBlock ruleBlock) {
        printSet(this.grammar.maxk, 1, this.grammar.theLLkAnalyzer.FOLLOW(1, ruleBlock.endNode));
    }

    protected void genHeader() {
        println(new StringBuffer("ANTLR-generated file resulting from grammar ").append(this.antlrTool.grammarFile).toString());
        println("Diagnostic output");
        println("");
        println("Terence Parr, MageLang Institute");
        println("with John Lilley, Empathy Software");
        println(new StringBuffer("ANTLR Version ").append(Tool.version).append("; 1996,1997").toString());
        println("");
        println("*** Header Action.");
        println("This action will appear at the top of all generated files.");
        this.tabs++;
        printAction(this.behavior.getHeaderAction(""));
        this.tabs--;
        println("*** End of Header Action");
        println("");
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
        println("*** Lexer nextToken rule:");
        println("The lexer nextToken rule is synthesized from all of the user-defined");
        println("lexer rules.  It logically consists of one big alternative block with");
        println("each user-defined rule being an alternative.");
        println("");
        RuleBlock createNextTokenRule = MakeGrammar.createNextTokenRule(this.grammar, this.grammar.rules, "nextToken");
        RuleSymbol ruleSymbol = new RuleSymbol("mnextToken");
        ruleSymbol.setDefined();
        ruleSymbol.setBlock(createNextTokenRule);
        ruleSymbol.access = "private";
        this.grammar.define(ruleSymbol);
        if (!this.grammar.theLLkAnalyzer.deterministic(createNextTokenRule)) {
            println("The grammar analyzer has determined that the synthesized");
            println("nextToken rule is non-deterministic (i.e., it has ambiguities)");
            println("This means that there is some overlap of the character");
            println("lookahead for two or more of your lexer rules.");
        }
        genCommonBlock(createNextTokenRule);
        println("*** End of nextToken lexer rule.");
    }

    public void genRule(RuleSymbol ruleSymbol) {
        println("");
        String str = this.doingLexRules ? "Lexer" : "Parser";
        println(new StringBuffer("*** ").append(str).append(" Rule: ").append(ruleSymbol.getId()).toString());
        if (!ruleSymbol.isDefined()) {
            println("This rule is undefined.");
            println("This means that the rule was referenced somewhere in the grammar,");
            println("but a definition for the rule was not encountered.");
            println("It is also possible that syntax errors during the parse of");
            println("your grammar file prevented correct processing of the rule.");
            println(new StringBuffer("*** End ").append(str).append(" Rule: ").append(ruleSymbol.getId()).toString());
            return;
        }
        this.tabs++;
        if (ruleSymbol.access.length() != 0) {
            println(new StringBuffer("Access: ").append(ruleSymbol.access).toString());
        }
        RuleBlock block = ruleSymbol.getBlock();
        if (block.returnAction != null) {
            println(new StringBuffer("Return value(s): ").append(block.returnAction).toString());
            if (this.doingLexRules) {
                println("Error: you specified return value(s) for a lexical rule.");
                println("\tLexical rules have an implicit return type of 'int'.");
            }
        } else if (this.doingLexRules) {
            println("Return value: lexical rule returns an implicit token type");
        } else {
            println("Return value: none");
        }
        if (block.argAction != null) {
            println(new StringBuffer("Arguments: ").append(block.argAction).toString());
        }
        genBlockPreamble(block);
        if (!this.grammar.theLLkAnalyzer.deterministic(block)) {
            println("Error: This rule is non-deterministic");
        }
        genCommonBlock(block);
        ExceptionSpec findExceptionSpec = block.findExceptionSpec("");
        if (findExceptionSpec != null) {
            println("You specified error-handler(s) for this rule:");
            this.tabs++;
            int i = 0;
            while (i < findExceptionSpec.handlers.size()) {
                if (i != 0) {
                    println("");
                }
                ExceptionHandler exceptionHandler = (ExceptionHandler) findExceptionSpec.handlers.elementAt(i);
                i++;
                println(new StringBuffer("Error-handler(").append(i).append(") catches [").append(exceptionHandler.exceptionTypeAndName.getText()).append("] and executes:").toString());
                printAction(exceptionHandler.action.getText());
            }
            this.tabs--;
            println("End error-handlers.");
        } else if (!this.doingLexRules) {
            println("Default error-handling will be generated, which catches all");
            println("parser exceptions and consumes tokens until the follow-set is seen.");
        }
        if (!this.doingLexRules) {
            println("The follow set for this rule is:");
            this.tabs++;
            genFollowSetForRuleBlock(block);
            this.tabs--;
        }
        this.tabs--;
        println(new StringBuffer("*** End ").append(str).append(" Rule: ").append(ruleSymbol.getId()).toString());
    }

    protected void genSynPred(SynPredBlock synPredBlock) {
        this.syntacticPredLevel++;
        gen(synPredBlock);
        this.syntacticPredLevel--;
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

    @Override // antlr.CodeGenerator
    public String getASTCreateString(Vector vector) {
        return new StringBuffer("***Create an AST from a vector here***").append(System.getProperty("line.separator")).toString();
    }

    @Override // antlr.CodeGenerator
    public String getASTCreateString(GrammarAtom grammarAtom, String str) {
        return new StringBuffer("[").append(str).append("]").toString();
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
