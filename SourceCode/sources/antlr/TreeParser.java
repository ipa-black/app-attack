package antlr;

import antlr.collections.AST;
import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class TreeParser {
    public static ASTNULLType ASTNULL = new ASTNULLType();
    protected AST _retTree;
    protected AST returnAST;
    protected String[] tokenNames;
    protected ASTFactory astFactory = new ASTFactory();
    protected int traceDepth = 0;
    protected TreeParserSharedInputState inputState = new TreeParserSharedInputState();

    public AST getAST() {
        return this.returnAST;
    }

    public ASTFactory getASTFactory() {
        return this.astFactory;
    }

    public String getTokenName(int i) {
        return this.tokenNames[i];
    }

    public String[] getTokenNames() {
        return this.tokenNames;
    }

    protected void match(AST ast, int i) throws MismatchedTokenException {
        if (ast == null || ast == ASTNULL || ast.getType() != i) {
            throw new MismatchedTokenException(getTokenNames(), ast, i, false);
        }
    }

    public void match(AST ast, BitSet bitSet) throws MismatchedTokenException {
        if (ast == null || ast == ASTNULL || !bitSet.member(ast.getType())) {
            throw new MismatchedTokenException(getTokenNames(), ast, bitSet, false);
        }
    }

    protected void matchNot(AST ast, int i) throws MismatchedTokenException {
        if (ast == null || ast == ASTNULL || ast.getType() == i) {
            throw new MismatchedTokenException(getTokenNames(), ast, i, true);
        }
    }

    public static void panic() {
        System.err.println("TreeWalker: panic");
        System.exit(1);
    }

    public void reportError(RecognitionException recognitionException) {
        System.err.println(recognitionException.toString());
    }

    public void reportError(String str) {
        System.err.println(new StringBuffer("error: ").append(str).toString());
    }

    public void reportWarning(String str) {
        System.err.println(new StringBuffer("warning: ").append(str).toString());
    }

    public void setASTFactory(ASTFactory aSTFactory) {
        this.astFactory = aSTFactory;
    }

    public void setASTNodeType(String str) {
        setASTNodeClass(str);
    }

    public void setASTNodeClass(String str) {
        this.astFactory.setASTNodeType(str);
    }

    public void traceIndent() {
        for (int i = 0; i < this.traceDepth; i++) {
            System.out.print(" ");
        }
    }

    public void traceIn(String str, AST ast) {
        this.traceDepth++;
        traceIndent();
        System.out.println(new StringBuffer("> ").append(str).append("(").append(ast != null ? ast.toString() : "null").append(")").append(this.inputState.guessing > 0 ? " [guessing]" : "").toString());
    }

    public void traceOut(String str, AST ast) {
        traceIndent();
        System.out.println(new StringBuffer("< ").append(str).append("(").append(ast != null ? ast.toString() : "null").append(")").append(this.inputState.guessing > 0 ? " [guessing]" : "").toString());
        this.traceDepth--;
    }
}
