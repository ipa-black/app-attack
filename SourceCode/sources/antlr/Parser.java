package antlr;

import antlr.collections.AST;
import antlr.collections.impl.BitSet;
import antlr.debug.MessageListener;
import antlr.debug.ParserListener;
import antlr.debug.ParserMatchListener;
import antlr.debug.ParserTokenListener;
import antlr.debug.SemanticPredicateListener;
import antlr.debug.SyntacticPredicateListener;
import antlr.debug.TraceListener;
import java.util.Hashtable;
/* loaded from: classes.dex */
public abstract class Parser {
    protected ASTFactory astFactory;
    private boolean ignoreInvalidDebugCalls;
    protected ParserSharedInputState inputState;
    protected AST returnAST;
    protected String[] tokenNames;
    protected Hashtable tokenTypeToASTClassMap;
    protected int traceDepth;

    public abstract int LA(int i) throws TokenStreamException;

    public abstract Token LT(int i) throws TokenStreamException;

    public abstract void consume() throws TokenStreamException;

    protected void defaultDebuggingSetup(TokenStream tokenStream, TokenBuffer tokenBuffer) {
    }

    public boolean isDebugMode() {
        return false;
    }

    public Parser() {
        this(new ParserSharedInputState());
    }

    public Parser(ParserSharedInputState parserSharedInputState) {
        this.astFactory = null;
        this.tokenTypeToASTClassMap = null;
        this.ignoreInvalidDebugCalls = false;
        this.traceDepth = 0;
        this.inputState = parserSharedInputState;
    }

    public Hashtable getTokenTypeToASTClassMap() {
        return this.tokenTypeToASTClassMap;
    }

    public void addMessageListener(MessageListener messageListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("addMessageListener() is only valid if parser built for debugging");
        }
    }

    public void addParserListener(ParserListener parserListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("addParserListener() is only valid if parser built for debugging");
        }
    }

    public void addParserMatchListener(ParserMatchListener parserMatchListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("addParserMatchListener() is only valid if parser built for debugging");
        }
    }

    public void addParserTokenListener(ParserTokenListener parserTokenListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("addParserTokenListener() is only valid if parser built for debugging");
        }
    }

    public void addSemanticPredicateListener(SemanticPredicateListener semanticPredicateListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("addSemanticPredicateListener() is only valid if parser built for debugging");
        }
    }

    public void addSyntacticPredicateListener(SyntacticPredicateListener syntacticPredicateListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("addSyntacticPredicateListener() is only valid if parser built for debugging");
        }
    }

    public void addTraceListener(TraceListener traceListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("addTraceListener() is only valid if parser built for debugging");
        }
    }

    public void consumeUntil(int i) throws TokenStreamException {
        while (LA(1) != 1 && LA(1) != i) {
            consume();
        }
    }

    public void consumeUntil(BitSet bitSet) throws TokenStreamException {
        while (LA(1) != 1 && !bitSet.member(LA(1))) {
            consume();
        }
    }

    public AST getAST() {
        return this.returnAST;
    }

    public ASTFactory getASTFactory() {
        return this.astFactory;
    }

    public String getFilename() {
        return this.inputState.filename;
    }

    public ParserSharedInputState getInputState() {
        return this.inputState;
    }

    public void setInputState(ParserSharedInputState parserSharedInputState) {
        this.inputState = parserSharedInputState;
    }

    public String getTokenName(int i) {
        return this.tokenNames[i];
    }

    public String[] getTokenNames() {
        return this.tokenNames;
    }

    public int mark() {
        return this.inputState.input.mark();
    }

    public void match(int i) throws MismatchedTokenException, TokenStreamException {
        if (LA(1) != i) {
            throw new MismatchedTokenException(this.tokenNames, LT(1), i, false, getFilename());
        }
        consume();
    }

    public void match(BitSet bitSet) throws MismatchedTokenException, TokenStreamException {
        if (!bitSet.member(LA(1))) {
            throw new MismatchedTokenException(this.tokenNames, LT(1), bitSet, false, getFilename());
        }
        consume();
    }

    public void matchNot(int i) throws MismatchedTokenException, TokenStreamException {
        if (LA(1) == i) {
            throw new MismatchedTokenException(this.tokenNames, LT(1), i, true, getFilename());
        }
        consume();
    }

    public static void panic() {
        System.err.println("Parser: panic");
        System.exit(1);
    }

    public void removeMessageListener(MessageListener messageListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new RuntimeException("removeMessageListener() is only valid if parser built for debugging");
        }
    }

    public void removeParserListener(ParserListener parserListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new RuntimeException("removeParserListener() is only valid if parser built for debugging");
        }
    }

    public void removeParserMatchListener(ParserMatchListener parserMatchListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new RuntimeException("removeParserMatchListener() is only valid if parser built for debugging");
        }
    }

    public void removeParserTokenListener(ParserTokenListener parserTokenListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new RuntimeException("removeParserTokenListener() is only valid if parser built for debugging");
        }
    }

    public void removeSemanticPredicateListener(SemanticPredicateListener semanticPredicateListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("removeSemanticPredicateListener() is only valid if parser built for debugging");
        }
    }

    public void removeSyntacticPredicateListener(SyntacticPredicateListener syntacticPredicateListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new IllegalArgumentException("removeSyntacticPredicateListener() is only valid if parser built for debugging");
        }
    }

    public void removeTraceListener(TraceListener traceListener) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new RuntimeException("removeTraceListener() is only valid if parser built for debugging");
        }
    }

    public void reportError(RecognitionException recognitionException) {
        System.err.println(recognitionException);
    }

    public void reportError(String str) {
        if (getFilename() == null) {
            System.err.println(new StringBuffer("error: ").append(str).toString());
        } else {
            System.err.println(new StringBuffer().append(getFilename()).append(": error: ").append(str).toString());
        }
    }

    public void reportWarning(String str) {
        if (getFilename() == null) {
            System.err.println(new StringBuffer("warning: ").append(str).toString());
        } else {
            System.err.println(new StringBuffer().append(getFilename()).append(": warning: ").append(str).toString());
        }
    }

    public void rewind(int i) {
        this.inputState.input.rewind(i);
    }

    public void setASTFactory(ASTFactory aSTFactory) {
        this.astFactory = aSTFactory;
    }

    public void setASTNodeClass(String str) {
        this.astFactory.setASTNodeType(str);
    }

    public void setASTNodeType(String str) {
        setASTNodeClass(str);
    }

    public void setDebugMode(boolean z) {
        if (!this.ignoreInvalidDebugCalls) {
            throw new RuntimeException("setDebugMode() only valid if parser built for debugging");
        }
    }

    public void setFilename(String str) {
        this.inputState.filename = str;
    }

    public void setIgnoreInvalidDebugCalls(boolean z) {
        this.ignoreInvalidDebugCalls = z;
    }

    public void setTokenBuffer(TokenBuffer tokenBuffer) {
        this.inputState.input = tokenBuffer;
    }

    public void traceIndent() {
        for (int i = 0; i < this.traceDepth; i++) {
            System.out.print(" ");
        }
    }

    public void traceIn(String str) throws TokenStreamException {
        this.traceDepth++;
        traceIndent();
        System.out.println(new StringBuffer("> ").append(str).append("; LA(1)==").append(LT(1).getText()).append(this.inputState.guessing > 0 ? " [guessing]" : "").toString());
    }

    public void traceOut(String str) throws TokenStreamException {
        traceIndent();
        System.out.println(new StringBuffer("< ").append(str).append("; LA(1)==").append(LT(1).getText()).append(this.inputState.guessing > 0 ? " [guessing]" : "").toString());
        this.traceDepth--;
    }
}
