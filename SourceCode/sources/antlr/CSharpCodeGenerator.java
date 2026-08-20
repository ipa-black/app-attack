package antlr;

import antlr.actions.csharp.ActionLexer;
import antlr.collections.impl.BitSet;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Vector;
/* loaded from: classes.dex */
public class CSharpCodeGenerator extends CodeGenerator {
    public static final int caseSizeThreshold = 127;
    private Vector astTypes;
    String commonExtraArgs;
    String commonExtraParams;
    String commonLocalVars;
    String currentASTResult;
    RuleBlock currentRule;
    String exceptionThrown;
    String labeledElementASTType;
    String labeledElementInit;
    String labeledElementType;
    String lt1Value;
    private antlr.collections.impl.Vector semPreds;
    String throwNoViable;
    protected static final String NONUNIQUE = new String();
    private static CSharpNameSpace nameSpace = null;
    protected int syntacticPredLevel = 0;
    protected boolean genAST = false;
    protected boolean saveText = false;
    boolean usingCustomAST = false;
    Hashtable treeVariableMap = new Hashtable();
    HashSet declaredASTVariables = new HashSet();
    int astVarNumber = 1;
    boolean bSaveIndexCreated = false;

    protected void genMatch(BitSet bitSet) {
    }

    public CSharpCodeGenerator() {
        this.charFormatter = new CSharpCharFormatter();
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
            println("if (0==inputState.guessing)");
            println("{");
            this.tabs++;
        }
        ActionTransInfo actionTransInfo = new ActionTransInfo();
        String processActionForSpecialSymbols = processActionForSpecialSymbols(actionElement.actionText, actionElement.getLine(), this.currentRule, actionTransInfo);
        if (actionTransInfo.refRuleRoot != null) {
            println(new StringBuffer().append(actionTransInfo.refRuleRoot).append(" = (").append(this.labeledElementASTType).append(")currentAST.root;").toString());
        }
        printAction(processActionForSpecialSymbols);
        if (actionTransInfo.assignToRoot) {
            println(new StringBuffer("currentAST.root = ").append(actionTransInfo.refRuleRoot).append(";").toString());
            println(new StringBuffer("if ( (null != ").append(actionTransInfo.refRuleRoot).append(") && (null != ").append(actionTransInfo.refRuleRoot).append(".getFirstChild()) )").toString());
            this.tabs++;
            println(new StringBuffer("currentAST.child = ").append(actionTransInfo.refRuleRoot).append(".getFirstChild();").toString());
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
        this.tabs++;
        genBlockPreamble(alternativeBlock);
        genBlockInitAction(alternativeBlock);
        String str = this.currentASTResult;
        if (alternativeBlock.getLabel() != null) {
            this.currentASTResult = alternativeBlock.getLabel();
        }
        this.grammar.theLLkAnalyzer.deterministic(alternativeBlock);
        genBlockFinish(genCommonBlock(alternativeBlock, true), this.throwNoViable);
        this.tabs--;
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
        throw new UnsupportedOperationException("Method not decompiled: antlr.CSharpCodeGenerator.gen(antlr.CharLiteralElement):void");
    }

    @Override // antlr.CodeGenerator
    public void gen(CharRangeElement charRangeElement) {
        if (charRangeElement.getLabel() != null && this.syntacticPredLevel == 0) {
            println(new StringBuffer().append(charRangeElement.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
        }
        boolean z = (this.grammar instanceof LexerGrammar) && (!this.saveText || charRangeElement.getAutoGenType() == 3);
        if (z) {
            println("_saveIndex = text.Length;");
        }
        println(new StringBuffer("matchRange(").append(OctalToUnicode(charRangeElement.beginText)).append(",").append(OctalToUnicode(charRangeElement.endText)).append(");").toString());
        if (z) {
            println("text.Length = _saveIndex;");
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(LexerGrammar lexerGrammar) throws IOException {
        if (lexerGrammar.debuggingOutput) {
            this.semPreds = new antlr.collections.impl.Vector();
        }
        setGrammar(lexerGrammar);
        if (!(this.grammar instanceof LexerGrammar)) {
            this.antlrTool.panic("Internal error generating lexer");
        }
        genBody(lexerGrammar);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00dd  */
    @Override // antlr.CodeGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void gen(antlr.OneOrMoreBlock r10) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CSharpCodeGenerator.gen(antlr.OneOrMoreBlock):void");
    }

    @Override // antlr.CodeGenerator
    public void gen(ParserGrammar parserGrammar) throws IOException {
        if (parserGrammar.debuggingOutput) {
            this.semPreds = new antlr.collections.impl.Vector();
        }
        setGrammar(parserGrammar);
        if (!(this.grammar instanceof ParserGrammar)) {
            this.antlrTool.panic("Internal error generating parser");
        }
        genBody(parserGrammar);
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
                println(new StringBuffer().append(ruleRefElement.getLabel()).append(" = _t==ASTNULL ? null : ").append(this.lt1Value).append(";").toString());
            }
            if ((this.grammar instanceof LexerGrammar) && (!this.saveText || ruleRefElement.getAutoGenType() == 3)) {
                declareSaveIndexVariableIfNeeded();
                println("_saveIndex = text.Length;");
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
                declareSaveIndexVariableIfNeeded();
                println("text.Length = _saveIndex;");
            }
            if (this.syntacticPredLevel == 0) {
                boolean z = this.grammar.hasSyntacticPredicate && ((this.grammar.buildAST && ruleRefElement.getLabel() != null) || (this.genAST && ruleRefElement.getAutoGenType() == 1));
                if (z) {
                    println("if (0 == inputState.guessing)");
                    println("{");
                    this.tabs++;
                }
                if (this.grammar.buildAST && ruleRefElement.getLabel() != null) {
                    println(new StringBuffer().append(ruleRefElement.getLabel()).append("_AST = (").append(this.labeledElementASTType).append(")returnAST;").toString());
                }
                if (this.genAST) {
                    int autoGenType = ruleRefElement.getAutoGenType();
                    if (autoGenType != 1) {
                        if (autoGenType == 2) {
                            this.antlrTool.error("Internal: encountered ^ after rule reference");
                        }
                    } else if (this.usingCustomAST) {
                        println("astFactory.addASTChild(currentAST, (AST)returnAST);");
                    } else {
                        println("astFactory.addASTChild(currentAST, returnAST);");
                    }
                }
                if ((this.grammar instanceof LexerGrammar) && ruleRefElement.getLabel() != null) {
                    println(new StringBuffer().append(ruleRefElement.getLabel()).append(" = returnToken_;").toString());
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
            java.lang.String r4 = "_t = _t.getNextSibling();"
            r3.println(r4)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CSharpCodeGenerator.gen(antlr.StringLiteralElement):void");
    }

    @Override // antlr.CodeGenerator
    public void gen(TokenRangeElement tokenRangeElement) {
        genErrorTryForElement(tokenRangeElement);
        if (tokenRangeElement.getLabel() != null && this.syntacticPredLevel == 0) {
            println(new StringBuffer().append(tokenRangeElement.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
        }
        genElementAST(tokenRangeElement);
        println(new StringBuffer("matchRange(").append(OctalToUnicode(tokenRangeElement.beginText)).append(",").append(OctalToUnicode(tokenRangeElement.endText)).append(");").toString());
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
            println("_t = _t.getNextSibling();");
        }
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeElement treeElement) {
        println(new StringBuffer("AST __t").append(treeElement.ID).append(" = _t;").toString());
        if (treeElement.root.getLabel() != null) {
            println(new StringBuffer().append(treeElement.root.getLabel()).append(" = (ASTNULL == _t) ? null : (").append(this.labeledElementASTType).append(")_t;").toString());
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
            println(new StringBuffer("ASTPair __currentAST").append(treeElement.ID).append(" = currentAST.copy();").toString());
            println("currentAST.root = currentAST.child;");
            println("currentAST.child = null;");
        }
        if (treeElement.root instanceof WildcardElement) {
            println("if (null == _t) throw new MismatchedTokenException();");
        } else {
            genMatch(treeElement.root);
        }
        println("_t = _t.getFirstChild();");
        for (int i = 0; i < treeElement.getAlternatives().size(); i++) {
            for (AlternativeElement alternativeElement = treeElement.getAlternativeAt(i).head; alternativeElement != null; alternativeElement = alternativeElement.next) {
                alternativeElement.generate();
            }
        }
        if (this.grammar.buildAST) {
            println(new StringBuffer("currentAST = __currentAST").append(treeElement.ID).append(";").toString());
        }
        println(new StringBuffer("_t = __t").append(treeElement.ID).append(";").toString());
        println("_t = _t.getNextSibling();");
    }

    @Override // antlr.CodeGenerator
    public void gen(TreeWalkerGrammar treeWalkerGrammar) throws IOException {
        setGrammar(treeWalkerGrammar);
        if (!(this.grammar instanceof TreeWalkerGrammar)) {
            this.antlrTool.panic("Internal error generating tree-walker");
        }
        genBody(treeWalkerGrammar);
    }

    @Override // antlr.CodeGenerator
    public void gen(WildcardElement wildcardElement) {
        if (wildcardElement.getLabel() != null && this.syntacticPredLevel == 0) {
            println(new StringBuffer().append(wildcardElement.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
        }
        genElementAST(wildcardElement);
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("if (null == _t) throw new MismatchedTokenException();");
        } else if (this.grammar instanceof LexerGrammar) {
            if ((this.grammar instanceof LexerGrammar) && (!this.saveText || wildcardElement.getAutoGenType() == 3)) {
                declareSaveIndexVariableIfNeeded();
                println("_saveIndex = text.Length;");
            }
            println("matchNot(EOF/*_CHAR*/);");
            if ((this.grammar instanceof LexerGrammar) && (!this.saveText || wildcardElement.getAutoGenType() == 3)) {
                declareSaveIndexVariableIfNeeded();
                println("text.Length = _saveIndex;");
            }
        } else {
            println(new StringBuffer("matchNot(").append(getValueString(1)).append(");").toString());
        }
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("_t = _t.getNextSibling();");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    @Override // antlr.CodeGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void gen(antlr.ZeroOrMoreBlock r10) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CSharpCodeGenerator.gen(antlr.ZeroOrMoreBlock):void");
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
            println("try        // for error handling");
            println("{");
            this.tabs++;
        }
        for (AlternativeElement alternativeElement = alternative.head; !(alternativeElement instanceof BlockEndElement); alternativeElement = alternativeElement.next) {
            alternativeElement.generate();
        }
        if (this.genAST) {
            if (alternativeBlock instanceof RuleBlock) {
                RuleBlock ruleBlock = (RuleBlock) alternativeBlock;
                if (this.usingCustomAST) {
                    println(new StringBuffer().append(ruleBlock.getRuleName()).append("_AST = (").append(this.labeledElementASTType).append(")currentAST.root;").toString());
                } else {
                    println(new StringBuffer().append(ruleBlock.getRuleName()).append("_AST = currentAST.root;").toString());
                }
            } else if (alternativeBlock.getLabel() != null) {
                this.antlrTool.warning("Labeled subrules not yet supported", this.grammar.getFilename(), alternativeBlock.getLine(), alternativeBlock.getColumn());
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

    protected void genBitsets(antlr.collections.impl.Vector vector, int i) {
        println("");
        for (int i2 = 0; i2 < vector.size(); i2++) {
            BitSet bitSet = (BitSet) vector.elementAt(i2);
            bitSet.growToInclude(i);
            genBitSet(bitSet, i2);
        }
    }

    private void genBitSet(BitSet bitSet, int i) {
        int i2;
        println(new StringBuffer("private static long[] mk_").append(getBitsetName(i)).append("()").toString());
        println("{");
        this.tabs++;
        int lengthInLongWords = bitSet.lengthInLongWords();
        if (lengthInLongWords < 8) {
            println(new StringBuffer("long[] data = { ").append(bitSet.toStringOfWords()).append("};").toString());
        } else {
            println(new StringBuffer("long[] data = new long[").append(lengthInLongWords).append("];").toString());
            long[] packedArray = bitSet.toPackedArray();
            for (int i3 = 0; i3 < packedArray.length; i3 = i2) {
                i2 = i3 + 1;
                if (i2 == packedArray.length || packedArray[i3] != packedArray[i2]) {
                    println(new StringBuffer("data[").append(i3).append("]=").append(packedArray[i3]).append("L;").toString());
                } else {
                    while (i2 < packedArray.length && packedArray[i2] == packedArray[i3]) {
                        i2++;
                    }
                    println(new StringBuffer("for (int i = ").append(i3).append("; i<=").append(i2 - 1).append("; i++) { data[i]=").append(packedArray[i3]).append("L; }").toString());
                }
            }
        }
        println("return data;");
        this.tabs--;
        println("}");
        println(new StringBuffer("public static readonly BitSet ").append(getBitsetName(i)).append(" = new BitSet(mk_").append(getBitsetName(i)).append("());").toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // antlr.CodeGenerator
    public String getBitsetName(int i) {
        return new StringBuffer("tokenSet_").append(i).append("_").toString();
    }

    private void genBlockFinish(CSharpBlockFinishingInfo cSharpBlockFinishingInfo, String str) {
        if (cSharpBlockFinishingInfo.needAnErrorClause && (cSharpBlockFinishingInfo.generatedAnIf || cSharpBlockFinishingInfo.generatedSwitch)) {
            if (cSharpBlockFinishingInfo.generatedAnIf) {
                println("else");
                println("{");
            } else {
                println("{");
            }
            this.tabs++;
            println(str);
            this.tabs--;
            println("}");
        }
        if (cSharpBlockFinishingInfo.postscript != null) {
            if (cSharpBlockFinishingInfo.needAnErrorClause && cSharpBlockFinishingInfo.generatedSwitch && !cSharpBlockFinishingInfo.generatedAnIf && str != null) {
                if (str.indexOf("throw") == 0 || str.indexOf("goto") == 0) {
                    println(cSharpBlockFinishingInfo.postscript.substring(cSharpBlockFinishingInfo.postscript.indexOf("break;") + 6));
                    return;
                }
                println(cSharpBlockFinishingInfo.postscript);
                return;
            }
            println(cSharpBlockFinishingInfo.postscript);
        }
    }

    protected void genBlockInitAction(AlternativeBlock alternativeBlock) {
        if (alternativeBlock.initAction != null) {
            printAction(processActionForSpecialSymbols(alternativeBlock.initAction, alternativeBlock.getLine(), this.currentRule, null));
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
                            println(new StringBuffer("Token ").append(alternativeElement.getLabel()).append(" = null;").toString());
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
        String stripFrontBack;
        setupOutput(this.grammar.getClassName());
        this.genAST = false;
        this.saveText = true;
        this.tabs = 0;
        genHeader();
        println(this.behavior.getHeaderAction(""));
        CSharpNameSpace cSharpNameSpace = nameSpace;
        if (cSharpNameSpace != null) {
            cSharpNameSpace.emitDeclarations(this.currentOutput);
        }
        this.tabs++;
        println("// Generate header specific to lexer CSharp file");
        println("using System;");
        println("using Stream                          = System.IO.Stream;");
        println("using TextReader                      = System.IO.TextReader;");
        println("using Hashtable                       = System.Collections.Hashtable;");
        println("");
        println("using TokenStreamException            = antlr.TokenStreamException;");
        println("using TokenStreamIOException          = antlr.TokenStreamIOException;");
        println("using TokenStreamRecognitionException = antlr.TokenStreamRecognitionException;");
        println("using CharStreamException             = antlr.CharStreamException;");
        println("using CharStreamIOException           = antlr.CharStreamIOException;");
        println("using ANTLRException                  = antlr.ANTLRException;");
        println("using CharScanner                     = antlr.CharScanner;");
        println("using InputBuffer                     = antlr.InputBuffer;");
        println("using ByteBuffer                      = antlr.ByteBuffer;");
        println("using CharBuffer                      = antlr.CharBuffer;");
        println("using Token                           = antlr.Token;");
        println("using CommonToken                     = antlr.CommonToken;");
        println("using RecognitionException            = antlr.RecognitionException;");
        println("using NoViableAltForCharException     = antlr.NoViableAltForCharException;");
        println("using MismatchedCharException         = antlr.MismatchedCharException;");
        println("using TokenStream                     = antlr.TokenStream;");
        println("using LexerSharedInputState           = antlr.LexerSharedInputState;");
        println("using BitSet                          = antlr.collections.impl.BitSet;");
        println(this.grammar.preambleAction.getText());
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
        } else {
            stringBuffer = new StringBuffer("antlr.").append(this.grammar.getSuperClass()).toString();
        }
        if (this.grammar.comment != null) {
            _println(this.grammar.comment);
        }
        Token token = (Token) this.grammar.options.get("classHeaderPrefix");
        if (token != null) {
            String stripFrontBack2 = StringUtils.stripFrontBack(token.getText(), "\"", "\"");
            if (stripFrontBack2 == null) {
                print("public ");
            } else {
                print(new StringBuffer().append(stripFrontBack2).append(" ").toString());
            }
        } else {
            print("public ");
        }
        print(new StringBuffer("class ").append(this.grammar.getClassName()).append(" : ").append(stringBuffer).toString());
        println(", TokenStream");
        Token token2 = (Token) this.grammar.options.get("classHeaderSuffix");
        if (token2 != null && (stripFrontBack = StringUtils.stripFrontBack(token2.getText(), "\"", "\"")) != null) {
            print(new StringBuffer(", ").append(stripFrontBack).toString());
        }
        println(" {");
        this.tabs++;
        genTokenDefinitions(this.grammar.tokenManager);
        print(processActionForSpecialSymbols(this.grammar.classMemberAction.getText(), this.grammar.classMemberAction.getLine(), this.currentRule, null));
        println(new StringBuffer("public ").append(this.grammar.getClassName()).append("(Stream ins) : this(new ByteBuffer(ins))").toString());
        println("{");
        println("}");
        println("");
        println(new StringBuffer("public ").append(this.grammar.getClassName()).append("(TextReader r) : this(new CharBuffer(r))").toString());
        println("{");
        println("}");
        println("");
        print(new StringBuffer("public ").append(this.grammar.getClassName()).append("(InputBuffer ib)").toString());
        if (this.grammar.debuggingOutput) {
            println(" : this(new LexerSharedInputState(new antlr.debug.DebuggingInputBuffer(ib)))");
        } else {
            println(" : this(new LexerSharedInputState(ib))");
        }
        println("{");
        println("}");
        println("");
        println(new StringBuffer("public ").append(this.grammar.getClassName()).append("(LexerSharedInputState state) : base(state)").toString());
        println("{");
        this.tabs++;
        println("initialize();");
        this.tabs--;
        println("}");
        println("private void initialize()");
        println("{");
        this.tabs++;
        if (this.grammar.debuggingOutput) {
            println("ruleNames  = _ruleNames;");
            println("semPredNames = _semPredNames;");
            println("setupDebugging();");
        }
        println(new StringBuffer("caseSensitiveLiterals = ").append(lexerGrammar.caseSensitiveLiterals).append(";").toString());
        println(new StringBuffer("setCaseSensitive(").append(lexerGrammar.caseSensitive).append(");").toString());
        if (lexerGrammar.caseSensitiveLiterals) {
            println("literals = new Hashtable();");
        } else {
            println("literals = new Hashtable(new System.Collections.CaseInsensitiveHashCodeProvider(), null);");
        }
        Enumeration tokenSymbolKeys = this.grammar.tokenManager.getTokenSymbolKeys();
        while (tokenSymbolKeys.hasMoreElements()) {
            String str = (String) tokenSymbolKeys.nextElement();
            if (str.charAt(0) == '\"') {
                TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(str);
                if (tokenSymbol instanceof StringLiteralSymbol) {
                    StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) tokenSymbol;
                    println(new StringBuffer("literals.Add(").append(stringLiteralSymbol.getId()).append(", ").append(stringLiteralSymbol.getTokenType()).append(");").toString());
                }
            }
        }
        this.tabs--;
        println("}");
        if (this.grammar.debuggingOutput) {
            println("private const string[] _ruleNames = {");
            Enumeration elements = this.grammar.rules.elements();
            while (elements.hasMoreElements()) {
                GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
                if (grammarSymbol instanceof RuleSymbol) {
                    println(new StringBuffer("  \"").append(((RuleSymbol) grammarSymbol).getId()).append("\",").toString());
                }
            }
            println("};");
        }
        genNextToken();
        Enumeration elements2 = this.grammar.rules.elements();
        int i = 0;
        while (elements2.hasMoreElements()) {
            RuleSymbol ruleSymbol = (RuleSymbol) elements2.nextElement();
            if (!ruleSymbol.getId().equals("mnextToken")) {
                genRule(ruleSymbol, false, i, this.grammar.tokenManager);
                i++;
            }
            exitIfError();
        }
        if (this.grammar.debuggingOutput) {
            genSemPredMap();
        }
        genBitsets(this.bitsetsUsed, ((LexerGrammar) this.grammar).charVocabulary.size());
        println("");
        this.tabs--;
        println("}");
        this.tabs--;
        CSharpNameSpace cSharpNameSpace2 = nameSpace;
        if (cSharpNameSpace2 != null) {
            cSharpNameSpace2.emitClosures(this.currentOutput);
        }
        this.currentOutput.close();
        this.currentOutput = null;
    }

    public void genInitFactory(Grammar grammar) {
        TokenSymbol tokenSymbol;
        if (grammar.buildAST) {
            println("static public void initializeASTFactory( ASTFactory factory )");
            println("{");
            this.tabs++;
            println(new StringBuffer("factory.setMaxNodeType(").append(grammar.tokenManager.maxTokenType()).append(");").toString());
            antlr.collections.impl.Vector vocabulary = grammar.tokenManager.getVocabulary();
            for (int i = 0; i < vocabulary.size(); i++) {
                String str = (String) vocabulary.elementAt(i);
                if (str != null && (tokenSymbol = grammar.tokenManager.getTokenSymbol(str)) != null && tokenSymbol.getASTNodeType() != null) {
                    println(new StringBuffer("factory.setTokenTypeASTNodeType(").append(str).append(", \"").append(tokenSymbol.getASTNodeType()).append("\");").toString());
                }
            }
            this.tabs--;
            println("}");
        }
    }

    public void genBody(ParserGrammar parserGrammar) throws IOException {
        String stringBuffer;
        String stripFrontBack;
        setupOutput(this.grammar.getClassName());
        this.genAST = this.grammar.buildAST;
        this.tabs = 0;
        genHeader();
        println(this.behavior.getHeaderAction(""));
        CSharpNameSpace cSharpNameSpace = nameSpace;
        if (cSharpNameSpace != null) {
            cSharpNameSpace.emitDeclarations(this.currentOutput);
        }
        this.tabs++;
        println("// Generate the header common to all output files.");
        println("using System;");
        println("");
        println("using TokenBuffer              = antlr.TokenBuffer;");
        println("using TokenStreamException     = antlr.TokenStreamException;");
        println("using TokenStreamIOException   = antlr.TokenStreamIOException;");
        println("using ANTLRException           = antlr.ANTLRException;");
        println(new StringBuffer("using ").append(this.grammar.getSuperClass()).append(" = antlr.").append(this.grammar.getSuperClass()).append(";").toString());
        println("using Token                    = antlr.Token;");
        println("using TokenStream              = antlr.TokenStream;");
        println("using RecognitionException     = antlr.RecognitionException;");
        println("using NoViableAltException     = antlr.NoViableAltException;");
        println("using MismatchedTokenException = antlr.MismatchedTokenException;");
        println("using SemanticException        = antlr.SemanticException;");
        println("using ParserSharedInputState   = antlr.ParserSharedInputState;");
        println("using BitSet                   = antlr.collections.impl.BitSet;");
        if (this.genAST) {
            println("using AST                      = antlr.collections.AST;");
            println("using ASTPair                  = antlr.ASTPair;");
            println("using ASTFactory               = antlr.ASTFactory;");
            println("using ASTArray                 = antlr.collections.impl.ASTArray;");
        }
        println(this.grammar.preambleAction.getText());
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
        } else {
            stringBuffer = new StringBuffer("antlr.").append(this.grammar.getSuperClass()).toString();
        }
        if (this.grammar.comment != null) {
            _println(this.grammar.comment);
        }
        Token token = (Token) this.grammar.options.get("classHeaderPrefix");
        if (token != null) {
            String stripFrontBack2 = StringUtils.stripFrontBack(token.getText(), "\"", "\"");
            if (stripFrontBack2 == null) {
                print("public ");
            } else {
                print(new StringBuffer().append(stripFrontBack2).append(" ").toString());
            }
        } else {
            print("public ");
        }
        println(new StringBuffer("class ").append(this.grammar.getClassName()).append(" : ").append(stringBuffer).toString());
        Token token2 = (Token) this.grammar.options.get("classHeaderSuffix");
        if (token2 != null && (stripFrontBack = StringUtils.stripFrontBack(token2.getText(), "\"", "\"")) != null) {
            print(new StringBuffer("              , ").append(stripFrontBack).toString());
        }
        println("{");
        this.tabs++;
        genTokenDefinitions(this.grammar.tokenManager);
        if (this.grammar.debuggingOutput) {
            println("private const string[] _ruleNames = {");
            this.tabs++;
            Enumeration elements = this.grammar.rules.elements();
            while (elements.hasMoreElements()) {
                GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
                if (grammarSymbol instanceof RuleSymbol) {
                    println(new StringBuffer("  \"").append(((RuleSymbol) grammarSymbol).getId()).append("\",").toString());
                }
            }
            this.tabs--;
            println("};");
        }
        print(processActionForSpecialSymbols(this.grammar.classMemberAction.getText(), this.grammar.classMemberAction.getLine(), this.currentRule, null));
        println("");
        println("protected void initialize()");
        println("{");
        this.tabs++;
        println("tokenNames = tokenNames_;");
        if (this.grammar.buildAST) {
            println("initializeFactory();");
        }
        if (this.grammar.debuggingOutput) {
            println("ruleNames  = _ruleNames;");
            println("semPredNames = _semPredNames;");
            println("setupDebugging(tokenBuf);");
        }
        this.tabs--;
        println("}");
        println("");
        println("");
        println(new StringBuffer("protected ").append(this.grammar.getClassName()).append("(TokenBuffer tokenBuf, int k) : base(tokenBuf, k)").toString());
        println("{");
        this.tabs++;
        println("initialize();");
        this.tabs--;
        println("}");
        println("");
        println(new StringBuffer("public ").append(this.grammar.getClassName()).append("(TokenBuffer tokenBuf) : this(tokenBuf,").append(this.grammar.maxk).append(")").toString());
        println("{");
        println("}");
        println("");
        println(new StringBuffer("protected ").append(this.grammar.getClassName()).append("(TokenStream lexer, int k) : base(lexer,k)").toString());
        println("{");
        this.tabs++;
        println("initialize();");
        this.tabs--;
        println("}");
        println("");
        println(new StringBuffer("public ").append(this.grammar.getClassName()).append("(TokenStream lexer) : this(lexer,").append(this.grammar.maxk).append(")").toString());
        println("{");
        println("}");
        println("");
        println(new StringBuffer("public ").append(this.grammar.getClassName()).append("(ParserSharedInputState state) : base(state,").append(this.grammar.maxk).append(")").toString());
        println("{");
        this.tabs++;
        println("initialize();");
        this.tabs--;
        println("}");
        println("");
        this.astTypes = new Vector(100);
        Enumeration elements2 = this.grammar.rules.elements();
        int i = 0;
        while (elements2.hasMoreElements()) {
            GrammarSymbol grammarSymbol2 = (GrammarSymbol) elements2.nextElement();
            if (grammarSymbol2 instanceof RuleSymbol) {
                RuleSymbol ruleSymbol = (RuleSymbol) grammarSymbol2;
                genRule(ruleSymbol, ruleSymbol.references.size() == 0, i, this.grammar.tokenManager);
                i++;
            }
            exitIfError();
        }
        if (this.usingCustomAST) {
            println(new StringBuffer("public new ").append(this.labeledElementASTType).append(" getAST()").toString());
            println("{");
            this.tabs++;
            println(new StringBuffer("return (").append(this.labeledElementASTType).append(") returnAST;").toString());
            this.tabs--;
            println("}");
            println("");
        }
        println("private void initializeFactory()");
        println("{");
        this.tabs++;
        if (this.grammar.buildAST) {
            println("if (astFactory == null)");
            println("{");
            this.tabs++;
            if (this.usingCustomAST) {
                println(new StringBuffer("astFactory = new ASTFactory(\"").append(this.labeledElementASTType).append("\");").toString());
            } else {
                println("astFactory = new ASTFactory();");
            }
            this.tabs--;
            println("}");
            println("initializeASTFactory( astFactory );");
        }
        this.tabs--;
        println("}");
        genInitFactory(parserGrammar);
        genTokenStrings();
        genBitsets(this.bitsetsUsed, this.grammar.tokenManager.maxTokenType());
        if (this.grammar.debuggingOutput) {
            genSemPredMap();
        }
        println("");
        this.tabs--;
        println("}");
        this.tabs--;
        CSharpNameSpace cSharpNameSpace2 = nameSpace;
        if (cSharpNameSpace2 != null) {
            cSharpNameSpace2.emitClosures(this.currentOutput);
        }
        this.currentOutput.close();
        this.currentOutput = null;
    }

    public void genBody(TreeWalkerGrammar treeWalkerGrammar) throws IOException {
        String stringBuffer;
        String stripFrontBack;
        setupOutput(this.grammar.getClassName());
        this.genAST = this.grammar.buildAST;
        this.tabs = 0;
        genHeader();
        println(this.behavior.getHeaderAction(""));
        CSharpNameSpace cSharpNameSpace = nameSpace;
        if (cSharpNameSpace != null) {
            cSharpNameSpace.emitDeclarations(this.currentOutput);
        }
        this.tabs++;
        println("// Generate header specific to the tree-parser CSharp file");
        println("using System;");
        println("");
        println(new StringBuffer("using ").append(this.grammar.getSuperClass()).append(" = antlr.").append(this.grammar.getSuperClass()).append(";").toString());
        println("using Token                    = antlr.Token;");
        println("using AST                      = antlr.collections.AST;");
        println("using RecognitionException     = antlr.RecognitionException;");
        println("using ANTLRException           = antlr.ANTLRException;");
        println("using NoViableAltException     = antlr.NoViableAltException;");
        println("using MismatchedTokenException = antlr.MismatchedTokenException;");
        println("using SemanticException        = antlr.SemanticException;");
        println("using BitSet                   = antlr.collections.impl.BitSet;");
        println("using ASTPair                  = antlr.ASTPair;");
        println("using ASTFactory               = antlr.ASTFactory;");
        println("using ASTArray                 = antlr.collections.impl.ASTArray;");
        println(this.grammar.preambleAction.getText());
        if (this.grammar.superClass != null) {
            stringBuffer = this.grammar.superClass;
        } else {
            stringBuffer = new StringBuffer("antlr.").append(this.grammar.getSuperClass()).toString();
        }
        println("");
        if (this.grammar.comment != null) {
            _println(this.grammar.comment);
        }
        Token token = (Token) this.grammar.options.get("classHeaderPrefix");
        if (token == null) {
            print("public ");
        } else {
            String stripFrontBack2 = StringUtils.stripFrontBack(token.getText(), "\"", "\"");
            if (stripFrontBack2 == null) {
                print("public ");
            } else {
                print(new StringBuffer().append(stripFrontBack2).append(" ").toString());
            }
        }
        println(new StringBuffer("class ").append(this.grammar.getClassName()).append(" : ").append(stringBuffer).toString());
        Token token2 = (Token) this.grammar.options.get("classHeaderSuffix");
        if (token2 != null && (stripFrontBack = StringUtils.stripFrontBack(token2.getText(), "\"", "\"")) != null) {
            print(new StringBuffer("              , ").append(stripFrontBack).toString());
        }
        println("{");
        this.tabs++;
        genTokenDefinitions(this.grammar.tokenManager);
        print(processActionForSpecialSymbols(this.grammar.classMemberAction.getText(), this.grammar.classMemberAction.getLine(), this.currentRule, null));
        println(new StringBuffer("public ").append(this.grammar.getClassName()).append("()").toString());
        println("{");
        this.tabs++;
        println("tokenNames = tokenNames_;");
        this.tabs--;
        println("}");
        println("");
        this.astTypes = new Vector();
        Enumeration elements = this.grammar.rules.elements();
        int i = 0;
        while (elements.hasMoreElements()) {
            GrammarSymbol grammarSymbol = (GrammarSymbol) elements.nextElement();
            if (grammarSymbol instanceof RuleSymbol) {
                RuleSymbol ruleSymbol = (RuleSymbol) grammarSymbol;
                genRule(ruleSymbol, ruleSymbol.references.size() == 0, i, this.grammar.tokenManager);
                i++;
            }
            exitIfError();
        }
        if (this.usingCustomAST) {
            println(new StringBuffer("public new ").append(this.labeledElementASTType).append(" getAST()").toString());
            println("{");
            this.tabs++;
            println(new StringBuffer("return (").append(this.labeledElementASTType).append(") returnAST;").toString());
            this.tabs--;
            println("}");
            println("");
        }
        genInitFactory(this.grammar);
        genTokenStrings();
        genBitsets(this.bitsetsUsed, this.grammar.tokenManager.maxTokenType());
        this.tabs--;
        println("}");
        println("");
        this.tabs--;
        CSharpNameSpace cSharpNameSpace2 = nameSpace;
        if (cSharpNameSpace2 != null) {
            cSharpNameSpace2.emitClosures(this.currentOutput);
        }
        this.currentOutput.close();
        this.currentOutput = null;
    }

    protected void genCases(BitSet bitSet) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genCases(").append(bitSet).append(")").toString());
        }
        int[] array = bitSet.toArray();
        int i = this.grammar instanceof LexerGrammar ? 4 : 1;
        int i2 = 1;
        boolean z = true;
        for (int i3 : array) {
            if (i2 == 1) {
                print("");
            } else {
                _print("  ");
            }
            _print(new StringBuffer("case ").append(getValueString(i3)).append(":").toString());
            if (i2 == i) {
                _println("");
                i2 = 1;
                z = true;
            } else {
                i2++;
                z = false;
            }
        }
        if (z) {
            return;
        }
        _println("");
    }

    public CSharpBlockFinishingInfo genCommonBlock(AlternativeBlock alternativeBlock, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean lookaheadIsEmpty;
        String lookaheadTestExpression;
        boolean z5;
        String str;
        int i;
        CSharpBlockFinishingInfo cSharpBlockFinishingInfo;
        int i2;
        CSharpBlockFinishingInfo cSharpBlockFinishingInfo2 = new CSharpBlockFinishingInfo();
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("genCommonBlock(").append(alternativeBlock).append(")").toString());
        }
        boolean z6 = this.genAST;
        boolean z7 = true;
        int i3 = 0;
        this.genAST = z6 && alternativeBlock.getAutoGen();
        boolean z8 = this.saveText;
        this.saveText = z8 && alternativeBlock.getAutoGen();
        String str2 = "";
        if (alternativeBlock.not && this.analyzer.subruleCanBeInverted(alternativeBlock, this.grammar instanceof LexerGrammar)) {
            if (this.DEBUG_CODE_GENERATOR) {
                System.out.println("special case: ~(subrule)");
            }
            Lookahead look = this.analyzer.look(1, alternativeBlock);
            if (alternativeBlock.getLabel() != null && this.syntacticPredLevel == 0) {
                println(new StringBuffer().append(alternativeBlock.getLabel()).append(" = ").append(this.lt1Value).append(";").toString());
            }
            genElementAST(alternativeBlock);
            if (this.grammar instanceof TreeWalkerGrammar) {
                if (this.usingCustomAST) {
                    str2 = "(AST)_t,";
                } else {
                    str2 = "_t,";
                }
            }
            println(new StringBuffer("match(").append(str2).append(getBitsetName(markBitsetForGen(look.fset))).append(");").toString());
            if (this.grammar instanceof TreeWalkerGrammar) {
                println("_t = _t.getNextSibling();");
            }
            return cSharpBlockFinishingInfo2;
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
                return cSharpBlockFinishingInfo2;
            }
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < alternativeBlock.getAlternatives().size()) {
            CSharpBlockFinishingInfo cSharpBlockFinishingInfo3 = cSharpBlockFinishingInfo2;
            boolean z9 = z6;
            boolean z10 = z7 ? 1 : 0;
            boolean z11 = z8;
            String str3 = str2;
            if (suitableForCaseExpression(alternativeBlock.getAlternativeAt(i4))) {
                i5++;
            }
            i4++;
            z7 = z10;
            z6 = z9;
            z8 = z11;
            str2 = str3;
            cSharpBlockFinishingInfo2 = cSharpBlockFinishingInfo3;
            i3 = 0;
        }
        if (i5 >= this.makeSwitchThreshold) {
            String lookaheadString = lookaheadString(z7 ? 1 : 0);
            if (this.grammar instanceof TreeWalkerGrammar) {
                println("if (null == _t)");
                this.tabs += z7 ? 1 : 0;
                println("_t = ASTNULL;");
                this.tabs -= z7 ? 1 : 0;
            }
            println(new StringBuffer("switch ( ").append(lookaheadString).append(" )").toString());
            println("{");
            for (int i6 = i3; i6 < alternativeBlock.alternatives.size(); i6++) {
                Alternative alternativeAt2 = alternativeBlock.getAlternativeAt(i6);
                if (suitableForCaseExpression(alternativeAt2)) {
                    Lookahead lookahead = alternativeAt2.cache[z7 ? 1 : 0];
                    if (lookahead.fset.degree() == 0 && !lookahead.containsEpsilon()) {
                        this.antlrTool.warning("Alternate omitted due to empty prediction set", this.grammar.getFilename(), alternativeAt2.head.getLine(), alternativeAt2.head.getColumn());
                    } else {
                        genCases(lookahead.fset);
                        println("{");
                        this.tabs += z7 ? 1 : 0;
                        genAlt(alternativeAt2, alternativeBlock);
                        println("break;");
                        this.tabs -= z7 ? 1 : 0;
                        println("}");
                    }
                }
            }
            println("default:");
            this.tabs += z7 ? 1 : 0;
            z2 = z7 ? 1 : 0;
        } else {
            z2 = false;
        }
        int i7 = this.grammar instanceof LexerGrammar ? this.grammar.maxk : 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 >= 0) {
            if (this.DEBUG_CODE_GENERATOR) {
                System.out.println(new StringBuffer("checking depth ").append(i7).toString());
            }
            int i10 = 0;
            while (i10 < alternativeBlock.alternatives.size()) {
                Alternative alternativeAt3 = alternativeBlock.getAlternativeAt(i10);
                if (this.DEBUG_CODE_GENERATOR) {
                    z3 = z6;
                    z4 = z8;
                    System.out.println(new StringBuffer("genAlt: ").append(i10).toString());
                } else {
                    z3 = z6;
                    z4 = z8;
                }
                if (z2 && suitableForCaseExpression(alternativeAt3)) {
                    if (this.DEBUG_CODE_GENERATOR) {
                        System.out.println("ignoring alt because it was in the switch");
                    }
                } else {
                    if (this.grammar instanceof LexerGrammar) {
                        int i11 = alternativeAt3.lookaheadDepth;
                        if (i11 == Integer.MAX_VALUE) {
                            i11 = this.grammar.maxk;
                        }
                        while (i11 >= 1 && alternativeAt3.cache[i11].containsEpsilon()) {
                            i11--;
                        }
                        if (i11 != i7) {
                            if (this.DEBUG_CODE_GENERATOR) {
                                System.out.println(new StringBuffer("ignoring alt because effectiveDepth!=altDepth;").append(i11).append("!=").append(i7).toString());
                            }
                        } else {
                            lookaheadIsEmpty = lookaheadIsEmpty(alternativeAt3, i11);
                            lookaheadTestExpression = getLookaheadTestExpression(alternativeAt3, i11);
                        }
                    } else {
                        lookaheadIsEmpty = lookaheadIsEmpty(alternativeAt3, this.grammar.maxk);
                        lookaheadTestExpression = getLookaheadTestExpression(alternativeAt3, this.grammar.maxk);
                    }
                    z5 = z2;
                    str = str2;
                    i = i7;
                    if (alternativeAt3.cache[1].fset.degree() <= 127 || !suitableForCaseExpression(alternativeAt3)) {
                        if (lookaheadIsEmpty && alternativeAt3.semPred == null && alternativeAt3.synPred == null) {
                            if (i9 == 0) {
                                println("{");
                            } else {
                                println("else {");
                            }
                            cSharpBlockFinishingInfo2.needAnErrorClause = false;
                        } else {
                            if (alternativeAt3.semPred != null) {
                                cSharpBlockFinishingInfo = cSharpBlockFinishingInfo2;
                                i2 = i10;
                                String processActionForSpecialSymbols = processActionForSpecialSymbols(alternativeAt3.semPred, alternativeBlock.line, this.currentRule, new ActionTransInfo());
                                if (((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar)) && this.grammar.debuggingOutput) {
                                    lookaheadTestExpression = new StringBuffer("(").append(lookaheadTestExpression).append("&& fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.PREDICTING,").append(addSemPred(this.charFormatter.escapeString(processActionForSpecialSymbols))).append(",").append(processActionForSpecialSymbols).append("))").toString();
                                } else {
                                    lookaheadTestExpression = new StringBuffer("(").append(lookaheadTestExpression).append("&&(").append(processActionForSpecialSymbols).append("))").toString();
                                }
                            } else {
                                cSharpBlockFinishingInfo = cSharpBlockFinishingInfo2;
                                i2 = i10;
                            }
                            if (i9 > 0) {
                                if (alternativeAt3.synPred != null) {
                                    println("else {");
                                    this.tabs++;
                                    genSynPred(alternativeAt3.synPred, lookaheadTestExpression);
                                    i8++;
                                } else {
                                    println(new StringBuffer("else if ").append(lookaheadTestExpression).append(" {").toString());
                                }
                            } else if (alternativeAt3.synPred != null) {
                                genSynPred(alternativeAt3.synPred, lookaheadTestExpression);
                            } else {
                                if (this.grammar instanceof TreeWalkerGrammar) {
                                    println("if (_t == null)");
                                    this.tabs++;
                                    println("_t = ASTNULL;");
                                    this.tabs--;
                                }
                                println(new StringBuffer("if ").append(lookaheadTestExpression).toString());
                                println("{");
                            }
                            i9++;
                            this.tabs++;
                            genAlt(alternativeAt3, alternativeBlock);
                            this.tabs--;
                            println("}");
                            i10 = i2 + 1;
                            z2 = z5;
                            z6 = z3;
                            z8 = z4;
                            str2 = str;
                            i7 = i;
                            cSharpBlockFinishingInfo2 = cSharpBlockFinishingInfo;
                        }
                    } else if (i9 == 0) {
                        println(new StringBuffer("if ").append(lookaheadTestExpression).toString());
                        println("{");
                    } else {
                        println(new StringBuffer("else if ").append(lookaheadTestExpression).toString());
                        println("{");
                    }
                    cSharpBlockFinishingInfo = cSharpBlockFinishingInfo2;
                    i2 = i10;
                    i9++;
                    this.tabs++;
                    genAlt(alternativeAt3, alternativeBlock);
                    this.tabs--;
                    println("}");
                    i10 = i2 + 1;
                    z2 = z5;
                    z6 = z3;
                    z8 = z4;
                    str2 = str;
                    i7 = i;
                    cSharpBlockFinishingInfo2 = cSharpBlockFinishingInfo;
                }
                cSharpBlockFinishingInfo = cSharpBlockFinishingInfo2;
                i2 = i10;
                z5 = z2;
                str = str2;
                i = i7;
                i10 = i2 + 1;
                z2 = z5;
                z6 = z3;
                z8 = z4;
                str2 = str;
                i7 = i;
                cSharpBlockFinishingInfo2 = cSharpBlockFinishingInfo;
            }
            i7--;
            z7 = true;
        }
        for (int i12 = z7 ? 1 : 0; i12 <= i8; i12++) {
            str2 = new StringBuffer().append(str2).append("}").toString();
        }
        this.genAST = z6;
        this.saveText = z8;
        if (z2) {
            this.tabs -= z7 ? 1 : 0;
            cSharpBlockFinishingInfo2.postscript = new StringBuffer().append(str2).append("break; }").toString();
            cSharpBlockFinishingInfo2.generatedSwitch = z7;
            if (i9 <= 0) {
                z7 = false;
            }
            cSharpBlockFinishingInfo2.generatedAnIf = z7;
        } else {
            cSharpBlockFinishingInfo2.postscript = str2;
            cSharpBlockFinishingInfo2.generatedSwitch = false;
            if (i9 <= 0) {
                z7 = false;
            }
            cSharpBlockFinishingInfo2.generatedAnIf = z7;
        }
        return cSharpBlockFinishingInfo2;
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
            boolean z = this.genAST && !(alternativeElement.getLabel() == null && alternativeElement.getAutoGenType() == 3);
            if (alternativeElement.getAutoGenType() != 3 && (alternativeElement instanceof TokenRefElement)) {
                z = true;
            }
            boolean z2 = this.grammar.hasSyntacticPredicate;
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
            if (z) {
                if (alternativeElement instanceof GrammarAtom) {
                    GrammarAtom grammarAtom = (GrammarAtom) alternativeElement;
                    if (grammarAtom.getASTNodeType() != null) {
                        genASTDeclaration(alternativeElement, str, grammarAtom.getASTNodeType());
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
                println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(stringBuffer3).append("_in = null;").toString());
            }
            if (alternativeElement.getLabel() != null) {
                if (alternativeElement instanceof GrammarAtom) {
                    println(new StringBuffer().append(stringBuffer3).append(" = ").append(getASTCreateString((GrammarAtom) alternativeElement, str2)).append(";").toString());
                } else {
                    println(new StringBuffer().append(stringBuffer3).append(" = ").append(getASTCreateString(str2)).append(";").toString());
                }
            }
            if (alternativeElement.getLabel() == null && z) {
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
                if (autoGenType == 1) {
                    if (this.usingCustomAST || ((alternativeElement instanceof GrammarAtom) && ((GrammarAtom) alternativeElement).getASTNodeType() != null)) {
                        println(new StringBuffer("astFactory.addASTChild(currentAST, (AST)").append(stringBuffer3).append(");").toString());
                    } else {
                        println(new StringBuffer("astFactory.addASTChild(currentAST, ").append(stringBuffer3).append(");").toString());
                    }
                } else if (autoGenType != 2) {
                } else {
                    if (this.usingCustomAST || ((alternativeElement instanceof GrammarAtom) && ((GrammarAtom) alternativeElement).getASTNodeType() != null)) {
                        println(new StringBuffer("astFactory.makeASTRoot(currentAST, (AST)").append(stringBuffer3).append(");").toString());
                    } else {
                        println(new StringBuffer("astFactory.makeASTRoot(currentAST, ").append(stringBuffer3).append(");").toString());
                    }
                }
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
            println(new StringBuffer("catch (").append(exceptionHandler.exceptionTypeAndName.getText()).append(")").toString());
            println("{");
            this.tabs++;
            if (this.grammar.hasSyntacticPredicate) {
                println("if (0 == inputState.guessing)");
                println("{");
                this.tabs++;
            }
            printAction(processActionForSpecialSymbols(exceptionHandler.action.getText(), exceptionHandler.action.getLine(), this.currentRule, new ActionTransInfo()));
            if (this.grammar.hasSyntacticPredicate) {
                this.tabs--;
                println("}");
                println("else");
                println("{");
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
            println("try   // for error handling");
            println("{");
            this.tabs++;
        }
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
        println(new StringBuffer().append(str2).append(" ").append(str).append("_AST = null;").toString());
        this.declaredASTVariables.add(alternativeElement);
    }

    protected void genHeader() {
        println(new StringBuffer("// $ANTLR ").append(Tool.version).append(": \"").append(this.antlrTool.fileMinusPath(this.antlrTool.grammarFile)).append("\" -> \"").append(this.grammar.getClassName()).append(".cs\"$").toString());
    }

    private void genLiteralsTest() {
        println("_ttype = testLiteralsTable(_ttype);");
    }

    private void genLiteralsTestForPartialToken() {
        println("_ttype = testLiteralsTable(text.ToString(_begin, text.Length-_begin), _ttype);");
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
            str = "(AST)_t,";
        } else {
            str = "_t,";
        }
        if ((this.grammar instanceof LexerGrammar) && (!this.saveText || grammarAtom.getAutoGenType() == 3)) {
            declareSaveIndexVariableIfNeeded();
            println("_saveIndex = text.Length;");
        }
        print(grammarAtom.not ? "matchNot(" : "match(");
        _print(str);
        if (grammarAtom.atomText.equals("EOF")) {
            _print("Token.EOF_TYPE");
        } else {
            _print(grammarAtom.atomText);
        }
        _println(");");
        if (this.grammar instanceof LexerGrammar) {
            if (!this.saveText || grammarAtom.getAutoGenType() == 3) {
                declareSaveIndexVariableIfNeeded();
                println("text.Length = _saveIndex;");
            }
        }
    }

    protected void genMatchUsingAtomTokenType(GrammarAtom grammarAtom) {
        String str;
        if (!(this.grammar instanceof TreeWalkerGrammar)) {
            str = "";
        } else if (this.usingCustomAST) {
            str = "(AST)_t,";
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
                println("public new Token nextToken()\t\t\t//throws TokenStreamException");
                println("{");
                this.tabs++;
                println("Token theRetToken = null;");
                _println("tryAgain:");
                println("for (;;)");
                println("{");
                this.tabs++;
                println("Token _token = null;");
                println("int _ttype = Token.INVALID_TYPE;");
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
                println("try     // for char stream error handling");
                println("{");
                this.tabs++;
                println("try     // for lexical error handling");
                println("{");
                this.tabs++;
                for (int i2 = 0; i2 < createNextTokenRule.getAlternatives().size(); i2++) {
                    Alternative alternativeAt = createNextTokenRule.getAlternativeAt(i2);
                    if (alternativeAt.cache[1].containsEpsilon()) {
                        this.antlrTool.warning(new StringBuffer("public lexical rule ").append(CodeGenerator.decodeLexerRuleName(((RuleRefElement) alternativeAt.head).targetRule)).append(" is optional (can match \"nothing\")").toString());
                    }
                }
                String property = System.getProperty("line.separator");
                CSharpBlockFinishingInfo genCommonBlock = genCommonBlock(createNextTokenRule, false);
                String stringBuffer2 = new StringBuffer("if (LA(1)==EOF_CHAR) { uponEOF(); returnToken_ = makeToken(Token.EOF_TYPE); }").append(property).append("\t\t\t\t").toString();
                if (((LexerGrammar) this.grammar).filterMode) {
                    stringBuffer = str == null ? new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(stringBuffer2).append("\t\t\t\telse").toString()).append("\t\t\t\t{").toString()).append("\t\t\t\t\tconsume();").toString()).append("\t\t\t\t\tgoto tryAgain;").toString()).append("\t\t\t\t}").toString() : new StringBuffer().append(stringBuffer2).append("\t\t\t\t\telse").append(property).append("\t\t\t\t\t{").append(property).append("\t\t\t\t\tcommit();").append(property).append("\t\t\t\t\ttry {m").append(str).append("(false);}").append(property).append("\t\t\t\t\tcatch(RecognitionException e)").append(property).append("\t\t\t\t\t{").append(property).append("\t\t\t\t\t\t// catastrophic failure").append(property).append("\t\t\t\t\t\treportError(e);").append(property).append("\t\t\t\t\t\tconsume();").append(property).append("\t\t\t\t\t}").append(property).append("\t\t\t\t\tgoto tryAgain;").append(property).append("\t\t\t\t}").toString();
                } else {
                    stringBuffer = new StringBuffer().append(stringBuffer2).append("else {").append(this.throwNoViable).append("}").toString();
                }
                genBlockFinish(genCommonBlock, stringBuffer);
                if (((LexerGrammar) this.grammar).filterMode && str != null) {
                    println("commit();");
                }
                println("if ( null==returnToken_ ) goto tryAgain; // found SKIP token");
                println("_ttype = returnToken_.Type;");
                if (((LexerGrammar) this.grammar).getTestLiterals()) {
                    genLiteralsTest();
                }
                println("returnToken_.Type = _ttype;");
                println("return returnToken_;");
                this.tabs--;
                println("}");
                println("catch (RecognitionException e) {");
                this.tabs++;
                if (((LexerGrammar) this.grammar).filterMode) {
                    if (str == null) {
                        println("if (!getCommitToPath())");
                        println("{");
                        this.tabs++;
                        println("consume();");
                        println("goto tryAgain;");
                        this.tabs--;
                        println("}");
                    } else {
                        println("if (!getCommitToPath())");
                        println("{");
                        this.tabs++;
                        println("rewind(_m);");
                        println("resetText();");
                        println(new StringBuffer("try {m").append(str).append("(false);}").toString());
                        println("catch(RecognitionException ee) {");
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
                    println("throw new TokenStreamRecognitionException(e);");
                    this.tabs--;
                }
                this.tabs--;
                println("}");
                this.tabs--;
                println("}");
                println("catch (CharStreamException cse) {");
                println("\tif ( cse is CharStreamIOException ) {");
                println("\t\tthrow new TokenStreamIOException(((CharStreamIOException)cse).io);");
                println("\t}");
                println("\telse {");
                println("\t\tthrow new TokenStreamException(cse.Message);");
                println("\t}");
                println("}");
                this.tabs--;
                println("}");
                this.tabs--;
                println("}");
                println("");
                return;
            }
        }
        println("");
        println("override public new Token nextToken()\t\t\t//throws TokenStreamException");
        println("{");
        this.tabs++;
        println("try");
        println("{");
        this.tabs++;
        println("uponEOF();");
        this.tabs--;
        println("}");
        println("catch(CharStreamIOException csioe)");
        println("{");
        this.tabs++;
        println("throw new TokenStreamIOException(csioe.io);");
        this.tabs--;
        println("}");
        println("catch(CharStreamException cse)");
        println("{");
        this.tabs++;
        println("throw new TokenStreamException(cse.Message);");
        this.tabs--;
        println("}");
        println("return new CommonToken(Token.EOF_TYPE, \"\");");
        this.tabs--;
        println("}");
        println("");
    }

    public void genRule(RuleSymbol ruleSymbol, boolean z, int i, TokenManager tokenManager) {
        boolean z2;
        String str;
        String str2;
        int i2;
        int i3;
        this.tabs = 1;
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
        boolean z3 = this.genAST;
        this.genAST = z3 && block.getAutoGen();
        this.saveText = block.getAutoGen();
        if (ruleSymbol.comment != null) {
            _println(ruleSymbol.comment);
        }
        print(new StringBuffer().append(ruleSymbol.access).append(" ").toString());
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
        _print(new StringBuffer(" //throws ").append(this.exceptionThrown).toString());
        if (this.grammar instanceof ParserGrammar) {
            _print(", TokenStreamException");
        } else if (this.grammar instanceof LexerGrammar) {
            _print(", CharStreamException, TokenStreamException");
        }
        if (block.throwsSpec != null) {
            if (this.grammar instanceof LexerGrammar) {
                this.antlrTool.error(new StringBuffer("user-defined throws spec not allowed (yet) for lexer rule ").append(block.ruleName).toString());
            } else {
                _print(new StringBuffer(", ").append(block.throwsSpec).toString());
            }
        }
        _println("");
        _println("{");
        this.tabs++;
        if (block.returnAction != null) {
            println(new StringBuffer().append(block.returnAction).append(";").toString());
        }
        println(this.commonLocalVars);
        if (this.grammar.traceRules) {
            if (this.grammar instanceof TreeWalkerGrammar) {
                if (this.usingCustomAST) {
                    println(new StringBuffer("traceIn(\"").append(ruleSymbol.getId()).append("\",(AST)_t);").toString());
                } else {
                    println(new StringBuffer("traceIn(\"").append(ruleSymbol.getId()).append("\",_t);").toString());
                }
            } else {
                println(new StringBuffer("traceIn(\"").append(ruleSymbol.getId()).append("\");").toString());
            }
        }
        if (this.grammar instanceof LexerGrammar) {
            if (ruleSymbol.getId().equals("mEOF")) {
                println("_ttype = Token.EOF_TYPE;");
            } else {
                println(new StringBuffer("_ttype = ").append(ruleSymbol.getId().substring(1)).append(";").toString());
            }
            this.bSaveIndexCreated = false;
        }
        if (this.grammar.debuggingOutput) {
            if (this.grammar instanceof ParserGrammar) {
                println(new StringBuffer("fireEnterRule(").append(i).append(",0);").toString());
            } else if (this.grammar instanceof LexerGrammar) {
                println(new StringBuffer("fireEnterRule(").append(i).append(",_ttype);").toString());
            }
        }
        if (this.grammar.debuggingOutput || this.grammar.traceRules) {
            println("try { // debugging");
            this.tabs++;
        }
        if (this.grammar instanceof TreeWalkerGrammar) {
            println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(ruleSymbol.getId()).append("_AST_in = (").append(this.labeledElementASTType).append(")_t;").toString());
        }
        if (this.grammar.buildAST) {
            println("returnAST = null;");
            println("ASTPair currentAST = new ASTPair();");
            println(new StringBuffer().append(this.labeledElementASTType).append(" ").append(ruleSymbol.getId()).append("_AST = null;").toString());
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
            String str3 = alternativeAt.semPred;
            if (str3 != null) {
                genSemPred(str3, this.currentRule.line);
            }
            if (alternativeAt.synPred != null) {
                z2 = z3;
                str = "";
                str2 = "\");";
                this.antlrTool.warning("Syntactic predicate ignored for single alternative", this.grammar.getFilename(), alternativeAt.synPred.getLine(), alternativeAt.synPred.getColumn());
            } else {
                z2 = z3;
                str = "";
                str2 = "\");";
            }
            genAlt(alternativeAt, block);
        } else {
            z2 = z3;
            str = "";
            str2 = "\");";
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
            println(new StringBuffer("catch (").append(this.exceptionThrown).append(" ex)").toString());
            println("{");
            this.tabs++;
            if (this.grammar.hasSyntacticPredicate) {
                println("if (0 == inputState.guessing)");
                println("{");
                this.tabs++;
            }
            println("reportError(ex);");
            if (!(this.grammar instanceof TreeWalkerGrammar)) {
                String bitsetName = getBitsetName(markBitsetForGen(this.grammar.theLLkAnalyzer.FOLLOW(1, block.endNode).fset));
                println("consume();");
                println(new StringBuffer("consumeUntil(").append(bitsetName).append(");").toString());
                i2 = 1;
            } else {
                println("if (null != _t)");
                println("{");
                i2 = 1;
                this.tabs++;
                println("_t = _t.getNextSibling();");
                this.tabs--;
                println("}");
            }
            if (this.grammar.hasSyntacticPredicate) {
                this.tabs -= i2;
                println("}");
                println("else");
                println("{");
                this.tabs += i2;
                println("throw;");
                this.tabs -= i2;
                println("}");
            }
            this.tabs -= i2;
            println("}");
        }
        if (this.grammar.buildAST) {
            println(new StringBuffer("returnAST = ").append(ruleSymbol.getId()).append("_AST;").toString());
        }
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("retTree_ = _t;");
        }
        if (block.getTestLiterals()) {
            if (ruleSymbol.access.equals("protected")) {
                genLiteralsTestForPartialToken();
            } else {
                genLiteralsTest();
            }
        }
        if (this.grammar instanceof LexerGrammar) {
            println("if (_createToken && (null == _token) && (_ttype != Token.SKIP))");
            println("{");
            this.tabs++;
            println("_token = makeToken(_ttype);");
            println("_token.setText(text.ToString(_begin, text.Length-_begin));");
            this.tabs--;
            println("}");
            println("returnToken_ = _token;");
        }
        if (block.returnAction != null) {
            println(new StringBuffer("return ").append(extractIdOfAction(block.returnAction, block.getLine(), block.getColumn())).append(";").toString());
        }
        if (this.grammar.debuggingOutput || this.grammar.traceRules) {
            this.tabs--;
            println("}");
            println("finally");
            println("{ // debugging");
            this.tabs++;
            if (this.grammar.debuggingOutput) {
                if (this.grammar instanceof ParserGrammar) {
                    println(new StringBuffer("fireExitRule(").append(i).append(",0);").toString());
                } else if (this.grammar instanceof LexerGrammar) {
                    println(new StringBuffer("fireExitRule(").append(i).append(",_ttype);").toString());
                }
            }
            if (this.grammar.traceRules) {
                if (this.grammar instanceof TreeWalkerGrammar) {
                    println(new StringBuffer("traceOut(\"").append(ruleSymbol.getId()).append("\",_t);").toString());
                } else {
                    println(new StringBuffer("traceOut(\"").append(ruleSymbol.getId()).append(str2).toString());
                }
            }
            i3 = 1;
            this.tabs--;
            println("}");
        } else {
            i3 = 1;
        }
        this.tabs -= i3;
        println("}");
        println(str);
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
            String processActionForSpecialSymbols = processActionForSpecialSymbols(ruleRefElement.args, 0, this.currentRule, actionTransInfo);
            if (actionTransInfo.assignToRoot || actionTransInfo.refRuleRoot != null) {
                this.antlrTool.error(new StringBuffer("Arguments of rule reference '").append(ruleRefElement.targetRule).append("' cannot set or ref #").append(this.currentRule.getRuleName()).toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
            }
            _print(processActionForSpecialSymbols);
            if (ruleSymbol.block.argAction == null) {
                this.antlrTool.warning(new StringBuffer("Rule '").append(ruleRefElement.targetRule).append("' accepts no arguments").toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
            }
        } else if (ruleSymbol.block.argAction != null) {
            this.antlrTool.warning(new StringBuffer("Missing parameters on reference to rule ").append(ruleRefElement.targetRule).toString(), this.grammar.getFilename(), ruleRefElement.getLine(), ruleRefElement.getColumn());
        }
        _println(");");
        if (this.grammar instanceof TreeWalkerGrammar) {
            println("_t = retTree_;");
        }
    }

    protected void genSemPred(String str, int i) {
        String processActionForSpecialSymbols = processActionForSpecialSymbols(str, i, this.currentRule, new ActionTransInfo());
        String escapeString = this.charFormatter.escapeString(processActionForSpecialSymbols);
        if (this.grammar.debuggingOutput && ((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar))) {
            processActionForSpecialSymbols = new StringBuffer("fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.VALIDATING,").append(addSemPred(escapeString)).append(",").append(processActionForSpecialSymbols).append(")").toString();
        }
        println(new StringBuffer("if (!(").append(processActionForSpecialSymbols).append("))").toString());
        println(new StringBuffer("  throw new SemanticException(\"").append(escapeString).append("\");").toString());
    }

    protected void genSemPredMap() {
        Enumeration elements = this.semPreds.elements();
        println("private string[] _semPredNames = {");
        this.tabs++;
        while (elements.hasMoreElements()) {
            println(new StringBuffer("\"").append(elements.nextElement()).append("\",").toString());
        }
        this.tabs--;
        println("};");
    }

    protected void genSynPred(SynPredBlock synPredBlock, String str) {
        if (this.DEBUG_CODE_GENERATOR) {
            System.out.println(new StringBuffer("gen=>(").append(synPredBlock).append(")").toString());
        }
        println(new StringBuffer("bool synPredMatched").append(synPredBlock.ID).append(" = false;").toString());
        println(new StringBuffer("if (").append(str).append(")").toString());
        println("{");
        this.tabs++;
        if (this.grammar instanceof TreeWalkerGrammar) {
            println(new StringBuffer("AST __t").append(synPredBlock.ID).append(" = _t;").toString());
        } else {
            println(new StringBuffer("int _m").append(synPredBlock.ID).append(" = mark();").toString());
        }
        println(new StringBuffer("synPredMatched").append(synPredBlock.ID).append(" = true;").toString());
        println("inputState.guessing++;");
        if (this.grammar.debuggingOutput && ((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar))) {
            println("fireSyntacticPredicateStarted();");
        }
        this.syntacticPredLevel++;
        println("try {");
        this.tabs++;
        gen(synPredBlock);
        this.tabs--;
        println("}");
        println(new StringBuffer("catch (").append(this.exceptionThrown).append(")").toString());
        println("{");
        this.tabs++;
        println(new StringBuffer("synPredMatched").append(synPredBlock.ID).append(" = false;").toString());
        this.tabs--;
        println("}");
        if (this.grammar instanceof TreeWalkerGrammar) {
            println(new StringBuffer("_t = __t").append(synPredBlock.ID).append(";").toString());
        } else {
            println(new StringBuffer("rewind(_m").append(synPredBlock.ID).append(");").toString());
        }
        println("inputState.guessing--;");
        if (this.grammar.debuggingOutput && ((this.grammar instanceof ParserGrammar) || (this.grammar instanceof LexerGrammar))) {
            println(new StringBuffer("if (synPredMatched").append(synPredBlock.ID).append(")").toString());
            println("  fireSyntacticPredicateSucceeded();");
            println("else");
            println("  fireSyntacticPredicateFailed();");
        }
        this.syntacticPredLevel--;
        this.tabs--;
        println("}");
        println(new StringBuffer("if ( synPredMatched").append(synPredBlock.ID).append(" )").toString());
        println("{");
    }

    public void genTokenStrings() {
        println("");
        println("public static readonly string[] tokenNames_ = new string[] {");
        this.tabs++;
        antlr.collections.impl.Vector vocabulary = this.grammar.tokenManager.getVocabulary();
        for (int i = 0; i < vocabulary.size(); i++) {
            String str = (String) vocabulary.elementAt(i);
            if (str == null) {
                str = new StringBuffer("<").append(String.valueOf(i)).append(">").toString();
            }
            if (!str.startsWith("\"") && !str.startsWith("<")) {
                TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(str);
                if (tokenSymbol != null && tokenSymbol.getParaphrase() != null) {
                    str = StringUtils.stripFrontBack(tokenSymbol.getParaphrase(), "\"", "\"");
                }
            } else if (str.startsWith("\"")) {
                str = StringUtils.stripFrontBack(str, "\"", "\"");
            }
            print(this.charFormatter.literalString(str));
            if (i != vocabulary.size() - 1) {
                _print(",");
            }
            _println("");
        }
        this.tabs--;
        println("};");
    }

    protected void genTokenTypes(TokenManager tokenManager) throws IOException {
        setupOutput(new StringBuffer().append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).toString());
        this.tabs = 0;
        genHeader();
        println(this.behavior.getHeaderAction(""));
        CSharpNameSpace cSharpNameSpace = nameSpace;
        if (cSharpNameSpace != null) {
            cSharpNameSpace.emitDeclarations(this.currentOutput);
        }
        this.tabs++;
        println(new StringBuffer("public class ").append(tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).toString());
        println("{");
        this.tabs++;
        genTokenDefinitions(tokenManager);
        this.tabs--;
        println("}");
        this.tabs--;
        CSharpNameSpace cSharpNameSpace2 = nameSpace;
        if (cSharpNameSpace2 != null) {
            cSharpNameSpace2.emitClosures(this.currentOutput);
        }
        this.currentOutput.close();
        this.currentOutput = null;
        exitIfError();
    }

    protected void genTokenDefinitions(TokenManager tokenManager) throws IOException {
        antlr.collections.impl.Vector vocabulary = tokenManager.getVocabulary();
        println("public const int EOF = 1;");
        println("public const int NULL_TREE_LOOKAHEAD = 3;");
        for (int i = 4; i < vocabulary.size(); i++) {
            String str = (String) vocabulary.elementAt(i);
            if (str != null) {
                if (str.startsWith("\"")) {
                    StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) tokenManager.getTokenSymbol(str);
                    if (stringLiteralSymbol == null) {
                        this.antlrTool.panic(new StringBuffer("String literal ").append(str).append(" not in symbol table").toString());
                    } else if (stringLiteralSymbol.label != null) {
                        println(new StringBuffer("public const int ").append(stringLiteralSymbol.label).append(" = ").append(i).append(";").toString());
                    } else {
                        String mangleLiteral = mangleLiteral(str);
                        if (mangleLiteral != null) {
                            println(new StringBuffer("public const int ").append(mangleLiteral).append(" = ").append(i).append(";").toString());
                            stringLiteralSymbol.label = mangleLiteral;
                        } else {
                            println(new StringBuffer("// ").append(str).append(" = ").append(i).toString());
                        }
                    }
                } else if (!str.startsWith("<")) {
                    println(new StringBuffer("public const int ").append(str).append(" = ").append(i).append(";").toString());
                }
            }
        }
        println("");
    }

    @Override // antlr.CodeGenerator
    public String processStringForASTConstructor(String str) {
        return this.usingCustomAST ? (((this.grammar instanceof TreeWalkerGrammar) || (this.grammar instanceof ParserGrammar)) && !this.grammar.tokenManager.tokenDefined(str)) ? new StringBuffer("(AST)").append(str).toString() : str : str;
    }

    @Override // antlr.CodeGenerator
    public String getASTCreateString(antlr.collections.impl.Vector vector) {
        if (vector.size() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(new StringBuffer("(").append(this.labeledElementASTType).append(")astFactory.make( (new ASTArray(").append(vector.size()).append("))").toString());
        for (int i = 0; i < vector.size(); i++) {
            stringBuffer.append(new StringBuffer(".add(").append(vector.elementAt(i)).append(")").toString());
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    @Override // antlr.CodeGenerator
    public String getASTCreateString(GrammarAtom grammarAtom, String str) {
        String stringBuffer = new StringBuffer("astFactory.create(").append(str).append(")").toString();
        if (grammarAtom == null) {
            return getASTCreateString(str);
        }
        if (grammarAtom.getASTNodeType() == null) {
            return this.usingCustomAST ? new StringBuffer("(").append(this.labeledElementASTType).append(") ").append(stringBuffer).toString() : stringBuffer;
        }
        TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(grammarAtom.getText());
        if (tokenSymbol == null || tokenSymbol.getASTNodeType() != grammarAtom.getASTNodeType()) {
            return new StringBuffer("(").append(grammarAtom.getASTNodeType()).append(") astFactory.create(").append(str).append(", \"").append(grammarAtom.getASTNodeType()).append("\")").toString();
        }
        return (tokenSymbol == null || tokenSymbol.getASTNodeType() == null) ? stringBuffer : new StringBuffer("(").append(tokenSymbol.getASTNodeType()).append(") ").append(stringBuffer).toString();
    }

    public String getASTCreateString(String str) {
        if (str == null) {
            str = "";
        }
        String stringBuffer = new StringBuffer("astFactory.create(").append(str).append(")").toString();
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            String substring = str.substring(0, indexOf);
            str.substring(indexOf + 1, str.length()).indexOf(44);
            str = substring;
        }
        TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(str);
        if (tokenSymbol == null || tokenSymbol.getASTNodeType() == null) {
            return this.usingCustomAST ? new StringBuffer("(").append(this.labeledElementASTType).append(") ").append(stringBuffer).toString() : stringBuffer;
        }
        return new StringBuffer("(").append(tokenSymbol.getASTNodeType()).append(") ").append(stringBuffer).toString();
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
            return "( true )";
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
                stringBuffer.append("||");
            }
            stringBuffer.append(lookaheadString);
            stringBuffer.append("==");
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
        if (tokenSymbolAt instanceof StringLiteralSymbol) {
            String label = ((StringLiteralSymbol) tokenSymbolAt).getLabel();
            return (label == null && (label = mangleLiteral(id)) == null) ? String.valueOf(i) : label;
        }
        return id;
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
            return "_t.Type";
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8  */
    @Override // antlr.CodeGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mapTreeId(java.lang.String r7, antlr.ActionTransInfo r8) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CSharpCodeGenerator.mapTreeId(java.lang.String, antlr.ActionTransInfo):java.lang.String");
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
            java.lang.String r0 = antlr.CSharpCodeGenerator.NONUNIQUE
            r3.put(r2, r0)
            goto L41
        L3c:
            java.util.Hashtable r0 = r1.treeVariableMap
            r0.put(r2, r3)
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CSharpCodeGenerator.mapTreeVariable(antlr.AlternativeElement, java.lang.String):void");
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

    private void setupGrammarParameters(Grammar grammar) {
        Token option;
        Token option2;
        String stripFrontBack;
        Token option3;
        String stripFrontBack2;
        boolean z = grammar instanceof ParserGrammar;
        if (z || (grammar instanceof LexerGrammar) || (grammar instanceof TreeWalkerGrammar)) {
            if (this.antlrTool.nameSpace != null) {
                nameSpace = new CSharpNameSpace(this.antlrTool.nameSpace.getName());
            }
            if (grammar.hasOption("namespace") && (option = grammar.getOption("namespace")) != null) {
                nameSpace = new CSharpNameSpace(option.getText());
            }
        }
        if (z) {
            this.labeledElementASTType = "AST";
            if (grammar.hasOption("ASTLabelType") && (option3 = grammar.getOption("ASTLabelType")) != null && (stripFrontBack2 = StringUtils.stripFrontBack(option3.getText(), "\"", "\"")) != null) {
                this.usingCustomAST = true;
                this.labeledElementASTType = stripFrontBack2;
            }
            this.labeledElementType = "Token ";
            this.labeledElementInit = "null";
            this.commonExtraArgs = "";
            this.commonExtraParams = "";
            this.commonLocalVars = "";
            this.lt1Value = "LT(1)";
            this.exceptionThrown = "RecognitionException";
            this.throwNoViable = "throw new NoViableAltException(LT(1), getFilename());";
        } else if (grammar instanceof LexerGrammar) {
            this.labeledElementType = "char ";
            this.labeledElementInit = "'\\0'";
            this.commonExtraArgs = "";
            this.commonExtraParams = "bool _createToken";
            this.commonLocalVars = "int _ttype; Token _token=null; int _begin=text.Length;";
            this.lt1Value = "LA(1)";
            this.exceptionThrown = "RecognitionException";
            this.throwNoViable = "throw new NoViableAltForCharException((char)LA(1), getFilename(), getLine(), getColumn());";
        } else if (grammar instanceof TreeWalkerGrammar) {
            this.labeledElementASTType = "AST";
            this.labeledElementType = "AST";
            if (grammar.hasOption("ASTLabelType") && (option2 = grammar.getOption("ASTLabelType")) != null && (stripFrontBack = StringUtils.stripFrontBack(option2.getText(), "\"", "\"")) != null) {
                this.usingCustomAST = true;
                this.labeledElementASTType = stripFrontBack;
                this.labeledElementType = stripFrontBack;
            }
            if (!grammar.hasOption("ASTLabelType")) {
                grammar.setOption("ASTLabelType", new Token(6, "AST"));
            }
            this.labeledElementInit = "null";
            this.commonExtraArgs = "_t";
            this.commonExtraParams = "AST _t";
            this.commonLocalVars = "";
            this.lt1Value = new StringBuffer("(").append(this.labeledElementASTType).append(")_t").toString();
            this.exceptionThrown = "RecognitionException";
            this.throwNoViable = "throw new NoViableAltException(_t);";
        } else {
            this.antlrTool.panic("Unknown grammar type");
        }
    }

    public void setupOutput(String str) throws IOException {
        this.currentOutput = this.antlrTool.openOutputFile(new StringBuffer().append(str).append(".cs").toString());
    }

    private static String OctalToUnicode(String str) {
        if (4 > str.length() || '\'' != str.charAt(0) || '\\' != str.charAt(1) || '0' > str.charAt(2) || '7' < str.charAt(2) || '\'' != str.charAt(str.length() - 1)) {
            return str;
        }
        return new StringBuffer("'\\x").append(Integer.toHexString(Integer.valueOf(str.substring(2, str.length() - 1), 8).intValue())).append("'").toString();
    }

    public String getTokenTypesClassName() {
        return new String(new StringBuffer().append(this.grammar.tokenManager.getName()).append(CodeGenerator.TokenTypesFileSuffix).toString());
    }

    private void declareSaveIndexVariableIfNeeded() {
        if (this.bSaveIndexCreated) {
            return;
        }
        println("int _saveIndex = 0;");
        this.bSaveIndexCreated = true;
    }
}
