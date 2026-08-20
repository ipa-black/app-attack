package antlr;

import antlr.actions.cpp.ActionLexer;
import antlr.collections.impl.BitSet;
import antlr.collections.impl.Vector;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
/* loaded from: classes.dex */
public class CppCodeGenerator extends CodeGenerator {
    public static final int caseSizeThreshold = 127;
    private static final String postIncludeCpp = "post_include_cpp";
    private static final String postIncludeHpp = "post_include_hpp";
    private static final String preIncludeCpp = "pre_include_cpp";
    private static final String preIncludeHpp = "pre_include_hpp";
    private Vector astTypes;
    String commonExtraArgs;
    String commonExtraParams;
    String commonLocalVars;
    String currentASTResult;
    RuleBlock currentRule;
    String exceptionThrown;
    String labeledElementASTInit;
    String labeledElementASTType;
    String labeledElementInit;
    String labeledElementType;
    String lt1Value;
    protected String outputFile;
    protected int outputLine;
    private Vector semPreds;
    String throwNoViable;
    protected static final String NONUNIQUE = new String();
    private static String namespaceStd = "ANTLR_USE_NAMESPACE(std)";
    private static String namespaceAntlr = "ANTLR_USE_NAMESPACE(antlr)";
    private static NameSpace nameSpace = null;
    protected int syntacticPredLevel = 0;
    protected boolean genAST = false;
    protected boolean saveText = false;
    protected boolean genHashLines = true;
    protected boolean noConstructors = false;
    boolean usingCustomAST = false;
    Hashtable treeVariableMap = new Hashtable();
    HashSet declaredASTVariables = new HashSet();
    int astVarNumber = 1;

    protected void genMatch(BitSet bitSet) {
    }

    public CppCodeGenerator() {
        this.charFormatter = new CppCharFormatter();
    }

    protected int addSemPred(String str) {
        this.semPreds.appendElement(str);
        return this.semPreds.size() - 1;
    }

    public void exitIfError() {
        if (this.antlrTool.hasError()) {
            this.antlrTool.fatalError("Exiting due to errors.");
        }
    }

    protected int countLines(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '\n') {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // antlr.CodeGenerator
    public void _print(String str) {
        if (str != null) {
            this.outputLine += countLines(str);
            this.currentOutput.print(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // antlr.CodeGenerator
    public void _printAction(String str) {
        if (str != null) {
            this.outputLine += countLines(str) + 1;
            super._printAction(str);
        }
    }

    public void printAction(Token token) {
        if (token != null) {
            genLineNo(token.getLine());
            printTabs();
            _printAction(processActionForSpecialSymbols(token.getText(), token.getLine(), null, null));
            genLineNo2();
        }
    }

    public void printHeaderAction(String str) {
        Token token = (Token) this.behavior.headerActions.get(str);
        if (token != null) {
            genLineNo(token.getLine());
            println(processActionForSpecialSymbols(token.getText(), token.getLine(), null, null));
            genLineNo2();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // antlr.CodeGenerator
    public void _println(String str) {
        if (str != null) {
            this.outputLine += countLines(str) + 1;
            this.currentOutput.println(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // antlr.CodeGenerator
    public void println(String str) {
        if (str != null) {
            printTabs();
            this.outputLine += countLines(str) + 1;
            this.currentOutput.println(str);
        }
    }

    public void genLineNo(int i) {
        if (i == 0) {
            i++;
        }
        if (this.genHashLines) {
            _println(new StringBuffer("#line ").append(i).append(" \"").append(this.antlrTool.fileMinusPath(this.antlrTool.grammarFile)).append("\"").toString());
        }
    }

    public void genLineNo(GrammarElement grammarElement) {
        if (grammarElement != null) {
            genLineNo(grammarElement.getLine());
        }
    }

    public void genLineNo(Token token) {
        if (token != null) {
            genLineNo(token.getLine());
        }
    }

    public void genLineNo2() {
        if (this.genHashLines) {
            _println(new StringBuffer("#line ").append(this.outputLine + 1).append(" \"").append(this.outputFile).append("\"").toString());
        }
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
                setupGrammarParameters(grammar);
                grammar.generate();
                exitIfError();
            }
            Enumeration elements2 = this.behavior.tokenManagers.elements();
            while (elements2.hasMoreElements()) {
                TokenManager tokenManager = (TokenManager) elements2.nextElement();
                if (!tokenManager.isReadOnly()) {
                    genTokenTypes(tokenManager);
                    genTokenInterchange(tokenManager);
                }
                exitIfError();
            }
        } catch (IOException e2) {
            this.antlrTool.reportException(e2, null);
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(ActionElement actionElement) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genAction(").append(actionElement).append(")").toString());
        }
        if (actionElement.isSemPred) {
            genSemPred(actionElement.actionText, actionElement.line);
            return;
        }
        if (this.grammar.hasSyntacticPredicate) {
            println("if ( inputState->guessing==0 ) {");
            this.tabs++;
        }
        ActionTransInfo actionTransInfo = new ActionTransInfo();
        String processActionForSpecialSymbols = processActionForSpecialSymbols(actionElement.actionText, actionElement.getLine(), this.currentRule, actionTransInfo);
        if (actionTransInfo.refRuleRoot != null) {
            println(new StringBuffer().append(actionTransInfo.refRuleRoot).append(" = ").append(this.labeledElementASTType).append("(currentAST.root);").toString());
        }
        genLineNo(actionElement);
        printAction(processActionForSpecialSymbols);
        genLineNo2();
        if (actionTransInfo.assignToRoot) {
            println(new StringBuffer("currentAST.root = ").append(actionTransInfo.refRuleRoot).append(";").toString());
            println(new StringBuffer("if ( ").append(actionTransInfo.refRuleRoot).append("!=").append(this.labeledElementASTInit).append(" &&").toString());
            this.tabs++;
            println(new StringBuffer().append(actionTransInfo.refRuleRoot).append("->getFirstChild() != ").append(this.labeledElementASTInit).append(" )").toString());
            println(new StringBuffer("  currentAST.child = ").append(actionTransInfo.refRuleRoot).append("->getFirstChild();").toString());
            this.tabs--;
            println("else");
            this.tabs++;
            println(new StringBuffer("currentAST.child = ").append(actionTransInfo.refRuleRoot).append(";").toString());
            this.tabs--;
            println("currentAST.advanceChildToEnd();");
        }
        if (this.grammar.hasSyntacticPredicate) {
            this.tabs--;
            println("}");
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(AlternativeBlock alternativeBlock) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("gen(").append(alternativeBlock).append(")").toString());
        }
        println("{");
        genBlockPreamble(alternativeBlock);
        genBlockInitAction(alternativeBlock);
        String str = this.currentASTResult;
        if (alternativeBlock.getLabel() != null) {
            this.currentASTResult = alternativeBlock.getLabel();
        }
        this.grammar.theLLkAnalyzer.deterministic(alternativeBlock);
        genBlockFinish(genCommonBlock(alternativeBlock, true), this.throwNoViable);
        println("}");
        this.currentASTResult = str;
    }

    @Override // antlr.CodeGenerator
    public void gen(BlockEndElement blockEndElement) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genRuleEnd(").append(blockEndElement).append(")").toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0053, code lost:
        if (r4.getAutoGenType() == 1) goto L11;
     */
    @Override // antlr.CodeGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void gen(antlr.CharLiteralElement r4) {
        /*
            r3 = this;
            boolean r0 = r3.DEBUG_CODE_GENERATOR
            if (r0 == 0) goto L1e
            java.io.PrintStream r0 = java.lang.System.out
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            java.lang.String r2 = "genChar("
            r1.<init>(r2)
            java.lang.StringBuffer r1 = r1.append(r4)
            java.lang.String r2 = ")"
            java.lang.StringBuffer r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.println(r1)
        L1e:
            java.lang.String r0 = r4.getLabel()
            if (r0 == 0) goto L4a
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = r4.getLabel()
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r1 = " = "
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r1 = r3.lt1Value
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r1 = ";"
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r3.println(r0)
        L4a:
            boolean r0 = r3.saveText
            if (r0 == 0) goto L56
            int r1 = r4.getAutoGenType()
            r2 = 1
            if (r1 != r2) goto L56
            goto L57
        L56:
            r2 = 0
        L57:
            r3.saveText = r2
            r3.genMatch(r4)
            r3.saveText = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CppCodeGenerator.gen(antlr.CharLiteralElement):void");
    }

    @Override // antlr.CodeGenerator
    public void gen(CharRangeElement charRangeElement) {
        if (charRangeElement.getLabel() != null && this.syntacticPredLevel == 0) {
            println(new StringBuffer().append(charRangeElement.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
        }
        boolean z = (this.grammar instanceof LexerGrammar) && (!this.saveText || charRangeElement.getAutoGenType() == 3);
        if (z) {
            println("_saveIndex=text.length();");
        }
        println(new StringBuffer("matchRange(").append(textOrChar(charRangeElement.beginText)).append(",").append(textOrChar(charRangeElement.endText)).append(");").toString());
        if (z) {
            println("text.setLength(_saveIndex);");
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(LexerGrammar lexerGrammar) throws IOException {
        if (lexerGrammar.debuggingOutput) {
            this.semPreds = new Vector();
        }
        setGrammar(lexerGrammar);
        if (!(this.grammar instanceof LexerGrammar)) {
            this.antlrTool.panic("Internal error generating lexer");
        }
        genBody(lexerGrammar);
        genInclude(lexerGrammar);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00da  */
    @Override // antlr.CodeGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void gen(antlr.OneOrMoreBlock r11) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CppCodeGenerator.gen(antlr.OneOrMoreBlock):void");
    }

    @Override // antlr.CodeGenerator
    public void gen(ParserGrammar parserGrammar) throws IOException {
        if (parserGrammar.debuggingOutput) {
            this.semPreds = new Vector();
        }
        setGrammar(parserGrammar);
        if (!(this.grammar instanceof ParserGrammar)) {
            this.antlrTool.panic("Internal error generating parser");
        }
        genBody(parserGrammar);
        genInclude(parserGrammar);
    }

    @Override // antlr.CodeGenerator
    public void gen(RuleRefElement ruleRefElement) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genRR(").append(ruleRefElement).append(")").toString());
        }
        RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(ruleRefElement.targetRule);
        if (ruleSymbol == null || !ruleSymbol.isDefined()) {
            this.antlrTool.error(new StringBuffer("Rule '").append(ruleRefElement.targetRule).append("' is not defined").toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
        } else if (!(ruleSymbol instanceof RuleSymbol)) {
            this.antlrTool.error(new StringBuffer("'").append(ruleRefElement.targetRule).append("' does not name a grammar rule").toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
        } else {
            genErrorTryForElement(ruleRefElement);
            if ((this.grammar instanceof TreeWalkerGrammar) && ruleRefElement.getLabel() != null && this.syntacticPredLevel == 0) {
                println(new StringBuffer().append(ruleRefElement.getLabel()).append(" = (_t == ASTNULL) ? ").append(this.labeledElementASTInit).append(" : ").append(this.lt1Value).append(";").toString());
            }
            if ((this.grammar instanceof LexerGrammar) && (!this.saveText || ruleRefElement.getAutoGenType() == 3)) {
                println("_saveIndex = text.length();");
            }
            printTabs();
            if (ruleRefElement.idAssign != null) {
                if (ruleSymbol.block.returnAction == null) {
                    this.antlrTool.warning(new StringBuffer("Rule '").append(ruleRefElement.targetRule).append("' has no return type").toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
                }
                _print(new StringBuffer().append(ruleRefElement.idAssign).append("=").toString());
            } else if (!(this.grammar instanceof LexerGrammar) && this.syntacticPredLevel == 0 && ruleSymbol.block.returnAction != null) {
                this.antlrTool.warning(new StringBuffer("Rule '").append(ruleRefElement.targetRule).append("' returns a value").toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
            }
            GenRuleInvocation(ruleRefElement);
            if ((this.grammar instanceof LexerGrammar) && (!this.saveText || ruleRefElement.getAutoGenType() == 3)) {
                println("text.erase(_saveIndex);");
            }
            if (this.syntacticPredLevel == 0) {
                boolean z = this.grammar.hasSyntacticPredicate && ((this.grammar.buildAST && ruleRefElement.getLabel() != null) || (this.genAST && ruleRefElement.getAutoGenType() == 1));
                if (z) {
                    println("if (inputState->guessing==0) {");
                    this.tabs++;
                }
                if (this.grammar.buildAST && ruleRefElement.getLabel() != null) {
                    println(new StringBuffer().append(ruleRefElement.getLabel()).append("_AST = returnAST;").toString());
                }
                if (this.genAST) {
                    int autoGenType = ruleRefElement.getAutoGenType();
                    if (autoGenType != 1) {
                        if (autoGenType == 2) {
                            this.antlrTool.error("Internal: encountered ^ after rule reference");
                        }
                    } else if (this.usingCustomAST) {
                        println(new StringBuffer("astFactory->addASTChild(currentAST, static_cast<").append(namespaceAntlr).append("RefAST>(returnAST));").toString());
                    } else {
                        println("astFactory->addASTChild( currentAST, returnAST );");
                    }
                }
                if ((this.grammar instanceof LexerGrammar) && ruleRefElement.getLabel() != null) {
                    println(new StringBuffer().append(ruleRefElement.getLabel()).append("=_returnToken;").toString());
                }
                if (z) {
                    this.tabs--;
                    println("}");
                }
            }
            genErrorCatchForElement(ruleRefElement);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
        if (r4.getAutoGenType() == 1) goto L13;
     */
    @Override // antlr.CodeGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void gen(antlr.StringLiteralElement r4) {
        /*
            r3 = this;
            boolean r0 = r3.DEBUG_CODE_GENERATOR
            if (r0 == 0) goto L1e
            java.io.PrintStream r0 = java.lang.System.out
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            java.lang.String r2 = "genString("
            r1.<init>(r2)
            java.lang.StringBuffer r1 = r1.append(r4)
            java.lang.String r2 = ")"
            java.lang.StringBuffer r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.println(r1)
        L1e:
            java.lang.String r0 = r4.getLabel()
            if (r0 == 0) goto L4e
            int r0 = r3.syntacticPredLevel
            if (r0 != 0) goto L4e
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = r4.getLabel()
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r1 = " = "
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r1 = r3.lt1Value
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r1 = ";"
            java.lang.StringBuffer r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r3.println(r0)
        L4e:
            r3.genElementAST(r4)
            boolean r0 = r3.saveText
            if (r0 == 0) goto L5d
            int r1 = r4.getAutoGenType()
            r2 = 1
            if (r1 != r2) goto L5d
            goto L5e
        L5d:
            r2 = 0
        L5e:
            r3.saveText = r2
            r3.genMatch(r4)
            r3.saveText = r0
            antlr.Grammar r4 = r3.grammar
            boolean r4 = r4 instanceof antlr.TreeWalkerGrammar
            if (r4 == 0) goto L70
            java.lang.String r4 = "_t = _t->getNextSibling();"
            r3.println(r4)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CppCodeGenerator.gen(antlr.StringLiteralElement):void");
    }

    @Override // antlr.CodeGenerator
    public void gen(TokenRangeElement tokenRangeElement) {
        genErrorTryForElement(tokenRangeElement);
        if (tokenRangeElement.getLabel() != null && this.syntacticPredLevel == 0) {
            println(new StringBuffer().append(tokenRangeElement.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
        }
        genElementAST(tokenRangeElement);
        println(new StringBuffer("matchRange(").append(tokenRangeElement.beginText).append(",").append(tokenRangeElement.endText).append(");").toString());
        genErrorCatchForElement(tokenRangeElement);
    }

    @Override // antlr.CodeGenerator
    public void gen(TokenRefElement tokenRefElement) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genTokenRef(").append(tokenRefElement).append(")").toString());
        }
        if (this.grammar instanceof LexerGrammar) {
            this.antlrTool.panic("Token reference found in lexer");
        }
        genErrorTryForElement(tokenRefElement);
        if (tokenRefElement.getLabel() != null && this.syntacticPredLevel == 0) {
            println(new StringBuffer().append(tokenRefElement.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
        }
        genElementAST(tokenRefElement);
        genMatch(tokenRefElement);
        genErrorCatchForElement(tokenRefElement);
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("_t = _t->getNextSibling();");
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeElement treeElement) {
        println(new StringBuffer().append(this.labeledElementType).append(" __t").append(treeElement.ID).append(" = _t;").toString());
        if (treeElement.root.getLabel() != null) {
            println(new StringBuffer().append(treeElement.root.getLabel()).append(" = (_t == ASTNULL) ? ").append(this.labeledElementASTInit).append(" : _t;").toString());
        }
        if (treeElement.root.getAutoGenType() == 3) {
            this.antlrTool.error("Suffixing a root node with '!' is not implemented", this.grammar.getFilename(), treeElement.getLine(), treeElement.getColumn());
            treeElement.root.setAutoGenType(1);
        }
        if (treeElement.root.getAutoGenType() == 2) {
            this.antlrTool.warning("Suffixing a root node with '^' is redundant; already a root", this.grammar.getFilename(), treeElement.getLine(), treeElement.getColumn());
            treeElement.root.setAutoGenType(1);
        }
        genElementAST(treeElement.root);
        if (this.grammar.buildAST) {
            println(new StringBuffer().append(namespaceAntlr).append("ASTPair __currentAST").append(treeElement.ID).append(" = currentAST;").toString());
            println("currentAST.root = currentAST.child;");
            println(new StringBuffer("currentAST.child = ").append(this.labeledElementASTInit).append(";").toString());
        }
        if (treeElement.root instanceof WildcardElement) {
            println("if ( _t == ASTNULL ) throw MismatchedTokenException();");
        } else {
            genMatch(treeElement.root);
        }
        println("_t = _t->getFirstChild();");
        for (int i = 0; i < treeElement.getAlternatives().size(); i++) {
            for (AlternativeElement alternativeElement = treeElement.getAlternativeAt(i).head; alternativeElement != null; alternativeElement = alternativeElement.next) {
                alternativeElement.generate();
            }
        }
        if (this.grammar.buildAST) {
            println(new StringBuffer("currentAST = __currentAST").append(treeElement.ID).append(";").toString());
        }
        println(new StringBuffer("_t = __t").append(treeElement.ID).append(";").toString());
        println("_t = _t->getNextSibling();");
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeWalkerGrammar treeWalkerGrammar) throws IOException {
        setGrammar(treeWalkerGrammar);
        if (!(this.grammar instanceof TreeWalkerGrammar)) {
            this.antlrTool.panic("Internal error generating tree-walker");
        }
        genBody(treeWalkerGrammar);
        genInclude(treeWalkerGrammar);
    }

    @Override // antlr.CodeGenerator
    public void gen(WildcardElement wildcardElement) {
        if (wildcardElement.getLabel() != null && this.syntacticPredLevel == 0) {
            println(new StringBuffer().append(wildcardElement.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
        }
        genElementAST(wildcardElement);
        if (this.grammar instanceof TreeWalkerGrammar) {
            println(new StringBuffer("if ( _t == ").append(this.labeledElementASTInit).append(" ) throw ").append(namespaceAntlr).append("MismatchedTokenException();").toString());
        } else if (this.grammar instanceof LexerGrammar) {
            if ((this.grammar instanceof LexerGrammar) && (!this.saveText || wildcardElement.getAutoGenType() == 3)) {
                println("_saveIndex = text.length();");
            }
            println("matchNot(EOF/*_CHAR*/);");
            if ((this.grammar instanceof LexerGrammar) && (!this.saveText || wildcardElement.getAutoGenType() == 3)) {
                println("text.erase(_saveIndex);");
            }
        } else {
            println(new StringBuffer("matchNot(").append(getValueString(1)).append(");").toString());
        }
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("_t = _t->getNextSibling();");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0097  */
    @Override // antlr.CodeGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void gen(antlr.ZeroOrMoreBlock r10) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CppCodeGenerator.gen(antlr.ZeroOrMoreBlock):void");
    }

    protected void genAlt(Alternative alternative, AlternativeBlock alternativeBlock) {
        boolean z = this.genAST;
        boolean z2 = false;
        this.genAST = z && alternative.getAutoGen();
        boolean z3 = this.saveText;
        if (z3 && alternative.getAutoGen()) {
            z2 = true;
        }
        this.saveText = z2;
        Hashtable hashtable = this.treeVariableMap;
        this.treeVariableMap = new Hashtable();
        if (alternative.exceptionSpec != null) {
            println("try {      // for error handling");
            this.tabs++;
        }
        for (AlternativeElement alternativeElement = alternative.head; !(alternativeElement instanceof BlockEndElement); alternativeElement = alternativeElement.next) {
            alternativeElement.generate();
        }
        if (this.genAST) {
            if (alternativeBlock instanceof RuleBlock) {
                RuleBlock ruleBlock = (RuleBlock) alternativeBlock;
                if (this.usingCustomAST) {
                    println(new StringBuffer().append(ruleBlock.getRuleName()).append("_AST = static_cast<").append(this.labeledElementASTType).append(">(currentAST.root);").toString());
                } else {
                    println(new StringBuffer().append(ruleBlock.getRuleName()).append("_AST = currentAST.root;").toString());
                }
            } else if (alternativeBlock.getLabel() != null) {
                this.antlrTool.warning("Labeled subrules are not implemented", this.grammar.getFilename(), alternativeBlock.getLine(), alternativeBlock.getColumn());
            }
        }
        if (alternative.exceptionSpec != null) {
            this.tabs--;
            println("}");
            genErrorHandler(alternative.exceptionSpec);
        }
        this.genAST = z;
        this.saveText = z3;
        this.treeVariableMap = hashtable;
    }

    protected void genBitsets(Vector vector, int i, String str) {
        TokenManager tokenManager = this.grammar.tokenManager;
        println("");
        for (int i2 = 0; i2 < vector.size(); i2++) {
            BitSet bitSet = (BitSet) vector.elementAt(i2);
            bitSet.growToInclude(i);
            println(new StringBuffer("const unsigned long ").append(str).append(getBitsetName(i2)).append("_data_[] = { ").append(bitSet.toStringOfHalfWords()).append(" };").toString());
            String str2 = "// ";
            for (int i3 = 0; i3 < tokenManager.getVocabulary().size(); i3++) {
                if (bitSet.member(i3)) {
                    if (this.grammar instanceof LexerGrammar) {
                        str2 = new StringBuffer().append(str2).append(tokenManager.getVocabulary().elementAt(i3)).append(" ").toString();
                    } else {
                        str2 = new StringBuffer().append(str2).append(tokenManager.getTokenStringAt(i3)).append(" ").toString();
                    }
                    if (str2.length() > 70) {
                        println(str2);
                        str2 = "// ";
                    }
                }
            }
            if (str2 != "// ") {
                println(str2);
            }
            println(new StringBuffer("const ").append(namespaceAntlr).append("BitSet ").append(str).append(getBitsetName(i2)).append("(").append(getBitsetName(i2)).append("_data_,").append(bitSet.size() / 32).append(");").toString());
        }
    }

    protected void genBitsetsHeader(Vector vector, int i) {
        println("");
        for (int i2 = 0; i2 < vector.size(); i2++) {
            ((BitSet) vector.elementAt(i2)).growToInclude(i);
            println(new StringBuffer("static const unsigned long ").append(getBitsetName(i2)).append("_data_[];").toString());
            println(new StringBuffer("static const ").append(namespaceAntlr).append("BitSet ").append(getBitsetName(i2)).append(";").toString());
        }
    }

    private void genBlockFinish(CppBlockFinishingInfo cppBlockFinishingInfo, String str) {
        if (cppBlockFinishingInfo.needAnErrorClause && (cppBlockFinishingInfo.generatedAnIf || cppBlockFinishingInfo.generatedSwitch)) {
            if (cppBlockFinishingInfo.generatedAnIf) {
                println("else {");
            } else {
                println("{");
            }
            this.tabs++;
            println(str);
            this.tabs--;
            println("}");
        }
        if (cppBlockFinishingInfo.postscript != null) {
            println(cppBlockFinishingInfo.postscript);
        }
    }

    protected void genBlockInitAction(AlternativeBlock alternativeBlock) {
        if (alternativeBlock.initAction != null) {
            genLineNo(alternativeBlock);
            printAction(processActionForSpecialSymbols(alternativeBlock.initAction, alternativeBlock.line, this.currentRule, null));
            genLineNo2();
        }
    }

    protected void genBlockPreamble(AlternativeBlock alternativeBlock) {
        if (alternativeBlock instanceof RuleBlock) {
            RuleBlock ruleBlock = (RuleBlock) alternativeBlock;
            if (ruleBlock.labeledElements != null) {
                for (int i = 0; i < ruleBlock.labeledElements.size(); i++) {
                    AlternativeElement alternativeElement = (AlternativeElement) ruleBlock.labeledElements.elementAt(i);
                    boolean z = alternativeElement instanceof RuleRefElement;
                    if (z || ((alternativeElement instanceof AlternativeBlock) && !(alternativeElement instanceof RuleBlock) && !(alternativeElement instanceof SynPredBlock))) {
                        if (!z) {
                            AlternativeBlock alternativeBlock2 = (AlternativeBlock) alternativeElement;
                            if (alternativeBlock2.not && this.analyzer.subruleCanBeInverted(alternativeBlock2, this.grammar instanceof LexerGrammar)) {
                                println(new StringBuffer().append(this.labeledElementType).append(" ").append(alternativeElement.getLabel()).append(" = ").append(this.labeledElementInit).append(";").toString());
                                if (this.grammar.buildAST) {
                                    genASTDeclaration(alternativeElement);
                                }
                            }
                        }
                        if (this.grammar.buildAST) {
                            genASTDeclaration(alternativeElement);
                        }
                        if (this.grammar instanceof LexerGrammar) {
                            println(new StringBuffer().append(namespaceAntlr).append("RefToken ").append(alternativeElement.getLabel()).append(";").toString());
                        }
                        if (this.grammar instanceof TreeWalkerGrammar) {
                            println(new StringBuffer().append(this.labeledElementType).append(" ").append(alternativeElement.getLabel()).append(" = ").append(this.labeledElementInit).append(";").toString());
                        }
                    } else {
                        println(new StringBuffer().append(this.labeledElementType).append(" ").append(alternativeElement.getLabel()).append(" = ").append(this.labeledElementInit).append(";").toString());
                        if (this.grammar.buildAST) {
                            if (alternativeElement instanceof GrammarAtom) {
                                GrammarAtom grammarAtom = (GrammarAtom) alternativeElement;
                                if (grammarAtom.getASTNodeType() != null) {
                                    genASTDeclaration(alternativeElement, grammarAtom.getASTNodeType());
                                }
                            }
                            genASTDeclaration(alternativeElement);
                        }
                    }
                }
            }
        }
    }

    public void genBody(LexerGrammar lexerGrammar) throws IOException {
        String stringBuffer;
        this.outputFile = new StringBuffer().append(this.grammar.getClassName()).append(".cpp").toString();
        this.outputLine = 1;
        this.currentOutput = this.antlrTool.openOutputFile(this.outputFile);
        this.genAST = false;
        this.saveText = true;
        this.tabs = 0;
        genHeader(this.outputFile);
        printHeaderAction(preIncludeCpp);
        println(new StringBuffer("#include \"").append(this.grammar.getClassName()).append(".hpp\"").toString());
        println("#include <antlr/CharBuffer.hpp>");
        println("#include <antlr/TokenStreamException.hpp>");
        println("#include <antlr/TokenStreamIOException.hpp>");
        println("#include <antlr/TokenStreamRecognitionException.hpp>");
        println("#include <antlr/CharStreamException.hpp>");
        println("#include <antlr/CharStreamIOException.hpp>");
        println("#include <antlr/NoViableAltForCharException.hpp>");
        if (this.grammar.debuggingOutput) {
            println("#include <antlr/DebuggingInputBuffer.hpp>");
        }
        println("");
        printHeaderAction(postIncludeCpp);
        NameSpace nameSpace2 = nameSpace;
        if (nameSpace2 != null) {
            nameSpace2.emitDeclarations(this.currentOutput);
        }
        printAction(this.grammar.preambleAction);
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
        } else {
            String superClass = this.grammar.getSuperClass();
            if (superClass.lastIndexOf(46) != -1) {
                superClass = superClass.substring(superClass.lastIndexOf(46) + 1);
            }
            stringBuffer = new StringBuffer().append(namespaceAntlr).append(superClass).toString();
        }
        if (this.noConstructors) {
            println("#if 0");
            println("// constructor creation turned of with 'noConstructor' option");
        }
        println(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).append("(").append(namespaceStd).append("istream& in)").toString());
        this.tabs++;
        if (this.grammar.debuggingOutput) {
            println(new StringBuffer(": ").append(stringBuffer).append("(new ").append(namespaceAntlr).append("DebuggingInputBuffer(new ").append(namespaceAntlr).append("CharBuffer(in)),").append(lexerGrammar.caseSensitive).append(")").toString());
        } else {
            println(new StringBuffer(": ").append(stringBuffer).append("(new ").append(namespaceAntlr).append("CharBuffer(in),").append(lexerGrammar.caseSensitive).append(")").toString());
        }
        this.tabs--;
        println("{");
        this.tabs++;
        if (this.grammar.debuggingOutput) {
            println("setRuleNames(_ruleNames);");
            println("setSemPredNames(_semPredNames);");
            println("setupDebugging();");
        }
        println("initLiterals();");
        this.tabs--;
        println("}");
        println("");
        println(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).append("(").append(namespaceAntlr).append("InputBuffer& ib)").toString());
        this.tabs++;
        if (this.grammar.debuggingOutput) {
            println(new StringBuffer(": ").append(stringBuffer).append("(new ").append(namespaceAntlr).append("DebuggingInputBuffer(ib),").append(lexerGrammar.caseSensitive).append(")").toString());
        } else {
            println(new StringBuffer(": ").append(stringBuffer).append("(ib,").append(lexerGrammar.caseSensitive).append(")").toString());
        }
        this.tabs--;
        println("{");
        this.tabs++;
        if (this.grammar.debuggingOutput) {
            println("setRuleNames(_ruleNames);");
            println("setSemPredNames(_semPredNames);");
            println("setupDebugging();");
        }
        println("initLiterals();");
        this.tabs--;
        println("}");
        println("");
        println(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).append("(const ").append(namespaceAntlr).append("LexerSharedInputState& state)").toString());
        this.tabs++;
        println(new StringBuffer(": ").append(stringBuffer).append("(state,").append(lexerGrammar.caseSensitive).append(")").toString());
        this.tabs--;
        println("{");
        this.tabs++;
        if (this.grammar.debuggingOutput) {
            println("setRuleNames(_ruleNames);");
            println("setSemPredNames(_semPredNames);");
            println("setupDebugging();");
        }
        println("initLiterals();");
        this.tabs--;
        println("}");
        println("");
        if (this.noConstructors) {
            println("// constructor creation turned of with 'noConstructor' option");
            println("#endif");
        }
        println(new StringBuffer("void ").append(this.grammar.getClassName()).append("::initLiterals()").toString());
        println("{");
        this.tabs++;
        Enumeration tokenSymbolKeys = this.grammar.tokenManager.getTokenSymbolKeys();
        while (tokenSymbolKeys.hasMoreElements()) {
            String str = (String) tokenSymbolKeys.nextElement();
            if (str.charAt(0) == '\"') {
                TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(str);
                if (tokenSymbol instanceof StringLiteralSymbol) {
                    StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) tokenSymbol;
                    println(new StringBuffer("literals[").append(stringLiteralSymbol.getId()).append("] = ").append(stringLiteralSymbol.getTokenType()).append(";").toString());
                }
            }
        }
        this.tabs--;
        println("}");
        if (this.grammar.debuggingOutput) {
            println(new StringBuffer("const char* ").append(this.grammar.getClassName()).append("::_ruleNames[] = {").toString());
            this.tabs++;
            Enumeration elements = this.grammar.rules.elements();
            while (elements.hasMoreElements()) {
                GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
                if (grammarSymbol instanceof RuleSymbol) {
                    println(new StringBuffer("\"").append(((RuleSymbol) grammarSymbol).getId()).append("\",").toString());
                }
            }
            println("0");
            this.tabs--;
            println("};");
        }
        genNextToken();
        Enumeration elements2 = this.grammar.rules.elements();
        int i = 0;
        while (elements2.hasMoreElements()) {
            RuleSymbol ruleSymbol = (RuleSymbol) elements2.nextElement();
            if (!ruleSymbol.getId().equals("mnextToken")) {
                genRule(ruleSymbol, false, i, new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
                i++;
            }
            exitIfError();
        }
        if (this.grammar.debuggingOutput) {
            genSemPredMap(new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
        }
        genBitsets(this.bitsetsUsed, ((LexerGrammar) this.grammar).charVocabulary.size(), new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
        println("");
        NameSpace nameSpace3 = nameSpace;
        if (nameSpace3 != null) {
            nameSpace3.emitClosures(this.currentOutput);
        }
        this.currentOutput.close();
        this.currentOutput = null;
    }

    public void genInitFactory(Grammar grammar) {
        println(new StringBuffer("void ").append(grammar.getClassName()).append("::initializeASTFactory( ").append(namespaceAntlr).append("ASTFactory& factory )").toString());
        println("{");
        this.tabs++;
        if (grammar.buildAST) {
            Enumeration elements = this.astTypes.elements();
            while (elements.hasMoreElements()) {
                println((String) elements.nextElement());
            }
            println(new StringBuffer("factory.setMaxNodeType(").append(this.grammar.tokenManager.maxTokenType()).append(");").toString());
        }
        this.tabs--;
        println("}");
    }

    public void genBody(ParserGrammar parserGrammar) throws IOException {
        String stringBuffer;
        this.outputFile = new StringBuffer().append(this.grammar.getClassName()).append(".cpp").toString();
        this.outputLine = 1;
        this.currentOutput = this.antlrTool.openOutputFile(this.outputFile);
        this.genAST = this.grammar.buildAST;
        this.tabs = 0;
        genHeader(this.outputFile);
        printHeaderAction(preIncludeCpp);
        println(new StringBuffer("#include \"").append(this.grammar.getClassName()).append(".hpp\"").toString());
        println("#include <antlr/NoViableAltException.hpp>");
        println("#include <antlr/SemanticException.hpp>");
        println("#include <antlr/ASTFactory.hpp>");
        printHeaderAction(postIncludeCpp);
        NameSpace nameSpace2 = nameSpace;
        if (nameSpace2 != null) {
            nameSpace2.emitDeclarations(this.currentOutput);
        }
        printAction(this.grammar.preambleAction);
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
        } else {
            String superClass = this.grammar.getSuperClass();
            if (superClass.lastIndexOf(46) != -1) {
                superClass = superClass.substring(superClass.lastIndexOf(46) + 1);
            }
            stringBuffer = new StringBuffer().append(namespaceAntlr).append(superClass).toString();
        }
        if (this.grammar.debuggingOutput) {
            println(new StringBuffer("const char* ").append(this.grammar.getClassName()).append("::_ruleNames[] = {").toString());
            this.tabs++;
            Enumeration elements = this.grammar.rules.elements();
            while (elements.hasMoreElements()) {
                GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
                if (grammarSymbol instanceof RuleSymbol) {
                    println(new StringBuffer("\"").append(((RuleSymbol) grammarSymbol).getId()).append("\",").toString());
                }
            }
            println("0");
            this.tabs--;
            println("};");
        }
        if (this.noConstructors) {
            println("#if 0");
            println("// constructor creation turned of with 'noConstructor' option");
        }
        print(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).toString());
        println(new StringBuffer("(").append(namespaceAntlr).append("TokenBuffer& tokenBuf, int k)").toString());
        println(new StringBuffer(": ").append(stringBuffer).append("(tokenBuf,k)").toString());
        println("{");
        println("}");
        println("");
        print(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).toString());
        println(new StringBuffer("(").append(namespaceAntlr).append("TokenBuffer& tokenBuf)").toString());
        println(new StringBuffer(": ").append(stringBuffer).append("(tokenBuf,").append(this.grammar.maxk).append(")").toString());
        println("{");
        println("}");
        println("");
        print(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).toString());
        println(new StringBuffer("(").append(namespaceAntlr).append("TokenStream& lexer, int k)").toString());
        println(new StringBuffer(": ").append(stringBuffer).append("(lexer,k)").toString());
        println("{");
        println("}");
        println("");
        print(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).toString());
        println(new StringBuffer("(").append(namespaceAntlr).append("TokenStream& lexer)").toString());
        println(new StringBuffer(": ").append(stringBuffer).append("(lexer,").append(this.grammar.maxk).append(")").toString());
        println("{");
        println("}");
        println("");
        print(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).toString());
        println(new StringBuffer("(const ").append(namespaceAntlr).append("ParserSharedInputState& state)").toString());
        println(new StringBuffer(": ").append(stringBuffer).append("(state,").append(this.grammar.maxk).append(")").toString());
        println("{");
        println("}");
        println("");
        if (this.noConstructors) {
            println("// constructor creation turned of with 'noConstructor' option");
            println("#endif");
        }
        this.astTypes = new Vector();
        Enumeration elements2 = this.grammar.rules.elements();
        int i = 0;
        while (elements2.hasMoreElements()) {
            GrammarSymbol grammarSymbol2 = (GrammarSymbol) elements2.nextElement();
            if (grammarSymbol2 instanceof RuleSymbol) {
                RuleSymbol ruleSymbol = (RuleSymbol) grammarSymbol2;
                genRule(ruleSymbol, ruleSymbol.references.size() == 0, i, new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
                i++;
            }
            exitIfError();
        }
        if (this.usingCustomAST) {
            println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(this.grammar.getClassName()).append("::getAST()").toString());
            println("{");
            println("\treturn returnAST;");
            println("}");
            println("");
        }
        genInitFactory(parserGrammar);
        genTokenStrings(new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
        genBitsets(this.bitsetsUsed, this.grammar.tokenManager.maxTokenType(), new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
        if (this.grammar.debuggingOutput) {
            genSemPredMap(new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
        }
        println("");
        println("");
        NameSpace nameSpace3 = nameSpace;
        if (nameSpace3 != null) {
            nameSpace3.emitClosures(this.currentOutput);
        }
        this.currentOutput.close();
        this.currentOutput = null;
    }

    public void genBody(TreeWalkerGrammar treeWalkerGrammar) throws IOException {
        this.outputFile = new StringBuffer().append(this.grammar.getClassName()).append(".cpp").toString();
        this.outputLine = 1;
        this.currentOutput = this.antlrTool.openOutputFile(this.outputFile);
        this.genAST = this.grammar.buildAST;
        this.tabs = 0;
        genHeader(this.outputFile);
        printHeaderAction(preIncludeCpp);
        println(new StringBuffer("#include \"").append(this.grammar.getClassName()).append(".hpp\"").toString());
        println("#include <antlr/Token.hpp>");
        println("#include <antlr/AST.hpp>");
        println("#include <antlr/NoViableAltException.hpp>");
        println("#include <antlr/MismatchedTokenException.hpp>");
        println("#include <antlr/SemanticException.hpp>");
        println("#include <antlr/BitSet.hpp>");
        printHeaderAction(postIncludeCpp);
        NameSpace nameSpace2 = nameSpace;
        if (nameSpace2 != null) {
            nameSpace2.emitDeclarations(this.currentOutput);
        }
        printAction(this.grammar.preambleAction);
        if (this.grammar.superClass != null) {
            String str = this.grammar.superClass;
        } else {
            String superClass = this.grammar.getSuperClass();
            if (superClass.lastIndexOf(46) != -1) {
                superClass = superClass.substring(superClass.lastIndexOf(46) + 1);
            }
            new StringBuffer().append(namespaceAntlr).append(superClass).toString();
        }
        if (this.noConstructors) {
            println("#if 0");
            println("// constructor creation turned of with 'noConstructor' option");
        }
        println(new StringBuffer().append(this.grammar.getClassName()).append("::").append(this.grammar.getClassName()).append("()").toString());
        println(new StringBuffer("\t: ").append(namespaceAntlr).append("TreeParser() {").toString());
        this.tabs++;
        this.tabs--;
        println("}");
        if (this.noConstructors) {
            println("// constructor creation turned of with 'noConstructor' option");
            println("#endif");
        }
        println("");
        this.astTypes = new Vector();
        Enumeration elements = this.grammar.rules.elements();
        int i = 0;
        while (elements.hasMoreElements()) {
            GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
            if (grammarSymbol instanceof RuleSymbol) {
                RuleSymbol ruleSymbol = (RuleSymbol) grammarSymbol;
                genRule(ruleSymbol, ruleSymbol.references.size() == 0, i, new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
                i++;
            }
            exitIfError();
        }
        if (this.usingCustomAST) {
            println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(this.grammar.getClassName()).append("::getAST()").toString());
            println("{");
            println("\treturn returnAST;");
            println("}");
            println("");
        }
        genInitFactory(this.grammar);
        genTokenStrings(new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
        genBitsets(this.bitsetsUsed, this.grammar.tokenManager.maxTokenType(), new StringBuffer().append(this.grammar.getClassName()).append("::").toString());
        println("");
        println("");
        NameSpace nameSpace3 = nameSpace;
        if (nameSpace3 != null) {
            nameSpace3.emitClosures(this.currentOutput);
        }
        this.currentOutput.close();
        this.currentOutput = null;
    }

    protected void genCases(BitSet bitSet) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genCases(").append(bitSet).append(")").toString());
        }
        for (int i : bitSet.toArray()) {
            print("");
            _print(new StringBuffer("case ").append(getValueString(i)).append(":").toString());
            _println("");
        }
    }

    public CppBlockFinishingInfo genCommonBlock(AlternativeBlock alternativeBlock, boolean z) {
        String str;
        int i;
        boolean z2;
        boolean z3;
        String str2;
        boolean lookaheadIsEmpty;
        String lookaheadTestExpression;
        int i2;
        int i3;
        int i4;
        CppBlockFinishingInfo cppBlockFinishingInfo;
        String str3;
        String str4;
        String str5;
        CppBlockFinishingInfo cppBlockFinishingInfo2 = new CppBlockFinishingInfo();
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genCommonBlk(").append(alternativeBlock).append(")").toString());
        }
        boolean z4 = this.genAST;
        int i5 = 1;
        int i6 = 0;
        this.genAST = z4 && alternativeBlock.getAutoGen();
        boolean z5 = this.saveText;
        this.saveText = z5 && alternativeBlock.getAutoGen();
        String str6 = "";
        if (alternativeBlock.not && this.analyzer.subruleCanBeInverted(alternativeBlock, this.grammar instanceof LexerGrammar)) {
            Lookahead look = this.analyzer.look(1, alternativeBlock);
            if (alternativeBlock.getLabel() != null && this.syntacticPredLevel == 0) {
                println(new StringBuffer().append(alternativeBlock.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
            }
            genElementAST(alternativeBlock);
            if (this.grammar instanceof TreeWalkerGrammar) {
                if (this.usingCustomAST) {
                    str6 = new StringBuffer("static_cast<").append(namespaceAntlr).append("RefAST>(_t),").toString();
                } else {
                    str6 = "_t,";
                }
            }
            println(new StringBuffer("match(").append(str6).append(getBitsetName(markBitsetForGen(look.fset))).append(");").toString());
            if (this.grammar instanceof TreeWalkerGrammar) {
                println("_t = _t->getNextSibling();");
            }
            return cppBlockFinishingInfo2;
        }
        if (alternativeBlock.getAlternatives().size() == 1) {
            Alternative alternativeAt = alternativeBlock.getAlternativeAt(0);
            if (alternativeAt.synPred != null) {
                this.antlrTool.warning("Syntactic predicate superfluous for single alternative", this.grammar.getFilename(), alternativeBlock.getAlternativeAt(0).synPred.getLine(), alternativeBlock.getAlternativeAt(0).synPred.getColumn());
            }
            if (z) {
                if (alternativeAt.semPred != null) {
                    genSemPred(alternativeAt.semPred, alternativeBlock.line);
                }
                genAlt(alternativeAt, alternativeBlock);
                return cppBlockFinishingInfo2;
            }
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < alternativeBlock.getAlternatives().size()) {
            CppBlockFinishingInfo cppBlockFinishingInfo3 = cppBlockFinishingInfo2;
            boolean z6 = z4;
            int i9 = i5;
            boolean z7 = z5;
            String str7 = str6;
            if (suitableForCaseExpression(alternativeBlock.getAlternativeAt(i7))) {
                i8++;
            }
            i7++;
            i5 = i9;
            str6 = str7;
            z4 = z6;
            z5 = z7;
            cppBlockFinishingInfo2 = cppBlockFinishingInfo3;
            i6 = 0;
        }
        String str8 = "{";
        String str9 = "}";
        if (i8 >= this.makeSwitchThreshold) {
            String lookaheadString = lookaheadString(i5);
            if (this.grammar instanceof TreeWalkerGrammar) {
                println(new StringBuffer("if (_t == ").append(this.labeledElementASTInit).append(" )").toString());
                this.tabs += i5;
                println("_t = ASTNULL;");
                this.tabs -= i5;
            }
            println(new StringBuffer("switch ( ").append(lookaheadString).append(") {").toString());
            int i10 = i6;
            while (i10 < alternativeBlock.alternatives.size()) {
                Alternative alternativeAt2 = alternativeBlock.getAlternativeAt(i10);
                if (suitableForCaseExpression(alternativeAt2)) {
                    Lookahead lookahead = alternativeAt2.cache[i5];
                    if (lookahead.fset.degree() == 0 && !lookahead.containsEpsilon()) {
                        str5 = str6;
                        this.antlrTool.warning("Alternate omitted due to empty prediction set", this.grammar.getFilename(), alternativeAt2.head.getLine(), alternativeAt2.head.getColumn());
                    } else {
                        str5 = str6;
                        genCases(lookahead.fset);
                        println("{");
                        this.tabs++;
                        genAlt(alternativeAt2, alternativeBlock);
                        println("break;");
                        this.tabs--;
                        println("}");
                    }
                } else {
                    str5 = str6;
                }
                i10++;
                str6 = str5;
                i5 = 1;
            }
            println("default:");
            this.tabs += i5;
            i = i5;
            str = str6;
        } else {
            str = str6;
            i = 0;
        }
        int i11 = this.grammar instanceof LexerGrammar ? this.grammar.maxk : 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 >= 0) {
            if (this.DEBUG_CODE_GENERATOR) {
                z2 = z4;
                System.out.println(new StringBuffer("checking depth ").append(i11).toString());
            } else {
                z2 = z4;
            }
            int i14 = 0;
            while (i14 < alternativeBlock.alternatives.size()) {
                Alternative alternativeAt3 = alternativeBlock.getAlternativeAt(i14);
                if (this.DEBUG_CODE_GENERATOR) {
                    z3 = z5;
                    str2 = str9;
                    System.out.println(new StringBuffer("genAlt: ").append(i14).toString());
                } else {
                    z3 = z5;
                    str2 = str9;
                }
                if (i != 0 && suitableForCaseExpression(alternativeAt3)) {
                    if (this.DEBUG_CODE_GENERATOR) {
                        System.out.println("ignoring alt because it was in the switch");
                    }
                } else {
                    if (this.grammar instanceof LexerGrammar) {
                        int i15 = alternativeAt3.lookaheadDepth;
                        if (i15 == Integer.MAX_VALUE) {
                            i15 = this.grammar.maxk;
                        }
                        while (i15 >= 1 && alternativeAt3.cache[i15].containsEpsilon()) {
                            i15--;
                        }
                        if (i15 != i11) {
                            if (this.DEBUG_CODE_GENERATOR) {
                                System.out.println(new StringBuffer("ignoring alt because effectiveDepth!=altDepth;").append(i15).append("!=").append(i11).toString());
                            }
                        } else {
                            lookaheadIsEmpty = lookaheadIsEmpty(alternativeAt3, i15);
                            lookaheadTestExpression = getLookaheadTestExpression(alternativeAt3, i15);
                        }
                    } else {
                        lookaheadIsEmpty = lookaheadIsEmpty(alternativeAt3, this.grammar.maxk);
                        lookaheadTestExpression = getLookaheadTestExpression(alternativeAt3, this.grammar.maxk);
                    }
                    i2 = i11;
                    i3 = i;
                    i4 = i14;
                    int i16 = i12;
                    if (alternativeAt3.cache[1].fset.degree() <= 127 || !suitableForCaseExpression(alternativeAt3)) {
                        if (lookaheadIsEmpty && alternativeAt3.semPred == null && alternativeAt3.synPred == null) {
                            if (i13 == 0) {
                                println(str8);
                            } else {
                                println("else {");
                            }
                            cppBlockFinishingInfo2.needAnErrorClause = false;
                        } else {
                            if (alternativeAt3.semPred != null) {
                                cppBlockFinishingInfo = cppBlockFinishingInfo2;
                                str3 = str8;
                                String processActionForSpecialSymbols = processActionForSpecialSymbols(alternativeAt3.semPred, alternativeBlock.line, this.currentRule, new ActionTransInfo());
                                if (((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar)) && this.grammar.debuggingOutput) {
                                    lookaheadTestExpression = new StringBuffer("(").append(lookaheadTestExpression).append("&& fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.PREDICTING,").append(addSemPred(this.charFormatter.escapeString(processActionForSpecialSymbols))).append(",").append(processActionForSpecialSymbols).append("))").toString();
                                } else {
                                    lookaheadTestExpression = new StringBuffer("(").append(lookaheadTestExpression).append("&&(").append(processActionForSpecialSymbols).append("))").toString();
                                }
                            } else {
                                cppBlockFinishingInfo = cppBlockFinishingInfo2;
                                str3 = str8;
                            }
                            if (i13 > 0) {
                                if (alternativeAt3.synPred != null) {
                                    println("else {");
                                    this.tabs++;
                                    genSynPred(alternativeAt3.synPred, lookaheadTestExpression);
                                    i12 = i16 + 1;
                                    i13++;
                                    this.tabs++;
                                    genAlt(alternativeAt3, alternativeBlock);
                                    this.tabs--;
                                    str4 = str2;
                                    println(str4);
                                    str9 = str4;
                                    i14 = i4 + 1;
                                    z5 = z3;
                                    i11 = i2;
                                    cppBlockFinishingInfo2 = cppBlockFinishingInfo;
                                    i = i3;
                                    str8 = str3;
                                } else {
                                    println(new StringBuffer("else if ").append(lookaheadTestExpression).append(" {").toString());
                                }
                            } else if (alternativeAt3.synPred != null) {
                                genSynPred(alternativeAt3.synPred, lookaheadTestExpression);
                            } else {
                                if (this.grammar instanceof TreeWalkerGrammar) {
                                    println(new StringBuffer("if (_t == ").append(this.labeledElementASTInit).append(" )").toString());
                                    this.tabs++;
                                    println("_t = ASTNULL;");
                                    this.tabs--;
                                }
                                println(new StringBuffer("if ").append(lookaheadTestExpression).append(" {").toString());
                            }
                            i12 = i16;
                            i13++;
                            this.tabs++;
                            genAlt(alternativeAt3, alternativeBlock);
                            this.tabs--;
                            str4 = str2;
                            println(str4);
                            str9 = str4;
                            i14 = i4 + 1;
                            z5 = z3;
                            i11 = i2;
                            cppBlockFinishingInfo2 = cppBlockFinishingInfo;
                            i = i3;
                            str8 = str3;
                        }
                    } else if (i13 == 0) {
                        if (this.grammar instanceof TreeWalkerGrammar) {
                            println(new StringBuffer("if (_t == ").append(this.labeledElementASTInit).append(" )").toString());
                            this.tabs++;
                            println("_t = ASTNULL;");
                            this.tabs--;
                        }
                        println(new StringBuffer("if ").append(lookaheadTestExpression).append(" {").toString());
                    } else {
                        println(new StringBuffer("else if ").append(lookaheadTestExpression).append(" {").toString());
                    }
                    cppBlockFinishingInfo = cppBlockFinishingInfo2;
                    str3 = str8;
                    i12 = i16;
                    i13++;
                    this.tabs++;
                    genAlt(alternativeAt3, alternativeBlock);
                    this.tabs--;
                    str4 = str2;
                    println(str4);
                    str9 = str4;
                    i14 = i4 + 1;
                    z5 = z3;
                    i11 = i2;
                    cppBlockFinishingInfo2 = cppBlockFinishingInfo;
                    i = i3;
                    str8 = str3;
                }
                cppBlockFinishingInfo = cppBlockFinishingInfo2;
                i4 = i14;
                i2 = i11;
                i3 = i;
                str3 = str8;
                str4 = str2;
                str9 = str4;
                i14 = i4 + 1;
                z5 = z3;
                i11 = i2;
                cppBlockFinishingInfo2 = cppBlockFinishingInfo;
                i = i3;
                str8 = str3;
            }
            i11--;
            z4 = z2;
        }
        String str10 = str;
        for (int i17 = 1; i17 <= i12; i17++) {
            this.tabs--;
            str10 = new StringBuffer().append(str10).append(str9).toString();
        }
        this.genAST = z4;
        this.saveText = z5;
        if (i != 0) {
            this.tabs--;
            cppBlockFinishingInfo2.postscript = new StringBuffer().append(str10).append(str9).toString();
            cppBlockFinishingInfo2.generatedSwitch = true;
            cppBlockFinishingInfo2.generatedAnIf = i13 > 0;
        } else {
            cppBlockFinishingInfo2.postscript = str10;
            cppBlockFinishingInfo2.generatedSwitch = false;
            cppBlockFinishingInfo2.generatedAnIf = i13 > 0;
        }
        return cppBlockFinishingInfo2;
    }

    private static boolean suitableForCaseExpression(Alternative alternative) {
        return alternative.lookaheadDepth == 1 && alternative.semPred == null && !alternative.cache[1].containsEpsilon() && alternative.cache[1].fset.degree() <= 127;
    }

    private void genElementAST(AlternativeElement alternativeElement) {
        String str;
        String str2;
        if ((this.grammar instanceof TreeWalkerGrammar) && !this.grammar.buildAST) {
            if (alternativeElement.getLabel() == null) {
                String str3 = this.lt1Value;
                String stringBuffer = new StringBuffer("tmp").append(this.astVarNumber).append("_AST").toString();
                this.astVarNumber++;
                mapTreeVariable(alternativeElement, stringBuffer);
                println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(stringBuffer).append("_in = ").append(str3).append(";").toString());
            }
        } else if (this.grammar.buildAST && this.syntacticPredLevel == 0) {
            boolean z = false;
            boolean z2 = this.genAST && !(alternativeElement.getLabel() == null && alternativeElement.getAutoGenType() == 3);
            if (alternativeElement.getAutoGenType() != 3 && (alternativeElement instanceof TokenRefElement)) {
                z2 = true;
            }
            if (this.grammar.hasSyntacticPredicate && z2) {
                z = true;
            }
            if (alternativeElement.getLabel() != null) {
                str2 = alternativeElement.getLabel();
                str = alternativeElement.getLabel();
            } else {
                String str4 = this.lt1Value;
                String stringBuffer2 = new StringBuffer("tmp").append(this.astVarNumber).toString();
                this.astVarNumber++;
                str = stringBuffer2;
                str2 = str4;
            }
            if (z2) {
                if (alternativeElement instanceof GrammarAtom) {
                    GrammarAtom grammarAtom = (GrammarAtom) alternativeElement;
                    if (grammarAtom.getASTNodeType() != null) {
                        genASTDeclaration(alternativeElement, str, new StringBuffer("Ref").append(grammarAtom.getASTNodeType()).toString());
                    } else {
                        genASTDeclaration(alternativeElement, str, this.labeledElementASTType);
                    }
                } else {
                    genASTDeclaration(alternativeElement, str, this.labeledElementASTType);
                }
            }
            String stringBuffer3 = new StringBuffer().append(str).append("_AST").toString();
            mapTreeVariable(alternativeElement, stringBuffer3);
            if (this.grammar instanceof TreeWalkerGrammar) {
                println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(stringBuffer3).append("_in = ").append(this.labeledElementASTInit).append(";").toString());
            }
            if (z) {
                println("if ( inputState->guessing == 0 ) {");
                this.tabs++;
            }
            if (alternativeElement.getLabel() != null) {
                if (alternativeElement instanceof GrammarAtom) {
                    println(new StringBuffer().append(stringBuffer3).append(" = ").append(getASTCreateString((GrammarAtom) alternativeElement, str2)).append(";").toString());
                } else {
                    println(new StringBuffer().append(stringBuffer3).append(" = ").append(getASTCreateString(str2)).append(";").toString());
                }
            }
            if (alternativeElement.getLabel() == null && z2) {
                String str5 = this.lt1Value;
                if (alternativeElement instanceof GrammarAtom) {
                    println(new StringBuffer().append(stringBuffer3).append(" = ").append(getASTCreateString((GrammarAtom) alternativeElement, str5)).append(";").toString());
                } else {
                    println(new StringBuffer().append(stringBuffer3).append(" = ").append(getASTCreateString(str5)).append(";").toString());
                }
                if (this.grammar instanceof TreeWalkerGrammar) {
                    println(new StringBuffer().append(stringBuffer3).append("_in = ").append(str5).append(";").toString());
                }
            }
            if (this.genAST) {
                int autoGenType = alternativeElement.getAutoGenType();
                if (autoGenType != 1) {
                    if (autoGenType == 2) {
                        if (this.usingCustomAST || ((alternativeElement instanceof GrammarAtom) && ((GrammarAtom) alternativeElement).getASTNodeType() != null)) {
                            println(new StringBuffer("astFactory->makeASTRoot(currentAST, static_cast<").append(namespaceAntlr).append("RefAST>(").append(stringBuffer3).append("));").toString());
                        } else {
                            println(new StringBuffer("astFactory->makeASTRoot(currentAST, ").append(stringBuffer3).append(");").toString());
                        }
                    }
                } else if (this.usingCustomAST || ((alternativeElement instanceof GrammarAtom) && ((GrammarAtom) alternativeElement).getASTNodeType() != null)) {
                    println(new StringBuffer("astFactory->addASTChild(currentAST, static_cast<").append(namespaceAntlr).append("RefAST>(").append(stringBuffer3).append("));").toString());
                } else {
                    println(new StringBuffer("astFactory->addASTChild(currentAST, ").append(stringBuffer3).append(");").toString());
                }
            }
            if (z) {
                this.tabs--;
                println("}");
            }
        }
    }

    private void genErrorCatchForElement(AlternativeElement alternativeElement) {
        if (alternativeElement.getLabel() == null) {
            return;
        }
        String str = alternativeElement.enclosingRuleName;
        if (this.grammar instanceof LexerGrammar) {
            str = CodeGenerator.encodeLexerRuleName(alternativeElement.enclosingRuleName);
        }
        RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(str);
        if (ruleSymbol == null) {
            this.antlrTool.panic("Enclosing rule not found!");
        }
        ExceptionSpec findExceptionSpec = ruleSymbol.block.findExceptionSpec(alternativeElement.getLabel());
        if (findExceptionSpec != null) {
            this.tabs--;
            println("}");
            genErrorHandler(findExceptionSpec);
        }
    }

    private void genErrorHandler(ExceptionSpec exceptionSpec) {
        for (int i = 0; i < exceptionSpec.handlers.size(); i++) {
            ExceptionHandler exceptionHandler = (ExceptionHandler) exceptionSpec.handlers.elementAt(i);
            println(new StringBuffer("catch (").append(exceptionHandler.exceptionTypeAndName.getText()).append(") {").toString());
            this.tabs++;
            if (this.grammar.hasSyntacticPredicate) {
                println("if (inputState->guessing==0) {");
                this.tabs++;
            }
            ActionTransInfo actionTransInfo = new ActionTransInfo();
            genLineNo(exceptionHandler.action);
            printAction(processActionForSpecialSymbols(exceptionHandler.action.getText(), exceptionHandler.action.getLine(), this.currentRule, actionTransInfo));
            genLineNo2();
            if (this.grammar.hasSyntacticPredicate) {
                this.tabs--;
                println("} else {");
                this.tabs++;
                println("throw;");
                this.tabs--;
                println("}");
            }
            this.tabs--;
            println("}");
        }
    }

    private void genErrorTryForElement(AlternativeElement alternativeElement) {
        if (alternativeElement.getLabel() == null) {
            return;
        }
        String str = alternativeElement.enclosingRuleName;
        if (this.grammar instanceof LexerGrammar) {
            str = CodeGenerator.encodeLexerRuleName(alternativeElement.enclosingRuleName);
        }
        RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(str);
        if (ruleSymbol == null) {
            this.antlrTool.panic("Enclosing rule not found!");
        }
        if (ruleSymbol.block.findExceptionSpec(alternativeElement.getLabel()) != null) {
            println("try { // for error handling");
            this.tabs++;
        }
    }

    protected void genHeader(String str) {
        println(new StringBuffer("/* $ANTLR ").append(Tool.version).append(": \"").append(this.antlrTool.fileMinusPath(this.antlrTool.grammarFile)).append("\" -> \"").append(str).append("\"$ */").toString());
    }

    public void genInclude(LexerGrammar lexerGrammar) throws IOException {
        String stringBuffer;
        String stripFrontBack;
        this.outputFile = new StringBuffer().append(this.grammar.getClassName()).append(".hpp").toString();
        this.outputLine = 1;
        this.currentOutput = this.antlrTool.openOutputFile(this.outputFile);
        this.genAST = false;
        this.saveText = true;
        this.tabs = 0;
        println(new StringBuffer("#ifndef INC_").append(this.grammar.getClassName()).append("_hpp_").toString());
        println(new StringBuffer("#define INC_").append(this.grammar.getClassName()).append("_hpp_").toString());
        println("");
        printHeaderAction(preIncludeHpp);
        println("#include <antlr/config.hpp>");
        genHeader(this.outputFile);
        println("#include <antlr/CommonToken.hpp>");
        println("#include <antlr/InputBuffer.hpp>");
        println("#include <antlr/BitSet.hpp>");
        println(new StringBuffer("#include \"").append(this.grammar.tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append(".hpp\"").toString());
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
            println(new StringBuffer("#include \"").append(stringBuffer).append(".hpp\"").toString());
        } else {
            String superClass = this.grammar.getSuperClass();
            if (superClass.lastIndexOf(46) != -1) {
                superClass = superClass.substring(superClass.lastIndexOf(46) + 1);
            }
            println(new StringBuffer("#include <antlr/").append(superClass).append(".hpp>").toString());
            stringBuffer = new StringBuffer().append(namespaceAntlr).append(superClass).toString();
        }
        printHeaderAction(postIncludeHpp);
        NameSpace nameSpace2 = nameSpace;
        if (nameSpace2 != null) {
            nameSpace2.emitDeclarations(this.currentOutput);
        }
        printHeaderAction("");
        if (this.grammar.comment != null) {
            _println(this.grammar.comment);
        }
        print(new StringBuffer("class ").append(this.grammar.getClassName()).append(" : public ").append(stringBuffer).toString());
        println(new StringBuffer(", public ").append(this.grammar.tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).toString());
        Token token = (Token) this.grammar.options.get("classHeaderSuffix");
        if (token != null && (stripFrontBack = StringUtils.stripFrontBack(token.getText(), "\"", "\"")) != null) {
            print(new StringBuffer(", ").append(stripFrontBack).toString());
        }
        println("{");
        if (this.grammar.classMemberAction != null) {
            genLineNo(this.grammar.classMemberAction);
            print(processActionForSpecialSymbols(this.grammar.classMemberAction.getText(), this.grammar.classMemberAction.getLine(), this.currentRule, null));
            genLineNo2();
        }
        this.tabs = 0;
        println("private:");
        this.tabs = 1;
        println("void initLiterals();");
        this.tabs = 0;
        println("public:");
        this.tabs = 1;
        println("bool getCaseSensitiveLiterals() const");
        println("{");
        this.tabs++;
        println(new StringBuffer("return ").append(lexerGrammar.caseSensitiveLiterals).append(";").toString());
        this.tabs--;
        println("}");
        this.tabs = 0;
        println("public:");
        this.tabs = 1;
        if (this.noConstructors) {
            this.tabs = 0;
            println("#if 0");
            println("// constructor creation turned of with 'noConstructor' option");
            this.tabs = 1;
        }
        println(new StringBuffer().append(this.grammar.getClassName()).append("(").append(namespaceStd).append("istream& in);").toString());
        println(new StringBuffer().append(this.grammar.getClassName()).append("(").append(namespaceAntlr).append("InputBuffer& ib);").toString());
        println(new StringBuffer().append(this.grammar.getClassName()).append("(const ").append(namespaceAntlr).append("LexerSharedInputState& state);").toString());
        if (this.noConstructors) {
            this.tabs = 0;
            println("// constructor creation turned of with 'noConstructor' option");
            println("#endif");
            this.tabs = 1;
        }
        println(new StringBuffer().append(namespaceAntlr).append("RefToken nextToken();").toString());
        Enumeration elements = this.grammar.rules.elements();
        while (elements.hasMoreElements()) {
            RuleSymbol ruleSymbol = (RuleSymbol) elements.nextElement();
            if (!ruleSymbol.getId().equals("mnextToken")) {
                genRuleHeader(ruleSymbol, false);
            }
            exitIfError();
        }
        this.tabs = 0;
        println("private:");
        this.tabs = 1;
        if (this.grammar.debuggingOutput) {
            println("static const char* _ruleNames[];");
        }
        if (this.grammar.debuggingOutput) {
            println("static const char* _semPredNames[];");
        }
        genBitsetsHeader(this.bitsetsUsed, ((LexerGrammar) this.grammar).charVocabulary.size());
        this.tabs = 0;
        println("};");
        println("");
        NameSpace nameSpace3 = nameSpace;
        if (nameSpace3 != null) {
            nameSpace3.emitClosures(this.currentOutput);
        }
        println(new StringBuffer("#endif /*INC_").append(this.grammar.getClassName()).append("_hpp_*/").toString());
        this.currentOutput.close();
        this.currentOutput = null;
    }

    public void genInclude(ParserGrammar parserGrammar) throws IOException {
        String stringBuffer;
        String stripFrontBack;
        this.outputFile = new StringBuffer().append(this.grammar.getClassName()).append(".hpp").toString();
        this.outputLine = 1;
        this.currentOutput = this.antlrTool.openOutputFile(this.outputFile);
        this.genAST = this.grammar.buildAST;
        this.tabs = 0;
        println(new StringBuffer("#ifndef INC_").append(this.grammar.getClassName()).append("_hpp_").toString());
        println(new StringBuffer("#define INC_").append(this.grammar.getClassName()).append("_hpp_").toString());
        println("");
        printHeaderAction(preIncludeHpp);
        println("#include <antlr/config.hpp>");
        genHeader(this.outputFile);
        println("#include <antlr/TokenStream.hpp>");
        println("#include <antlr/TokenBuffer.hpp>");
        println(new StringBuffer("#include \"").append(this.grammar.tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append(".hpp\"").toString());
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
            println(new StringBuffer("#include \"").append(stringBuffer).append(".hpp\"").toString());
        } else {
            String superClass = this.grammar.getSuperClass();
            if (superClass.lastIndexOf(46) != -1) {
                superClass = superClass.substring(superClass.lastIndexOf(46) + 1);
            }
            println(new StringBuffer("#include <antlr/").append(superClass).append(".hpp>").toString());
            stringBuffer = new StringBuffer().append(namespaceAntlr).append(superClass).toString();
        }
        println("");
        printHeaderAction(postIncludeHpp);
        NameSpace nameSpace2 = nameSpace;
        if (nameSpace2 != null) {
            nameSpace2.emitDeclarations(this.currentOutput);
        }
        printHeaderAction("");
        if (this.grammar.comment != null) {
            _println(this.grammar.comment);
        }
        print(new StringBuffer("class ").append(this.grammar.getClassName()).append(" : public ").append(stringBuffer).toString());
        println(new StringBuffer(", public ").append(this.grammar.tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).toString());
        Token token = (Token) this.grammar.options.get("classHeaderSuffix");
        if (token != null && (stripFrontBack = StringUtils.stripFrontBack(token.getText(), "\"", "\"")) != null) {
            print(new StringBuffer(", ").append(stripFrontBack).toString());
        }
        println("{");
        if (this.grammar.debuggingOutput) {
            println("public: static const char* _ruleNames[];");
        }
        if (this.grammar.classMemberAction != null) {
            genLineNo(this.grammar.classMemberAction.getLine());
            print(processActionForSpecialSymbols(this.grammar.classMemberAction.getText(), this.grammar.classMemberAction.getLine(), this.currentRule, null));
            genLineNo2();
        }
        println("public:");
        this.tabs = 1;
        println(new StringBuffer("void initializeASTFactory( ").append(namespaceAntlr).append("ASTFactory& factory );").toString());
        this.tabs = 0;
        if (this.noConstructors) {
            println("#if 0");
            println("// constructor creation turned of with 'noConstructor' option");
        }
        println("protected:");
        this.tabs = 1;
        println(new StringBuffer().append(this.grammar.getClassName()).append("(").append(namespaceAntlr).append("TokenBuffer& tokenBuf, int k);").toString());
        this.tabs = 0;
        println("public:");
        this.tabs = 1;
        println(new StringBuffer().append(this.grammar.getClassName()).append("(").append(namespaceAntlr).append("TokenBuffer& tokenBuf);").toString());
        this.tabs = 0;
        println("protected:");
        this.tabs = 1;
        println(new StringBuffer().append(this.grammar.getClassName()).append("(").append(namespaceAntlr).append("TokenStream& lexer, int k);").toString());
        this.tabs = 0;
        println("public:");
        this.tabs = 1;
        println(new StringBuffer().append(this.grammar.getClassName()).append("(").append(namespaceAntlr).append("TokenStream& lexer);").toString());
        println(new StringBuffer().append(this.grammar.getClassName()).append("(const ").append(namespaceAntlr).append("ParserSharedInputState& state);").toString());
        if (this.noConstructors) {
            this.tabs = 0;
            println("// constructor creation turned of with 'noConstructor' option");
            println("#endif");
            this.tabs = 1;
        }
        println("int getNumTokens() const");
        println("{");
        this.tabs++;
        println(new StringBuffer("return ").append(this.grammar.getClassName()).append("::NUM_TOKENS;").toString());
        this.tabs--;
        println("}");
        println("const char* getTokenName( int type ) const");
        println("{");
        this.tabs++;
        println("if( type > getNumTokens() ) return 0;");
        println(new StringBuffer("return ").append(this.grammar.getClassName()).append("::tokenNames[type];").toString());
        this.tabs--;
        println("}");
        println("const char* const* getTokenNames() const");
        println("{");
        this.tabs++;
        println(new StringBuffer("return ").append(this.grammar.getClassName()).append("::tokenNames;").toString());
        this.tabs--;
        println("}");
        Enumeration elements = this.grammar.rules.elements();
        while (elements.hasMoreElements()) {
            GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
            if (grammarSymbol instanceof RuleSymbol) {
                RuleSymbol ruleSymbol = (RuleSymbol) grammarSymbol;
                genRuleHeader(ruleSymbol, ruleSymbol.references.size() == 0);
            }
            exitIfError();
        }
        if (this.usingCustomAST) {
            this.tabs = 0;
            println("public:");
            this.tabs = 1;
            println(new StringBuffer().append(this.labeledElementASTType).append(" getAST();").toString());
            println("");
            this.tabs = 0;
            println("protected:");
            this.tabs = 1;
            println(new StringBuffer().append(this.labeledElementASTType).append(" returnAST;").toString());
        }
        this.tabs = 0;
        println("private:");
        this.tabs = 1;
        println("static const char* tokenNames[];");
        _println("#ifndef NO_STATIC_CONSTS");
        println(new StringBuffer("static const int NUM_TOKENS = ").append(this.grammar.tokenManager.getVocabulary().size()).append(";").toString());
        _println("#else");
        println("enum {");
        println(new StringBuffer("\tNUM_TOKENS = ").append(this.grammar.tokenManager.getVocabulary().size()).toString());
        println("};");
        _println("#endif");
        genBitsetsHeader(this.bitsetsUsed, this.grammar.tokenManager.maxTokenType());
        if (this.grammar.debuggingOutput) {
            println("static const char* _semPredNames[];");
        }
        this.tabs = 0;
        println("};");
        println("");
        NameSpace nameSpace3 = nameSpace;
        if (nameSpace3 != null) {
            nameSpace3.emitClosures(this.currentOutput);
        }
        println(new StringBuffer("#endif /*INC_").append(this.grammar.getClassName()).append("_hpp_*/").toString());
        this.currentOutput.close();
        this.currentOutput = null;
    }

    public void genInclude(TreeWalkerGrammar treeWalkerGrammar) throws IOException {
        String stringBuffer;
        String stripFrontBack;
        this.outputFile = new StringBuffer().append(this.grammar.getClassName()).append(".hpp").toString();
        this.outputLine = 1;
        this.currentOutput = this.antlrTool.openOutputFile(this.outputFile);
        this.genAST = this.grammar.buildAST;
        this.tabs = 0;
        println(new StringBuffer("#ifndef INC_").append(this.grammar.getClassName()).append("_hpp_").toString());
        println(new StringBuffer("#define INC_").append(this.grammar.getClassName()).append("_hpp_").toString());
        println("");
        printHeaderAction(preIncludeHpp);
        println("#include <antlr/config.hpp>");
        println(new StringBuffer("#include \"").append(this.grammar.tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append(".hpp\"").toString());
        genHeader(this.outputFile);
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
            println(new StringBuffer("#include \"").append(stringBuffer).append(".hpp\"").toString());
        } else {
            String superClass = this.grammar.getSuperClass();
            if (superClass.lastIndexOf(46) != -1) {
                superClass = superClass.substring(superClass.lastIndexOf(46) + 1);
            }
            println(new StringBuffer("#include <antlr/").append(superClass).append(".hpp>").toString());
            stringBuffer = new StringBuffer().append(namespaceAntlr).append(superClass).toString();
        }
        println("");
        printHeaderAction(postIncludeHpp);
        NameSpace nameSpace2 = nameSpace;
        if (nameSpace2 != null) {
            nameSpace2.emitDeclarations(this.currentOutput);
        }
        printHeaderAction("");
        if (this.grammar.comment != null) {
            _println(this.grammar.comment);
        }
        print(new StringBuffer("class ").append(this.grammar.getClassName()).append(" : public ").append(stringBuffer).toString());
        println(new StringBuffer(", public ").append(this.grammar.tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).toString());
        Token token = (Token) this.grammar.options.get("classHeaderSuffix");
        if (token != null && (stripFrontBack = StringUtils.stripFrontBack(token.getText(), "\"", "\"")) != null) {
            print(new StringBuffer(", ").append(stripFrontBack).toString());
        }
        println("{");
        if (this.grammar.classMemberAction != null) {
            genLineNo(this.grammar.classMemberAction.getLine());
            print(processActionForSpecialSymbols(this.grammar.classMemberAction.getText(), this.grammar.classMemberAction.getLine(), this.currentRule, null));
            genLineNo2();
        }
        this.tabs = 0;
        println("public:");
        if (this.noConstructors) {
            println("#if 0");
            println("// constructor creation turned of with 'noConstructor' option");
        }
        this.tabs = 1;
        println(new StringBuffer().append(this.grammar.getClassName()).append("();").toString());
        if (this.noConstructors) {
            this.tabs = 0;
            println("#endif");
            this.tabs = 1;
        }
        println(new StringBuffer("void initializeASTFactory( ").append(namespaceAntlr).append("ASTFactory& factory );").toString());
        println("int getNumTokens() const");
        println("{");
        this.tabs++;
        println(new StringBuffer("return ").append(this.grammar.getClassName()).append("::NUM_TOKENS;").toString());
        this.tabs--;
        println("}");
        println("const char* getTokenName( int type ) const");
        println("{");
        this.tabs++;
        println("if( type > getNumTokens() ) return 0;");
        println(new StringBuffer("return ").append(this.grammar.getClassName()).append("::tokenNames[type];").toString());
        this.tabs--;
        println("}");
        Enumeration elements = this.grammar.rules.elements();
        while (elements.hasMoreElements()) {
            GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
            if (grammarSymbol instanceof RuleSymbol) {
                RuleSymbol ruleSymbol = (RuleSymbol) grammarSymbol;
                genRuleHeader(ruleSymbol, ruleSymbol.references.size() == 0);
            }
            exitIfError();
        }
        if (this.usingCustomAST) {
            this.tabs = 0;
            println("public:");
            this.tabs = 1;
            println(new StringBuffer().append(this.labeledElementASTType).append(" getAST();").toString());
            println("");
            this.tabs = 0;
            println("protected:");
            this.tabs = 1;
            println(new StringBuffer().append(this.labeledElementASTType).append(" returnAST;").toString());
            println(new StringBuffer().append(this.labeledElementASTType).append(" _retTree;").toString());
        }
        this.tabs = 0;
        println("private:");
        this.tabs = 1;
        println("static const char* tokenNames[];");
        _println("#ifndef NO_STATIC_CONSTS");
        println(new StringBuffer("static const int NUM_TOKENS = ").append(this.grammar.tokenManager.getVocabulary().size()).append(";").toString());
        _println("#else");
        println("enum {");
        println(new StringBuffer("\tNUM_TOKENS = ").append(this.grammar.tokenManager.getVocabulary().size()).toString());
        println("};");
        _println("#endif");
        genBitsetsHeader(this.bitsetsUsed, this.grammar.tokenManager.maxTokenType());
        this.tabs = 0;
        println("};");
        println("");
        NameSpace nameSpace3 = nameSpace;
        if (nameSpace3 != null) {
            nameSpace3.emitClosures(this.currentOutput);
        }
        println(new StringBuffer("#endif /*INC_").append(this.grammar.getClassName()).append("_hpp_*/").toString());
        this.currentOutput.close();
        this.currentOutput = null;
    }

    protected void genASTDeclaration(AlternativeElement alternativeElement) {
        genASTDeclaration(alternativeElement, this.labeledElementASTType);
    }

    protected void genASTDeclaration(AlternativeElement alternativeElement, String str) {
        genASTDeclaration(alternativeElement, alternativeElement.getLabel(), str);
    }

    protected void genASTDeclaration(AlternativeElement alternativeElement, String str, String str2) {
        if (this.declaredASTVariables.contains(alternativeElement)) {
            return;
        }
        String str3 = this.labeledElementASTInit;
        if (alternativeElement instanceof GrammarAtom) {
            GrammarAtom grammarAtom = (GrammarAtom) alternativeElement;
            if (grammarAtom.getASTNodeType() != null) {
                str3 = new StringBuffer("static_cast<Ref").append(grammarAtom.getASTNodeType()).append(">(").append(this.labeledElementASTInit).append(")").toString();
            }
        }
        println(new StringBuffer().append(str2).append(" ").append(str).append("_AST = ").append(str3).append(";").toString());
        this.declaredASTVariables.add(alternativeElement);
    }

    private void genLiteralsTest() {
        println("_ttype = testLiteralsTable(_ttype);");
    }

    private void genLiteralsTestForPartialToken() {
        println("_ttype = testLiteralsTable(text.substr(_begin, text.length()-_begin),_ttype);");
    }

    protected void genMatch(GrammarAtom grammarAtom) {
        if (grammarAtom instanceof StringLiteralElement) {
            if (this.grammar instanceof LexerGrammar) {
                genMatchUsingAtomText(grammarAtom);
            } else {
                genMatchUsingAtomTokenType(grammarAtom);
            }
        } else if (grammarAtom instanceof CharLiteralElement) {
            if (this.grammar instanceof LexerGrammar) {
                genMatchUsingAtomText(grammarAtom);
            } else {
                this.antlrTool.error(new StringBuffer("cannot ref character literals in grammar: ").append(grammarAtom).toString());
            }
        } else if (grammarAtom instanceof TokenRefElement) {
            genMatchUsingAtomText(grammarAtom);
        } else if (grammarAtom instanceof WildcardElement) {
            gen((WildcardElement) grammarAtom);
        }
    }

    protected void genMatchUsingAtomText(GrammarAtom grammarAtom) {
        String str;
        if (!(this.grammar instanceof TreeWalkerGrammar)) {
            str = "";
        } else if (this.usingCustomAST) {
            str = new StringBuffer("static_cast<").append(namespaceAntlr).append("RefAST>(_t),").toString();
        } else {
            str = "_t,";
        }
        if ((this.grammar instanceof LexerGrammar) && (!this.saveText || grammarAtom.getAutoGenType() == 3)) {
            println("_saveIndex=text.length();");
        }
        print(grammarAtom.not ? "matchNot(" : "match(");
        _print(str);
        if (grammarAtom.atomText.equals("EOF")) {
            _print(new StringBuffer().append(namespaceAntlr).append("Token::EOF_TYPE").toString());
        } else {
            _print(textOrChar(grammarAtom.atomText));
        }
        _println(");");
        if (this.grammar instanceof LexerGrammar) {
            if (!this.saveText || grammarAtom.getAutoGenType() == 3) {
                println("text.erase(_saveIndex);");
            }
        }
    }

    protected void genMatchUsingAtomTokenType(GrammarAtom grammarAtom) {
        String str;
        if (!(this.grammar instanceof TreeWalkerGrammar)) {
            str = "";
        } else if (this.usingCustomAST) {
            str = new StringBuffer("static_cast<").append(namespaceAntlr).append("RefAST>(_t),").toString();
        } else {
            str = "_t,";
        }
        println(new StringBuffer().append(grammarAtom.not ? "matchNot(" : "match(").append(new StringBuffer().append(str).append(getValueString(grammarAtom.getType())).toString()).append(");").toString());
    }

    public void genNextToken() {
        String stringBuffer;
        for (int i = 0; i < this.grammar.rules.size(); i++) {
            RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.rules.elementAt(i);
            if (ruleSymbol.isDefined() && ruleSymbol.access.equals("public")) {
                RuleBlock createNextTokenRule = MakeGrammar.createNextTokenRule(this.grammar, this.grammar.rules, "nextToken");
                RuleSymbol ruleSymbol2 = new RuleSymbol("mnextToken");
                ruleSymbol2.setDefined();
                ruleSymbol2.setBlock(createNextTokenRule);
                ruleSymbol2.access = "private";
                this.grammar.define(ruleSymbol2);
                this.grammar.theLLkAnalyzer.deterministic(createNextTokenRule);
                String str = ((LexerGrammar) this.grammar).filterMode ? ((LexerGrammar) this.grammar).filterRule : null;
                println("");
                println(new StringBuffer().append(namespaceAntlr).append("RefToken ").append(this.grammar.getClassName()).append("::nextToken()").toString());
                println("{");
                this.tabs++;
                println(new StringBuffer().append(namespaceAntlr).append("RefToken theRetToken;").toString());
                println("for (;;) {");
                this.tabs++;
                println(new StringBuffer().append(namespaceAntlr).append("RefToken theRetToken;").toString());
                println(new StringBuffer("int _ttype = ").append(namespaceAntlr).append("Token::INVALID_TYPE;").toString());
                if (((LexerGrammar) this.grammar).filterMode) {
                    println("setCommitToPath(false);");
                    if (str != null) {
                        if (!this.grammar.isDefined(CodeGenerator.encodeLexerRuleName(str))) {
                            this.grammar.antlrTool.error(new StringBuffer("Filter rule ").append(str).append(" does not exist in this lexer").toString());
                        } else {
                            RuleSymbol ruleSymbol3 = (RuleSymbol) this.grammar.getSymbol(CodeGenerator.encodeLexerRuleName(str));
                            if (!ruleSymbol3.isDefined()) {
                                this.grammar.antlrTool.error(new StringBuffer("Filter rule ").append(str).append(" does not exist in this lexer").toString());
                            } else if (ruleSymbol3.access.equals("public")) {
                                this.grammar.antlrTool.error(new StringBuffer("Filter rule ").append(str).append(" must be protected").toString());
                            }
                        }
                        println("int _m;");
                        println("_m = mark();");
                    }
                }
                println("resetText();");
                println("try {   // for lexical and char stream error handling");
                this.tabs++;
                for (int i2 = 0; i2 < createNextTokenRule.getAlternatives().size(); i2++) {
                    if (createNextTokenRule.getAlternativeAt(i2).cache[1].containsEpsilon()) {
                        this.antlrTool.warning("found optional path in nextToken()");
                    }
                }
                String property = System.getProperty("line.separator");
                CppBlockFinishingInfo genCommonBlock = genCommonBlock(createNextTokenRule, false);
                String stringBuffer2 = new StringBuffer().append(new StringBuffer("if (LA(1)==EOF_CHAR)").append(property).append("\t\t\t\t{").append(property).append("\t\t\t\t\tuponEOF();").append(property).append("\t\t\t\t\t_returnToken = makeToken(").append(namespaceAntlr).append("Token::EOF_TYPE);").append(property).append("\t\t\t\t}").toString()).append(property).append("\t\t\t\t").toString();
                if (!((LexerGrammar) this.grammar).filterMode) {
                    stringBuffer = new StringBuffer().append(stringBuffer2).append("else {").append(this.throwNoViable).append("}").toString();
                } else if (str == null) {
                    stringBuffer = new StringBuffer().append(stringBuffer2).append("else {consume(); goto tryAgain;}").toString();
                } else {
                    stringBuffer = new StringBuffer().append(stringBuffer2).append("else {").append(property).append("\t\t\t\t\tcommit();").append(property).append("\t\t\t\t\ttry {m").append(str).append("(false);}").append(property).append("\t\t\t\t\tcatch(").append(namespaceAntlr).append("RecognitionException& e) {").append(property).append("\t\t\t\t\t\t// catastrophic failure").append(property).append("\t\t\t\t\t\treportError(e);").append(property).append("\t\t\t\t\t\tconsume();").append(property).append("\t\t\t\t\t}").append(property).append("\t\t\t\t\tgoto tryAgain;").append(property).append("\t\t\t\t}").toString();
                }
                genBlockFinish(genCommonBlock, stringBuffer);
                if (((LexerGrammar) this.grammar).filterMode && str != null) {
                    println("commit();");
                }
                println(new StringBuffer("if ( !_returnToken )").append(property).append("\t\t\t\tgoto tryAgain; // found SKIP token").append(property).toString());
                println("_ttype = _returnToken->getType();");
                if (((LexerGrammar) this.grammar).getTestLiterals()) {
                    genLiteralsTest();
                }
                println("_returnToken->setType(_ttype);");
                println("return _returnToken;");
                this.tabs--;
                println("}");
                println(new StringBuffer("catch (").append(namespaceAntlr).append("RecognitionException& e) {").toString());
                this.tabs++;
                if (((LexerGrammar) this.grammar).filterMode) {
                    if (str == null) {
                        println("if ( !getCommitToPath() ) {");
                        this.tabs++;
                        println("consume();");
                        println("goto tryAgain;");
                        this.tabs--;
                        println("}");
                    } else {
                        println("if ( !getCommitToPath() ) {");
                        this.tabs++;
                        println("rewind(_m);");
                        println("resetText();");
                        println(new StringBuffer("try {m").append(str).append("(false);}").toString());
                        println(new StringBuffer("catch(").append(namespaceAntlr).append("RecognitionException& ee) {").toString());
                        println("\t// horrendous failure: error in filter rule");
                        println("\treportError(ee);");
                        println("\tconsume();");
                        println("}");
                        this.tabs--;
                        println("}");
                        println("else");
                    }
                }
                if (createNextTokenRule.getDefaultErrorHandler()) {
                    println("{");
                    this.tabs++;
                    println("reportError(e);");
                    println("consume();");
                    this.tabs--;
                    println("}");
                } else {
                    this.tabs++;
                    println(new StringBuffer("throw ").append(namespaceAntlr).append("TokenStreamRecognitionException(e);").toString());
                    this.tabs--;
                }
                this.tabs--;
                println("}");
                println(new StringBuffer("catch (").append(namespaceAntlr).append("CharStreamIOException& csie) {").toString());
                println(new StringBuffer("\tthrow ").append(namespaceAntlr).append("TokenStreamIOException(csie.io);").toString());
                println("}");
                println(new StringBuffer("catch (").append(namespaceAntlr).append("CharStreamException& cse) {").toString());
                println(new StringBuffer("\tthrow ").append(namespaceAntlr).append("TokenStreamException(cse.getMessage());").toString());
                println("}");
                _println("tryAgain:;");
                this.tabs--;
                println("}");
                this.tabs--;
                println("}");
                println("");
                return;
            }
        }
        println("");
        println(new StringBuffer().append(namespaceAntlr).append("RefToken ").append(this.grammar.getClassName()).append("::nextToken() { return ").append(namespaceAntlr).append("RefToken(new ").append(namespaceAntlr).append("CommonToken(").append(namespaceAntlr).append("Token::EOF_TYPE, \"\")); }").toString());
        println("");
    }

    public void genRule(RuleSymbol ruleSymbol, boolean z, int i, String str) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genRule(").append(ruleSymbol.getId()).append(")").toString());
        }
        if (!ruleSymbol.isDefined()) {
            this.antlrTool.error(new StringBuffer("undefined rule: ").append(ruleSymbol.getId()).toString());
            return;
        }
        RuleBlock block = ruleSymbol.getBlock();
        this.currentRule = block;
        this.currentASTResult = ruleSymbol.getId();
        this.declaredASTVariables.clear();
        boolean z2 = this.genAST;
        this.genAST = z2 && block.getAutoGen();
        this.saveText = block.getAutoGen();
        if (ruleSymbol.comment != null) {
            _println(ruleSymbol.comment);
        }
        if (block.returnAction != null) {
            _print(new StringBuffer().append(extractTypeOfAction(block.returnAction, block.getLine(), block.getColumn())).append(" ").toString());
        } else {
            _print("void ");
        }
        _print(new StringBuffer().append(str).append(ruleSymbol.getId()).append("(").toString());
        _print(this.commonExtraParams);
        if (this.commonExtraParams.length() != 0 && block.argAction != null) {
            _print(",");
        }
        if (block.argAction != null) {
            _println("");
            this.tabs++;
            println(block.argAction);
            this.tabs--;
            print(") ");
        } else {
            _print(") ");
        }
        _println("{");
        this.tabs++;
        if (this.grammar.traceRules) {
            if (this.grammar instanceof TreeWalkerGrammar) {
                if (this.usingCustomAST) {
                    println(new StringBuffer("Tracer traceInOut(this,\"").append(ruleSymbol.getId()).append("\",static_cast<").append(namespaceAntlr).append("RefAST>(_t));").toString());
                } else {
                    println(new StringBuffer("Tracer traceInOut(this,\"").append(ruleSymbol.getId()).append("\",_t);").toString());
                }
            } else {
                println(new StringBuffer("Tracer traceInOut(this, \"").append(ruleSymbol.getId()).append("\");").toString());
            }
        }
        if (block.returnAction != null) {
            genLineNo(block);
            println(new StringBuffer().append(block.returnAction).append(";").toString());
            genLineNo2();
        }
        if (!this.commonLocalVars.equals("")) {
            println(this.commonLocalVars);
        }
        if (this.grammar instanceof LexerGrammar) {
            if (ruleSymbol.getId().equals("mEOF")) {
                println(new StringBuffer("_ttype = ").append(namespaceAntlr).append("Token::EOF_TYPE;").toString());
            } else {
                println(new StringBuffer("_ttype = ").append(ruleSymbol.getId().substring(1)).append(";").toString());
            }
            println("int _saveIndex;");
        }
        if (this.grammar.debuggingOutput) {
            if (this.grammar instanceof ParserGrammar) {
                println(new StringBuffer("fireEnterRule(").append(i).append(",0);").toString());
            } else if (this.grammar instanceof LexerGrammar) {
                println(new StringBuffer("fireEnterRule(").append(i).append(",_ttype);").toString());
            }
        }
        if (this.grammar instanceof TreeWalkerGrammar) {
            println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(ruleSymbol.getId()).append("_AST_in = _t;").toString());
        }
        if (this.grammar.buildAST) {
            println(new StringBuffer("returnAST = ").append(this.labeledElementASTInit).append(";").toString());
            println(new StringBuffer().append(namespaceAntlr).append("ASTPair currentAST;").toString());
            println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(ruleSymbol.getId()).append("_AST = ").append(this.labeledElementASTInit).append(";").toString());
        }
        genBlockPreamble(block);
        genBlockInitAction(block);
        println("");
        ExceptionSpec findExceptionSpec = block.findExceptionSpec("");
        if (findExceptionSpec != null || block.getDefaultErrorHandler()) {
            println("try {      // for error handling");
            this.tabs++;
        }
        if (block.alternatives.size() == 1) {
            Alternative alternativeAt = block.getAlternativeAt(0);
            String str2 = alternativeAt.semPred;
            if (str2 != null) {
                genSemPred(str2, this.currentRule.line);
            }
            if (alternativeAt.synPred != null) {
                this.antlrTool.warning("Syntactic predicate ignored for single alternative", this.grammar.getFilename(), alternativeAt.synPred.getLine(), alternativeAt.synPred.getColumn());
            }
            genAlt(alternativeAt, block);
        } else {
            this.grammar.theLLkAnalyzer.deterministic(block);
            genBlockFinish(genCommonBlock(block, false), this.throwNoViable);
        }
        if (findExceptionSpec != null || block.getDefaultErrorHandler()) {
            this.tabs--;
            println("}");
        }
        if (findExceptionSpec != null) {
            genErrorHandler(findExceptionSpec);
        } else if (block.getDefaultErrorHandler()) {
            println(new StringBuffer("catch (").append(this.exceptionThrown).append("& ex) {").toString());
            this.tabs++;
            if (this.grammar.hasSyntacticPredicate) {
                println("if( inputState->guessing == 0 ) {");
                this.tabs++;
            }
            println("reportError(ex);");
            if (!(this.grammar instanceof TreeWalkerGrammar)) {
                String bitsetName = getBitsetName(markBitsetForGen(this.grammar.theLLkAnalyzer.FOLLOW(1, block.endNode).fset));
                println("consume();");
                println(new StringBuffer("consumeUntil(").append(bitsetName).append(");").toString());
            } else {
                println(new StringBuffer("if ( _t != ").append(this.labeledElementASTInit).append(" )").toString());
                this.tabs++;
                println("_t = _t->getNextSibling();");
                this.tabs--;
            }
            if (this.grammar.hasSyntacticPredicate) {
                this.tabs--;
                println("} else {");
                this.tabs++;
                println("throw;");
                this.tabs--;
                println("}");
            }
            this.tabs--;
            println("}");
        }
        if (this.grammar.buildAST) {
            println(new StringBuffer("returnAST = ").append(ruleSymbol.getId()).append("_AST;").toString());
        }
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("_retTree = _t;");
        }
        if (block.getTestLiterals()) {
            if (ruleSymbol.access.equals("protected")) {
                genLiteralsTestForPartialToken();
            } else {
                genLiteralsTest();
            }
        }
        if (this.grammar instanceof LexerGrammar) {
            println(new StringBuffer("if ( _createToken && _token==").append(namespaceAntlr).append("nullToken && _ttype!=").append(namespaceAntlr).append("Token::SKIP ) {").toString());
            println("   _token = makeToken(_ttype);");
            println("   _token->setText(text.substr(_begin, text.length()-_begin));");
            println("}");
            println("_returnToken = _token;");
            println("_saveIndex=0;");
        }
        if (block.returnAction != null) {
            println(new StringBuffer("return ").append(extractIdOfAction(block.returnAction, block.getLine(), block.getColumn())).append(";").toString());
        }
        this.tabs--;
        println("}");
        println("");
        this.genAST = z2;
    }

    public void genRuleHeader(RuleSymbol ruleSymbol, boolean z) {
        this.tabs = 1;
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genRuleHeader(").append(ruleSymbol.getId()).append(")").toString());
        }
        if (!ruleSymbol.isDefined()) {
            this.antlrTool.error(new StringBuffer("undefined rule: ").append(ruleSymbol.getId()).toString());
            return;
        }
        RuleBlock block = ruleSymbol.getBlock();
        this.currentRule = block;
        this.currentASTResult = ruleSymbol.getId();
        boolean z2 = this.genAST;
        this.genAST = z2 && block.getAutoGen();
        this.saveText = block.getAutoGen();
        print(new StringBuffer().append(ruleSymbol.access).append(": ").toString());
        if (block.returnAction != null) {
            _print(new StringBuffer().append(extractTypeOfAction(block.returnAction, block.getLine(), block.getColumn())).append(" ").toString());
        } else {
            _print("void ");
        }
        _print(new StringBuffer().append(ruleSymbol.getId()).append("(").toString());
        _print(this.commonExtraParams);
        if (this.commonExtraParams.length() != 0 && block.argAction != null) {
            _print(",");
        }
        if (block.argAction != null) {
            _println("");
            this.tabs++;
            println(block.argAction);
            this.tabs--;
            print(")");
        } else {
            _print(")");
        }
        _println(";");
        this.tabs--;
        this.genAST = z2;
    }

    private void GenRuleInvocation(RuleRefElement ruleRefElement) {
        _print(new StringBuffer().append(ruleRefElement.targetRule).append("(").toString());
        if (this.grammar instanceof LexerGrammar) {
            if (ruleRefElement.getLabel() != null) {
                _print("true");
            } else {
                _print("false");
            }
            if (this.commonExtraArgs.length() != 0 || ruleRefElement.args != null) {
                _print(",");
            }
        }
        _print(this.commonExtraArgs);
        if (this.commonExtraArgs.length() != 0 && ruleRefElement.args != null) {
            _print(",");
        }
        RuleSymbol ruleSymbol = (RuleSymbol) this.grammar.getSymbol(ruleRefElement.targetRule);
        if (ruleRefElement.args != null) {
            ActionTransInfo actionTransInfo = new ActionTransInfo();
            String processActionForSpecialSymbols = processActionForSpecialSymbols(ruleRefElement.args, ruleRefElement.line, this.currentRule, actionTransInfo);
            if (actionTransInfo.assignToRoot || actionTransInfo.refRuleRoot != null) {
                this.antlrTool.error(new StringBuffer("Arguments of rule reference '").append(ruleRefElement.targetRule).append("' cannot set or ref #").append(this.currentRule.getRuleName()).append(" on line ").append(ruleRefElement.getLine()).toString());
            }
            _print(processActionForSpecialSymbols);
            if (ruleSymbol.block.argAction == null) {
                this.antlrTool.warning(new StringBuffer("Rule '").append(ruleRefElement.targetRule).append("' accepts no arguments").toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
            }
        }
        _println(");");
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("_t = _retTree;");
        }
    }

    protected void genSemPred(String str, int i) {
        String processActionForSpecialSymbols = processActionForSpecialSymbols(str, i, this.currentRule, new ActionTransInfo());
        String escapeString = this.charFormatter.escapeString(processActionForSpecialSymbols);
        if (this.grammar.debuggingOutput && ((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar))) {
            processActionForSpecialSymbols = new StringBuffer("fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.VALIDATING,").append(addSemPred(escapeString)).append(",").append(processActionForSpecialSymbols).append(")").toString();
        }
        println(new StringBuffer("if (!(").append(processActionForSpecialSymbols).append("))").toString());
        this.tabs++;
        println(new StringBuffer("throw ").append(namespaceAntlr).append("SemanticException(\"").append(escapeString).append("\");").toString());
        this.tabs--;
    }

    protected void genSemPredMap(String str) {
        Enumeration elements = this.semPreds.elements();
        println(new StringBuffer("const char* ").append(str).append("_semPredNames[] = {").toString());
        this.tabs++;
        while (elements.hasMoreElements()) {
            println(new StringBuffer("\"").append(elements.nextElement()).append("\",").toString());
        }
        println("0");
        this.tabs--;
        println("};");
    }

    protected void genSynPred(SynPredBlock synPredBlock, String str) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("gen=>(").append(synPredBlock).append(")").toString());
        }
        println(new StringBuffer("bool synPredMatched").append(synPredBlock.ID).append(" = false;").toString());
        println(new StringBuffer("if (").append(str).append(") {").toString());
        this.tabs++;
        if (this.grammar instanceof TreeWalkerGrammar) {
            println(new StringBuffer().append(this.labeledElementType).append(" __t").append(synPredBlock.ID).append(" = _t;").toString());
        } else {
            println(new StringBuffer("int _m").append(synPredBlock.ID).append(" = mark();").toString());
        }
        println(new StringBuffer("synPredMatched").append(synPredBlock.ID).append(" = true;").toString());
        println("inputState->guessing++;");
        if (this.grammar.debuggingOutput && ((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar))) {
            println("fireSyntacticPredicateStarted();");
        }
        this.syntacticPredLevel++;
        println("try {");
        this.tabs++;
        gen(synPredBlock);
        this.tabs--;
        println("}");
        println(new StringBuffer("catch (").append(this.exceptionThrown).append("& pe) {").toString());
        this.tabs++;
        println(new StringBuffer("synPredMatched").append(synPredBlock.ID).append(" = false;").toString());
        this.tabs--;
        println("}");
        if (this.grammar instanceof TreeWalkerGrammar) {
            println(new StringBuffer("_t = __t").append(synPredBlock.ID).append(";").toString());
        } else {
            println(new StringBuffer("rewind(_m").append(synPredBlock.ID).append(");").toString());
        }
        println("inputState->guessing--;");
        if (this.grammar.debuggingOutput && ((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar))) {
            println(new StringBuffer("if (synPredMatched").append(synPredBlock.ID).append(")").toString());
            println("  fireSyntacticPredicateSucceeded();");
            println("else");
            println("  fireSyntacticPredicateFailed();");
        }
        this.syntacticPredLevel--;
        this.tabs--;
        println("}");
        println(new StringBuffer("if ( synPredMatched").append(synPredBlock.ID).append(" ) {").toString());
    }

    public void genTokenStrings(String str) {
        TokenSymbol tokenSymbol;
        println(new StringBuffer("const char* ").append(str).append("tokenNames[] = {").toString());
        this.tabs++;
        Vector vocabulary = this.grammar.tokenManager.getVocabulary();
        for (int i = 0; i < vocabulary.size(); i++) {
            String str2 = (String) vocabulary.elementAt(i);
            if (str2 == null) {
                str2 = new StringBuffer("<").append(String.valueOf(i)).append(">").toString();
            }
            if (!str2.startsWith("\"") && !str2.startsWith("<") && (tokenSymbol = this.grammar.tokenManager.getTokenSymbol(str2)) != null && tokenSymbol.getParaphrase() != null) {
                str2 = StringUtils.stripFrontBack(tokenSymbol.getParaphrase(), "\"", "\"");
            }
            print(this.charFormatter.literalString(str2));
            _println(",");
        }
        println("0");
        this.tabs--;
        println("};");
    }

    protected void genTokenTypes(TokenManager tokenManager) throws IOException {
        this.outputFile = new StringBuffer().append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append(".hpp").toString();
        this.outputLine = 1;
        this.currentOutput = this.antlrTool.openOutputFile(this.outputFile);
        this.tabs = 0;
        println(new StringBuffer("#ifndef INC_").append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append("_hpp_").toString());
        println(new StringBuffer("#define INC_").append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append("_hpp_").toString());
        println("");
        NameSpace nameSpace2 = nameSpace;
        if (nameSpace2 != null) {
            nameSpace2.emitDeclarations(this.currentOutput);
        }
        genHeader(this.outputFile);
        println(new StringBuffer("struct ").append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append(" {").toString());
        this.tabs++;
        println("enum {");
        this.tabs++;
        Vector vocabulary = tokenManager.getVocabulary();
        println("EOF_ = 1,");
        for (int i = 4; i < vocabulary.size(); i++) {
            String str = (String) vocabulary.elementAt(i);
            if (str != null) {
                if (str.startsWith("\"")) {
                    StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) tokenManager.getTokenSymbol(str);
                    if (stringLiteralSymbol == null) {
                        this.antlrTool.panic(new StringBuffer("String literal ").append(str).append(" not in symbol table").toString());
                    } else if (stringLiteralSymbol.label != null) {
                        println(new StringBuffer().append(stringLiteralSymbol.label).append(" = ").append(i).append(",").toString());
                    } else {
                        String mangleLiteral = mangleLiteral(str);
                        if (mangleLiteral != null) {
                            println(new StringBuffer().append(mangleLiteral).append(" = ").append(i).append(",").toString());
                            stringLiteralSymbol.label = mangleLiteral;
                        } else {
                            println(new StringBuffer("// ").append(str).append(" = ").append(i).toString());
                        }
                    }
                } else if (!str.startsWith("<")) {
                    println(new StringBuffer().append(str).append(" = ").append(i).append(",").toString());
                }
            }
        }
        println("NULL_TREE_LOOKAHEAD = 3");
        this.tabs--;
        println("};");
        this.tabs--;
        println("};");
        NameSpace nameSpace3 = nameSpace;
        if (nameSpace3 != null) {
            nameSpace3.emitClosures(this.currentOutput);
        }
        println(new StringBuffer("#endif /*INC_").append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).append("_hpp_*/").toString());
        this.currentOutput.close();
        this.currentOutput = null;
        exitIfError();
    }

    @Override // antlr.CodeGenerator
    public String processStringForASTConstructor(String str) {
        return this.usingCustomAST ? (((this.grammar instanceof TreeWalkerGrammar) || (this.grammar instanceof ParserGrammar)) && !this.grammar.tokenManager.tokenDefined(str)) ? new StringBuffer("static_cast<").append(namespaceAntlr).append("RefAST>(").append(str).append(")").toString() : str : str;
    }

    @Override // antlr.CodeGenerator
    public String getASTCreateString(Vector vector) {
        if (vector.size() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(new StringBuffer().append(this.labeledElementASTType).append("(astFactory->make((new ").append(namespaceAntlr).append("ASTArray(").append(vector.size()).append("))").toString());
        for (int i = 0; i < vector.size(); i++) {
            stringBuffer.append(new StringBuffer("->add(").append(vector.elementAt(i)).append(")").toString());
        }
        stringBuffer.append("))");
        return stringBuffer.toString();
    }

    @Override // antlr.CodeGenerator
    public String getASTCreateString(GrammarAtom grammarAtom, String str) {
        if (grammarAtom != null && grammarAtom.getASTNodeType() != null) {
            this.astTypes.appendElement(new StringBuffer("factory.registerFactory(").append(grammarAtom.getType()).append(", \"").append(grammarAtom.getASTNodeType()).append("\", ").append(grammarAtom.getASTNodeType()).append("::factory);").toString());
            return new StringBuffer("astFactory->create(").append(str).append(")").toString();
        }
        boolean z = str.indexOf(44) != -1 ? this.grammar.tokenManager.tokenDefined(str.substring(0, str.indexOf(44))) : false;
        if (!this.usingCustomAST || !(this.grammar instanceof TreeWalkerGrammar) || this.grammar.tokenManager.tokenDefined(str) || z) {
            return new StringBuffer("astFactory->create(").append(str).append(")").toString();
        }
        return new StringBuffer("astFactory->create(static_cast<").append(namespaceAntlr).append("RefAST>(").append(str).append("))").toString();
    }

    public String getASTCreateString(String str) {
        if (this.usingCustomAST) {
            return new StringBuffer("static_cast<").append(this.labeledElementASTType).append(">(astFactory->create(static_cast<").append(namespaceAntlr).append("RefAST>(").append(str).append(")))").toString();
        }
        return new StringBuffer("astFactory->create(").append(str).append(")").toString();
    }

    protected String getLookaheadTestExpression(Lookahead[] lookaheadArr, int i) {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append("(");
        int i2 = 1;
        boolean z = true;
        while (i2 <= i) {
            BitSet bitSet = lookaheadArr[i2].fset;
            if (!z) {
                stringBuffer.append(") && (");
            }
            if (lookaheadArr[i2].containsEpsilon()) {
                stringBuffer.append("true");
            } else {
                stringBuffer.append(getLookaheadTestTerm(i2, bitSet));
            }
            i2++;
            z = false;
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    protected String getLookaheadTestExpression(Alternative alternative, int i) {
        int i2 = alternative.lookaheadDepth;
        if (i2 == Integer.MAX_VALUE) {
            i2 = this.grammar.maxk;
        }
        if (i == 0) {
            return "true";
        }
        return new StringBuffer("(").append(getLookaheadTestExpression(alternative.cache, i2)).append(")").toString();
    }

    protected String getLookaheadTestTerm(int i, BitSet bitSet) {
        String lookaheadString = lookaheadString(i);
        int[] array = bitSet.toArray();
        if (CodeGenerator.elementsAreRange(array)) {
            return getRangeExpression(i, array);
        }
        int degree = bitSet.degree();
        if (degree == 0) {
            return "true";
        }
        if (degree >= this.bitsetTestThreshold) {
            return new StringBuffer().append(getBitsetName(markBitsetForGen(bitSet))).append(".member(").append(lookaheadString).append(")").toString();
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < array.length; i2++) {
            String valueString = getValueString(array[i2]);
            if (i2 > 0) {
                stringBuffer.append(" || ");
            }
            stringBuffer.append(lookaheadString);
            stringBuffer.append(" == ");
            stringBuffer.append(valueString);
        }
        return stringBuffer.toString();
    }

    public String getRangeExpression(int i, int[] iArr) {
        if (!CodeGenerator.elementsAreRange(iArr)) {
            this.antlrTool.panic("getRangeExpression called with non-range");
        }
        return new StringBuffer("(").append(lookaheadString(i)).append(" >= ").append(getValueString(iArr[0])).append(" && ").append(lookaheadString(i)).append(" <= ").append(getValueString(iArr[iArr.length - 1])).append(")").toString();
    }

    private String getValueString(int i) {
        if (this.grammar instanceof LexerGrammar) {
            return this.charFormatter.literalChar(i);
        }
        TokenSymbol tokenSymbolAt = this.grammar.tokenManager.getTokenSymbolAt(i);
        if (tokenSymbolAt == null) {
            return new StringBuffer("").append(i).toString();
        }
        String id = tokenSymbolAt.getId();
        if (!(tokenSymbolAt instanceof StringLiteralSymbol)) {
            return id.equals("EOF") ? new StringBuffer().append(namespaceAntlr).append("Token::EOF_TYPE").toString() : id;
        }
        String label = ((StringLiteralSymbol) tokenSymbolAt).getLabel();
        return (label == null && (label = mangleLiteral(id)) == null) ? String.valueOf(i) : label;
    }

    protected boolean lookaheadIsEmpty(Alternative alternative, int i) {
        int i2 = alternative.lookaheadDepth;
        if (i2 == Integer.MAX_VALUE) {
            i2 = this.grammar.maxk;
        }
        for (int i3 = 1; i3 <= i2 && i3 <= i; i3++) {
            if (alternative.cache[i3].fset.degree() != 0) {
                return false;
            }
        }
        return true;
    }

    private String lookaheadString(int i) {
        if (this.grammar instanceof TreeWalkerGrammar) {
            return "_t->getType()";
        }
        return new StringBuffer("LA(").append(i).append(")").toString();
    }

    private String mangleLiteral(String str) {
        String str2 = Tool.literalsPrefix;
        for (int i = 1; i < str.length() - 1; i++) {
            if (!Character.isLetter(str.charAt(i)) && str.charAt(i) != '_') {
                return null;
            }
            str2 = new StringBuffer().append(str2).append(str.charAt(i)).toString();
        }
        return Tool.upperCaseMangledLiterals ? str2.toUpperCase() : str2;
    }

    @Override // antlr.CodeGenerator
    public String mapTreeId(String str, ActionTransInfo actionTransInfo) {
        boolean z;
        if (this.currentRule == null) {
            return str;
        }
        if (this.grammar instanceof TreeWalkerGrammar) {
            z = true;
            boolean z2 = !this.grammar.buildAST;
            if (str.length() <= 3 || str.lastIndexOf("_in") != str.length() - 3) {
                z = z2;
            } else {
                str = str.substring(0, str.length() - 3);
            }
        } else {
            z = false;
        }
        for (int i = 0; i < this.currentRule.labeledElements.size(); i++) {
            if (((AlternativeElement) this.currentRule.labeledElements.elementAt(i)).getLabel().equals(str)) {
                return z ? str : new StringBuffer().append(str).append("_AST").toString();
            }
        }
        String str2 = (String) this.treeVariableMap.get(str);
        if (str2 != null) {
            if (str2 == NONUNIQUE) {
                this.antlrTool.error(new StringBuffer("Ambiguous reference to AST element ").append(str).append(" in rule ").append(this.currentRule.getRuleName()).toString());
                return null;
            } else if (!str2.equals(this.currentRule.getRuleName())) {
                return z ? new StringBuffer().append(str2).append("_in").toString() : str2;
            } else {
                this.antlrTool.error(new StringBuffer("Ambiguous reference to AST element ").append(str).append(" in rule ").append(this.currentRule.getRuleName()).toString());
                return null;
            }
        }
        if (str.equals(this.currentRule.getRuleName())) {
            str = (z ? new StringBuffer().append(str).append("_AST_in") : new StringBuffer().append(str).append("_AST")).toString();
            if (actionTransInfo != null && !z) {
                actionTransInfo.refRuleRoot = str;
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void mapTreeVariable(antlr.AlternativeElement r2, java.lang.String r3) {
        /*
            r1 = this;
            boolean r0 = r2 instanceof antlr.TreeElement
            if (r0 == 0) goto Lc
            antlr.TreeElement r2 = (antlr.TreeElement) r2
            antlr.GrammarAtom r2 = r2.root
            r1.mapTreeVariable(r2, r3)
            return
        Lc:
            java.lang.String r0 = r2.getLabel()
            if (r0 != 0) goto L24
            boolean r0 = r2 instanceof antlr.TokenRefElement
            if (r0 == 0) goto L1b
            antlr.TokenRefElement r2 = (antlr.TokenRefElement) r2
            java.lang.String r2 = r2.atomText
            goto L25
        L1b:
            boolean r0 = r2 instanceof antlr.RuleRefElement
            if (r0 == 0) goto L24
            antlr.RuleRefElement r2 = (antlr.RuleRefElement) r2
            java.lang.String r2 = r2.targetRule
            goto L25
        L24:
            r2 = 0
        L25:
            if (r2 == 0) goto L41
            java.util.Hashtable r0 = r1.treeVariableMap
            java.lang.Object r0 = r0.get(r2)
            if (r0 == 0) goto L3c
            java.util.Hashtable r3 = r1.treeVariableMap
            r3.remove(r2)
            java.util.Hashtable r3 = r1.treeVariableMap
            java.lang.String r0 = antlr.CppCodeGenerator.NONUNIQUE
            r3.put(r2, r0)
            goto L41
        L3c:
            java.util.Hashtable r0 = r1.treeVariableMap
            r0.put(r2, r3)
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CppCodeGenerator.mapTreeVariable(antlr.AlternativeElement, java.lang.String):void");
    }

    @Override // antlr.CodeGenerator
    protected String processActionForSpecialSymbols(String str, int i, RuleBlock ruleBlock, ActionTransInfo actionTransInfo) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (this.grammar == null) {
            return str;
        }
        if ((!this.grammar.buildAST || str.indexOf(35) == -1) && !(this.grammar instanceof TreeWalkerGrammar) && (!((this.grammar instanceof LexerGrammar) || (this.grammar instanceof ParserGrammar)) || str.indexOf(36) == -1)) {
            return str;
        }
        ActionLexer actionLexer = new ActionLexer(str, ruleBlock, this, actionTransInfo);
        actionLexer.setLineOffset(i);
        actionLexer.setFilename(this.grammar.getFilename());
        actionLexer.setTool(this.antlrTool);
        try {
            actionLexer.mACTION(true);
            return actionLexer.getTokenObject().getText();
        } catch (CharStreamException unused) {
            this.antlrTool.panic(new StringBuffer("Error reading action:").append(str).toString());
            return str;
        } catch (RecognitionException e2) {
            actionLexer.reportError(e2);
            return str;
        } catch (TokenStreamException unused2) {
            this.antlrTool.panic(new StringBuffer("Error reading action:").append(str).toString());
            return str;
        }
    }

    private String fixNameSpaceOption(String str) {
        String stripFrontBack = StringUtils.stripFrontBack(str, "\"", "\"");
        return (stripFrontBack.length() <= 2 || stripFrontBack.substring(stripFrontBack.length() - 2, stripFrontBack.length()).equals("::")) ? stripFrontBack : new StringBuffer().append(stripFrontBack).append("::").toString();
    }

    private void setupGrammarParameters(Grammar grammar) {
        Token option;
        Token option2;
        String stripFrontBack;
        Token option3;
        String stripFrontBack2;
        Token option4;
        Token option5;
        String stripFrontBack3;
        Token option6;
        String stripFrontBack4;
        boolean z = grammar instanceof ParserGrammar;
        if (z || (grammar instanceof LexerGrammar) || (grammar instanceof TreeWalkerGrammar)) {
            if (this.antlrTool.nameSpace != null) {
                nameSpace = this.antlrTool.nameSpace;
            }
            if (this.antlrTool.namespaceStd != null) {
                namespaceStd = fixNameSpaceOption(this.antlrTool.namespaceStd);
            }
            if (this.antlrTool.namespaceAntlr != null) {
                namespaceAntlr = fixNameSpaceOption(this.antlrTool.namespaceAntlr);
            }
            this.genHashLines = this.antlrTool.genHashLines;
            if (grammar.hasOption("namespace") && (option4 = grammar.getOption("namespace")) != null) {
                nameSpace = new NameSpace(option4.getText());
            }
            if (grammar.hasOption("namespaceAntlr") && (option3 = grammar.getOption("namespaceAntlr")) != null && (stripFrontBack2 = StringUtils.stripFrontBack(option3.getText(), "\"", "\"")) != null) {
                if (stripFrontBack2.length() > 2 && !stripFrontBack2.substring(stripFrontBack2.length() - 2, stripFrontBack2.length()).equals("::")) {
                    stripFrontBack2 = new StringBuffer().append(stripFrontBack2).append("::").toString();
                }
                namespaceAntlr = stripFrontBack2;
            }
            if (grammar.hasOption("namespaceStd") && (option2 = grammar.getOption("namespaceStd")) != null && (stripFrontBack = StringUtils.stripFrontBack(option2.getText(), "\"", "\"")) != null) {
                if (stripFrontBack.length() > 2 && !stripFrontBack.substring(stripFrontBack.length() - 2, stripFrontBack.length()).equals("::")) {
                    stripFrontBack = new StringBuffer().append(stripFrontBack).append("::").toString();
                }
                namespaceStd = stripFrontBack;
            }
            if (grammar.hasOption("genHashLines") && (option = grammar.getOption("genHashLines")) != null) {
                this.genHashLines = StringUtils.stripFrontBack(option.getText(), "\"", "\"").equals("true");
            }
            this.noConstructors = this.antlrTool.noConstructors;
            if (grammar.hasOption("noConstructors")) {
                Token option7 = grammar.getOption("noConstructors");
                if (option7 != null && !option7.getText().equals("true") && !option7.getText().equals("false")) {
                    this.antlrTool.error("noConstructors option must be true or false", this.antlrTool.getGrammarFile(), option7.getLine(), option7.getColumn());
                }
                this.noConstructors = option7.getText().equals("true");
            }
        }
        if (z) {
            this.labeledElementASTType = new StringBuffer().append(namespaceAntlr).append("RefAST").toString();
            this.labeledElementASTInit = new StringBuffer().append(namespaceAntlr).append("nullAST").toString();
            if (grammar.hasOption("ASTLabelType") && (option6 = grammar.getOption("ASTLabelType")) != null && (stripFrontBack4 = StringUtils.stripFrontBack(option6.getText(), "\"", "\"")) != null) {
                this.usingCustomAST = true;
                this.labeledElementASTType = stripFrontBack4;
                this.labeledElementASTInit = new StringBuffer("static_cast<").append(stripFrontBack4).append(">(").append(namespaceAntlr).append("nullAST)").toString();
            }
            this.labeledElementType = new StringBuffer().append(namespaceAntlr).append("RefToken ").toString();
            this.labeledElementInit = new StringBuffer().append(namespaceAntlr).append("nullToken").toString();
            this.commonExtraArgs = "";
            this.commonExtraParams = "";
            this.commonLocalVars = "";
            this.lt1Value = "LT(1)";
            this.exceptionThrown = new StringBuffer().append(namespaceAntlr).append("RecognitionException").toString();
            this.throwNoViable = new StringBuffer("throw ").append(namespaceAntlr).append("NoViableAltException(LT(1), getFilename());").toString();
        } else if (grammar instanceof LexerGrammar) {
            this.labeledElementType = "char ";
            this.labeledElementInit = "'\\0'";
            this.commonExtraArgs = "";
            this.commonExtraParams = "bool _createToken";
            this.commonLocalVars = new StringBuffer("int _ttype; ").append(namespaceAntlr).append("RefToken _token; int _begin=text.length();").toString();
            this.lt1Value = "LA(1)";
            this.exceptionThrown = new StringBuffer().append(namespaceAntlr).append("RecognitionException").toString();
            this.throwNoViable = new StringBuffer("throw ").append(namespaceAntlr).append("NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());").toString();
        } else if (grammar instanceof TreeWalkerGrammar) {
            this.labeledElementInit = new StringBuffer().append(namespaceAntlr).append("nullAST").toString();
            this.labeledElementASTInit = new StringBuffer().append(namespaceAntlr).append("nullAST").toString();
            this.labeledElementASTType = new StringBuffer().append(namespaceAntlr).append("RefAST").toString();
            this.labeledElementType = new StringBuffer().append(namespaceAntlr).append("RefAST").toString();
            this.commonExtraParams = new StringBuffer().append(namespaceAntlr).append("RefAST _t").toString();
            this.throwNoViable = new StringBuffer("throw ").append(namespaceAntlr).append("NoViableAltException(_t);").toString();
            this.lt1Value = "_t";
            if (grammar.hasOption("ASTLabelType") && (option5 = grammar.getOption("ASTLabelType")) != null && (stripFrontBack3 = StringUtils.stripFrontBack(option5.getText(), "\"", "\"")) != null) {
                this.usingCustomAST = true;
                this.labeledElementASTType = stripFrontBack3;
                this.labeledElementType = stripFrontBack3;
                String stringBuffer = new StringBuffer("static_cast<").append(stripFrontBack3).append(">(").append(namespaceAntlr).append("nullAST)").toString();
                this.labeledElementInit = stringBuffer;
                this.labeledElementASTInit = stringBuffer;
                this.commonExtraParams = new StringBuffer().append(stripFrontBack3).append(" _t").toString();
                this.throwNoViable = new StringBuffer("throw ").append(namespaceAntlr).append("NoViableAltException(static_cast<").append(namespaceAntlr).append("RefAST>(_t));").toString();
                this.lt1Value = "_t";
            }
            if (!grammar.hasOption("ASTLabelType")) {
                grammar.setOption("ASTLabelType", new Token(6, new StringBuffer().append(namespaceAntlr).append("RefAST").toString()));
            }
            this.commonExtraArgs = "_t";
            this.commonLocalVars = "";
            this.exceptionThrown = new StringBuffer().append(namespaceAntlr).append("RecognitionException").toString();
        } else {
            this.antlrTool.panic("Unknown grammar type");
        }
    }

    private String textOrChar(String str) {
        return str.startsWith("'") ? this.charFormatter.literalChar(ANTLRLexer.tokenTypeForCharLiteral(str)) : str;
    }
}
