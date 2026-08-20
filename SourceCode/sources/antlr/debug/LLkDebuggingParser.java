package antlr.debug;

import antlr.LLkParser;
import antlr.MismatchedTokenException;
import antlr.ParserSharedInputState;
import antlr.RecognitionException;
import antlr.TokenBuffer;
import antlr.TokenStream;
import antlr.TokenStreamException;
import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class LLkDebuggingParser extends LLkParser implements DebuggingParser {
    static /* synthetic */ Class class$antlr$TokenBuffer;
    static /* synthetic */ Class class$antlr$TokenStream;
    static /* synthetic */ Class class$antlr$debug$LLkDebuggingParser;
    private boolean _notDebugMode;
    protected ParserEventSupport parserEventSupport;
    protected String[] ruleNames;
    protected String[] semPredNames;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    public LLkDebuggingParser(int i) {
        super(i);
        this.parserEventSupport = new ParserEventSupport(this);
        this._notDebugMode = false;
    }

    public LLkDebuggingParser(ParserSharedInputState parserSharedInputState, int i) {
        super(parserSharedInputState, i);
        this.parserEventSupport = new ParserEventSupport(this);
        this._notDebugMode = false;
    }

    public LLkDebuggingParser(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.parserEventSupport = new ParserEventSupport(this);
        this._notDebugMode = false;
    }

    public LLkDebuggingParser(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.parserEventSupport = new ParserEventSupport(this);
        this._notDebugMode = false;
    }

    @Override // antlr.Parser
    public void addMessageListener(MessageListener messageListener) {
        this.parserEventSupport.addMessageListener(messageListener);
    }

    @Override // antlr.Parser
    public void addParserListener(ParserListener parserListener) {
        this.parserEventSupport.addParserListener(parserListener);
    }

    @Override // antlr.Parser
    public void addParserMatchListener(ParserMatchListener parserMatchListener) {
        this.parserEventSupport.addParserMatchListener(parserMatchListener);
    }

    @Override // antlr.Parser
    public void addParserTokenListener(ParserTokenListener parserTokenListener) {
        this.parserEventSupport.addParserTokenListener(parserTokenListener);
    }

    @Override // antlr.Parser
    public void addSemanticPredicateListener(SemanticPredicateListener semanticPredicateListener) {
        this.parserEventSupport.addSemanticPredicateListener(semanticPredicateListener);
    }

    @Override // antlr.Parser
    public void addSyntacticPredicateListener(SyntacticPredicateListener syntacticPredicateListener) {
        this.parserEventSupport.addSyntacticPredicateListener(syntacticPredicateListener);
    }

    @Override // antlr.Parser
    public void addTraceListener(TraceListener traceListener) {
        this.parserEventSupport.addTraceListener(traceListener);
    }

    @Override // antlr.LLkParser, antlr.Parser
    public void consume() {
        int i;
        try {
            i = LA(1);
        } catch (TokenStreamException unused) {
            i = -99;
        }
        super.consume();
        this.parserEventSupport.fireConsume(i);
    }

    protected void fireEnterRule(int i, int i2) {
        if (isDebugMode()) {
            this.parserEventSupport.fireEnterRule(i, this.inputState.guessing, i2);
        }
    }

    protected void fireExitRule(int i, int i2) {
        if (isDebugMode()) {
            this.parserEventSupport.fireExitRule(i, this.inputState.guessing, i2);
        }
    }

    protected boolean fireSemanticPredicateEvaluated(int i, int i2, boolean z) {
        return isDebugMode() ? this.parserEventSupport.fireSemanticPredicateEvaluated(i, i2, z, this.inputState.guessing) : z;
    }

    protected void fireSyntacticPredicateFailed() {
        if (isDebugMode()) {
            this.parserEventSupport.fireSyntacticPredicateFailed(this.inputState.guessing);
        }
    }

    protected void fireSyntacticPredicateStarted() {
        if (isDebugMode()) {
            this.parserEventSupport.fireSyntacticPredicateStarted(this.inputState.guessing);
        }
    }

    protected void fireSyntacticPredicateSucceeded() {
        if (isDebugMode()) {
            this.parserEventSupport.fireSyntacticPredicateSucceeded(this.inputState.guessing);
        }
    }

    @Override // antlr.debug.DebuggingParser
    public String getRuleName(int i) {
        return this.ruleNames[i];
    }

    @Override // antlr.debug.DebuggingParser
    public String getSemPredName(int i) {
        return this.semPredNames[i];
    }

    public synchronized void goToSleep() {
        try {
            wait();
        } catch (InterruptedException unused) {
        }
    }

    @Override // antlr.Parser
    public boolean isDebugMode() {
        return !this._notDebugMode;
    }

    public boolean isGuessing() {
        return this.inputState.guessing > 0;
    }

    @Override // antlr.LLkParser, antlr.Parser
    public int LA(int i) throws TokenStreamException {
        int LA = super.LA(i);
        this.parserEventSupport.fireLA(i, LA);
        return LA;
    }

    @Override // antlr.Parser
    public void match(int i) throws MismatchedTokenException, TokenStreamException {
        String text = LT(1).getText();
        int LA = LA(1);
        try {
            super.match(i);
            this.parserEventSupport.fireMatch(i, text, this.inputState.guessing);
        } catch (MismatchedTokenException e2) {
            if (this.inputState.guessing == 0) {
                this.parserEventSupport.fireMismatch(LA, i, text, this.inputState.guessing);
            }
            throw e2;
        }
    }

    @Override // antlr.Parser
    public void match(BitSet bitSet) throws MismatchedTokenException, TokenStreamException {
        String text = LT(1).getText();
        int LA = LA(1);
        try {
            super.match(bitSet);
            this.parserEventSupport.fireMatch(LA, bitSet, text, this.inputState.guessing);
        } catch (MismatchedTokenException e2) {
            if (this.inputState.guessing == 0) {
                this.parserEventSupport.fireMismatch(LA, bitSet, text, this.inputState.guessing);
            }
            throw e2;
        }
    }

    @Override // antlr.Parser
    public void matchNot(int i) throws MismatchedTokenException, TokenStreamException {
        String text = LT(1).getText();
        int LA = LA(1);
        try {
            super.matchNot(i);
            this.parserEventSupport.fireMatchNot(LA, i, text, this.inputState.guessing);
        } catch (MismatchedTokenException e2) {
            if (this.inputState.guessing == 0) {
                this.parserEventSupport.fireMismatchNot(LA, i, text, this.inputState.guessing);
            }
            throw e2;
        }
    }

    @Override // antlr.Parser
    public void removeMessageListener(MessageListener messageListener) {
        this.parserEventSupport.removeMessageListener(messageListener);
    }

    @Override // antlr.Parser
    public void removeParserListener(ParserListener parserListener) {
        this.parserEventSupport.removeParserListener(parserListener);
    }

    @Override // antlr.Parser
    public void removeParserMatchListener(ParserMatchListener parserMatchListener) {
        this.parserEventSupport.removeParserMatchListener(parserMatchListener);
    }

    @Override // antlr.Parser
    public void removeParserTokenListener(ParserTokenListener parserTokenListener) {
        this.parserEventSupport.removeParserTokenListener(parserTokenListener);
    }

    @Override // antlr.Parser
    public void removeSemanticPredicateListener(SemanticPredicateListener semanticPredicateListener) {
        this.parserEventSupport.removeSemanticPredicateListener(semanticPredicateListener);
    }

    @Override // antlr.Parser
    public void removeSyntacticPredicateListener(SyntacticPredicateListener syntacticPredicateListener) {
        this.parserEventSupport.removeSyntacticPredicateListener(syntacticPredicateListener);
    }

    @Override // antlr.Parser
    public void removeTraceListener(TraceListener traceListener) {
        this.parserEventSupport.removeTraceListener(traceListener);
    }

    @Override // antlr.Parser
    public void reportError(RecognitionException recognitionException) {
        this.parserEventSupport.fireReportError(recognitionException);
        super.reportError(recognitionException);
    }

    @Override // antlr.Parser
    public void reportError(String str) {
        this.parserEventSupport.fireReportError(str);
        super.reportError(str);
    }

    @Override // antlr.Parser
    public void reportWarning(String str) {
        this.parserEventSupport.fireReportWarning(str);
        super.reportWarning(str);
    }

    @Override // antlr.Parser
    public void setDebugMode(boolean z) {
        this._notDebugMode = !z;
    }

    public void setupDebugging(TokenBuffer tokenBuffer) {
        setupDebugging(null, tokenBuffer);
    }

    public void setupDebugging(TokenStream tokenStream) {
        setupDebugging(tokenStream, null);
    }

    protected void setupDebugging(TokenStream tokenStream, TokenBuffer tokenBuffer) {
        setDebugMode(true);
        try {
            try {
                Class.forName("javax.swing.JButton");
            } catch (ClassNotFoundException unused) {
                System.err.println("Swing is required to use ParseView, but is not present in your CLASSPATH");
                System.exit(1);
            }
            Class<?> cls = Class.forName("antlr.parseview.ParseView");
            Class<?>[] clsArr = new Class[3];
            Class<?> cls2 = class$antlr$debug$LLkDebuggingParser;
            if (cls2 == null) {
                cls2 = class$("antlr.debug.LLkDebuggingParser");
                class$antlr$debug$LLkDebuggingParser = cls2;
            }
            clsArr[0] = cls2;
            Class<?> cls3 = class$antlr$TokenStream;
            if (cls3 == null) {
                cls3 = class$("antlr.TokenStream");
                class$antlr$TokenStream = cls3;
            }
            clsArr[1] = cls3;
            Class<?> cls4 = class$antlr$TokenBuffer;
            if (cls4 == null) {
                cls4 = class$("antlr.TokenBuffer");
                class$antlr$TokenBuffer = cls4;
            }
            clsArr[2] = cls4;
            cls.getConstructor(clsArr).newInstance(this, tokenStream, tokenBuffer);
        } catch (Exception e2) {
            System.err.println(new StringBuffer("Error initializing ParseView: ").append(e2).toString());
            System.err.println("Please report this to Scott Stanchfield, thetick@magelang.com");
            System.exit(1);
        }
    }

    public synchronized void wakeUp() {
        notify();
    }
}
