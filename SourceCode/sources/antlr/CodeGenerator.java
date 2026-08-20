package antlr;

import antlr.collections.impl.BitSet;
import antlr.collections.impl.Vector;
import com.explorestack.iab.utils.m;
import java.io.IOException;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class CodeGenerator {
    protected static final int BITSET_OPTIMIZE_INIT_THRESHOLD = 8;
    protected static final int DEFAULT_BITSET_TEST_THRESHOLD = 4;
    protected static final int DEFAULT_MAKE_SWITCH_THRESHOLD = 2;
    private static boolean OLD_ACTION_TRANSLATOR = true;
    public static String TokenTypesFileExt = ".txt";
    public static String TokenTypesFileSuffix = "TokenTypes";
    protected LLkGrammarAnalyzer analyzer;
    protected Tool antlrTool;
    protected DefineGrammarSymbols behavior;
    protected Vector bitsetsUsed;
    protected CharFormatter charFormatter;
    protected transient PrintWriter currentOutput;
    protected int tabs = 0;
    protected Grammar grammar = null;
    protected boolean DEBUG_CODE_GENERATOR = false;
    protected int makeSwitchThreshold = 2;
    protected int bitsetTestThreshold = 4;

    public abstract void gen();

    public abstract void gen(ActionElement actionElement);

    public abstract void gen(AlternativeBlock alternativeBlock);

    public abstract void gen(BlockEndElement blockEndElement);

    public abstract void gen(CharLiteralElement charLiteralElement);

    public abstract void gen(CharRangeElement charRangeElement);

    public abstract void gen(LexerGrammar lexerGrammar) throws IOException;

    public abstract void gen(OneOrMoreBlock oneOrMoreBlock);

    public abstract void gen(ParserGrammar parserGrammar) throws IOException;

    public abstract void gen(RuleRefElement ruleRefElement);

    public abstract void gen(StringLiteralElement stringLiteralElement);

    public abstract void gen(TokenRangeElement tokenRangeElement);

    public abstract void gen(TokenRefElement tokenRefElement);

    public abstract void gen(TreeElement treeElement);

    public abstract void gen(TreeWalkerGrammar treeWalkerGrammar) throws IOException;

    public abstract void gen(WildcardElement wildcardElement);

    public abstract void gen(ZeroOrMoreBlock zeroOrMoreBlock);

    public abstract String getASTCreateString(GrammarAtom grammarAtom, String str);

    public abstract String getASTCreateString(Vector vector);

    public abstract String mapTreeId(String str, ActionTransInfo actionTransInfo);

    protected abstract String processActionForSpecialSymbols(String str, int i, RuleBlock ruleBlock, ActionTransInfo actionTransInfo);

    public String processStringForASTConstructor(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _print(String str) {
        if (str != null) {
            this.currentOutput.print(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:43:0x005a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x002f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void _printAction(java.lang.String r9) {
        /*
            r8 = this;
            if (r9 != 0) goto L3
            return
        L3:
            r0 = 0
            r1 = r0
        L5:
            int r2 = r9.length()
            if (r1 >= r2) goto L19
            char r2 = r9.charAt(r1)
            boolean r2 = java.lang.Character.isSpaceChar(r2)
            if (r2 != 0) goto L16
            goto L19
        L16:
            int r1 = r1 + 1
            goto L5
        L19:
            int r2 = r9.length()
            r3 = 1
            int r2 = r2 - r3
        L1f:
            if (r2 <= r1) goto L2f
            char r4 = r9.charAt(r2)
            boolean r4 = java.lang.Character.isSpaceChar(r4)
            if (r4 != 0) goto L2c
            goto L2f
        L2c:
            int r2 = r2 + (-1)
            goto L1f
        L2f:
            if (r1 <= r2) goto L37
            java.io.PrintWriter r9 = r8.currentOutput
            r9.println()
            return
        L37:
            char r4 = r9.charAt(r1)
            int r5 = r1 + 1
            r6 = 10
            if (r4 == r6) goto L56
            r7 = 13
            if (r4 == r7) goto L4c
            java.io.PrintWriter r1 = r8.currentOutput
            r1.print(r4)
            r4 = r0
            goto L57
        L4c:
            if (r5 > r2) goto L56
            char r4 = r9.charAt(r5)
            if (r4 != r6) goto L56
            int r5 = r1 + 2
        L56:
            r4 = r3
        L57:
            r1 = r5
            if (r4 == 0) goto L2f
            java.io.PrintWriter r4 = r8.currentOutput
            r4.println()
            r8.printTabs()
        L62:
            if (r1 > r2) goto L2f
            char r4 = r9.charAt(r1)
            boolean r4 = java.lang.Character.isSpaceChar(r4)
            if (r4 != 0) goto L6f
            goto L2f
        L6f:
            int r1 = r1 + 1
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.CodeGenerator._printAction(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _println(String str) {
        if (str != null) {
            this.currentOutput.println(str);
        }
    }

    public static boolean elementsAreRange(int[] iArr) {
        if (iArr.length == 0) {
            return false;
        }
        int i = iArr[0];
        int i2 = iArr[iArr.length - 1];
        if (iArr.length > 2 && (i2 - i) + 1 <= iArr.length) {
            int i3 = i + 1;
            for (int i4 = 1; i4 < iArr.length - 1; i4++) {
                if (i3 != iArr[i4]) {
                    return false;
                }
                i3++;
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String extractIdOfAction(Token token) {
        return extractIdOfAction(token.getText(), token.getLine(), token.getColumn());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String extractIdOfAction(String str, int i, int i2) {
        String removeAssignmentFromDeclaration = removeAssignmentFromDeclaration(str);
        for (int length = removeAssignmentFromDeclaration.length() - 2; length >= 0; length--) {
            if (!Character.isLetterOrDigit(removeAssignmentFromDeclaration.charAt(length)) && removeAssignmentFromDeclaration.charAt(length) != '_') {
                return removeAssignmentFromDeclaration.substring(length + 1);
            }
        }
        this.antlrTool.warning("Ill-formed action", this.grammar.getFilename(), i, i2);
        return "";
    }

    protected String extractTypeOfAction(Token token) {
        return extractTypeOfAction(token.getText(), token.getLine(), token.getColumn());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String extractTypeOfAction(String str, int i, int i2) {
        String removeAssignmentFromDeclaration = removeAssignmentFromDeclaration(str);
        for (int length = removeAssignmentFromDeclaration.length() - 2; length >= 0; length--) {
            if (!Character.isLetterOrDigit(removeAssignmentFromDeclaration.charAt(length)) && removeAssignmentFromDeclaration.charAt(length) != '_') {
                return removeAssignmentFromDeclaration.substring(0, length + 1);
            }
        }
        this.antlrTool.warning("Ill-formed action", this.grammar.getFilename(), i, i2);
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void genTokenInterchange(TokenManager tokenManager) throws IOException {
        String stringBuffer = new StringBuffer().append(tokenManager.getName()).append(TokenTypesFileSuffix).append(TokenTypesFileExt).toString();
        this.currentOutput = this.antlrTool.openOutputFile(stringBuffer);
        StringBuffer append = new StringBuffer("// $ANTLR ").append(Tool.version).append(": ");
        Tool tool = this.antlrTool;
        println(append.append(tool.fileMinusPath(tool.grammarFile)).append(" -> ").append(stringBuffer).append("$").toString());
        this.tabs = 0;
        println(new StringBuffer().append(tokenManager.getName()).append("    // output token vocab name").toString());
        Vector vocabulary = tokenManager.getVocabulary();
        for (int i = 4; i < vocabulary.size(); i++) {
            String str = (String) vocabulary.elementAt(i);
            if (this.DEBUG_CODE_GENERATOR) {
                System.out.println(new StringBuffer("gen persistence file entry for: ").append(str).toString());
            }
            if (str != null && !str.startsWith("<")) {
                if (str.startsWith("\"")) {
                    StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) tokenManager.getTokenSymbol(str);
                    if (stringLiteralSymbol != null && stringLiteralSymbol.label != null) {
                        print(new StringBuffer().append(stringLiteralSymbol.label).append("=").toString());
                    }
                    println(new StringBuffer().append(str).append("=").append(i).toString());
                } else {
                    print(str);
                    TokenSymbol tokenSymbol = tokenManager.getTokenSymbol(str);
                    if (tokenSymbol == null) {
                        this.antlrTool.warning(new StringBuffer("undefined token symbol: ").append(str).toString());
                    } else if (tokenSymbol.getParaphrase() != null) {
                        print(new StringBuffer("(").append(tokenSymbol.getParaphrase()).append(")").toString());
                    }
                    println(new StringBuffer("=").append(i).toString());
                }
            }
        }
        this.currentOutput.close();
        this.currentOutput = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getBitsetName(int i) {
        return new StringBuffer("_tokenSet_").append(i).toString();
    }

    public static String encodeLexerRuleName(String str) {
        return new StringBuffer(m.o).append(str).toString();
    }

    public static String decodeLexerRuleName(String str) {
        if (str == null) {
            return null;
        }
        return str.substring(1, str.length());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int markBitsetForGen(BitSet bitSet) {
        for (int i = 0; i < this.bitsetsUsed.size(); i++) {
            if (bitSet.equals((BitSet) this.bitsetsUsed.elementAt(i))) {
                return i;
            }
        }
        this.bitsetsUsed.appendElement(bitSet.clone());
        return this.bitsetsUsed.size() - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void print(String str) {
        if (str != null) {
            printTabs();
            this.currentOutput.print(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void printAction(String str) {
        if (str != null) {
            printTabs();
            _printAction(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void println(String str) {
        if (str != null) {
            printTabs();
            this.currentOutput.println(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void printTabs() {
        for (int i = 1; i <= this.tabs; i++) {
            this.currentOutput.print("\t");
        }
    }

    public String getFOLLOWBitSet(String str, int i) {
        GrammarSymbol symbol = this.grammar.getSymbol(str);
        if (symbol instanceof RuleSymbol) {
            return getBitsetName(markBitsetForGen(this.grammar.theLLkAnalyzer.FOLLOW(i, ((RuleSymbol) symbol).getBlock().endNode).fset));
        }
        return null;
    }

    public String getFIRSTBitSet(String str, int i) {
        GrammarSymbol symbol = this.grammar.getSymbol(str);
        if (symbol instanceof RuleSymbol) {
            return getBitsetName(markBitsetForGen(this.grammar.theLLkAnalyzer.look(i, ((RuleSymbol) symbol).getBlock()).fset));
        }
        return null;
    }

    protected String removeAssignmentFromDeclaration(String str) {
        return str.indexOf(61) >= 0 ? str.substring(0, str.indexOf(61)).trim() : str;
    }

    private void reset() {
        this.tabs = 0;
        this.bitsetsUsed = new Vector();
        this.currentOutput = null;
        this.grammar = null;
        this.DEBUG_CODE_GENERATOR = false;
        this.makeSwitchThreshold = 2;
        this.bitsetTestThreshold = 4;
    }

    public static String reverseLexerRuleName(String str) {
        return str.substring(1, str.length());
    }

    public void setAnalyzer(LLkGrammarAnalyzer lLkGrammarAnalyzer) {
        this.analyzer = lLkGrammarAnalyzer;
    }

    public void setBehavior(DefineGrammarSymbols defineGrammarSymbols) {
        this.behavior = defineGrammarSymbols;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGrammar(Grammar grammar) {
        reset();
        this.grammar = grammar;
        if (grammar.hasOption("codeGenMakeSwitchThreshold")) {
            try {
                this.makeSwitchThreshold = this.grammar.getIntegerOption("codeGenMakeSwitchThreshold");
            } catch (NumberFormatException unused) {
                Token option = this.grammar.getOption("codeGenMakeSwitchThreshold");
                this.antlrTool.error("option 'codeGenMakeSwitchThreshold' must be an integer", this.grammar.getClassName(), option.getLine(), option.getColumn());
            }
        }
        if (this.grammar.hasOption("codeGenBitsetTestThreshold")) {
            try {
                this.bitsetTestThreshold = this.grammar.getIntegerOption("codeGenBitsetTestThreshold");
            } catch (NumberFormatException unused2) {
                Token option2 = this.grammar.getOption("codeGenBitsetTestThreshold");
                this.antlrTool.error("option 'codeGenBitsetTestThreshold' must be an integer", this.grammar.getClassName(), option2.getLine(), option2.getColumn());
            }
        }
        if (this.grammar.hasOption("codeGenDebug")) {
            Token option3 = this.grammar.getOption("codeGenDebug");
            if (option3.getText().equals("true")) {
                this.DEBUG_CODE_GENERATOR = true;
            } else if (option3.getText().equals("false")) {
                this.DEBUG_CODE_GENERATOR = false;
            } else {
                this.antlrTool.error("option 'codeGenDebug' must be true or false", this.grammar.getClassName(), option3.getLine(), option3.getColumn());
            }
        }
    }

    public void setTool(Tool tool) {
        this.antlrTool = tool;
    }
}
