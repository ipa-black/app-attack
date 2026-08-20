package antlr.debug;

import antlr.CharScanner;
import antlr.CharStreamException;
import antlr.InputBuffer;
import antlr.LexerSharedInputState;
import antlr.MismatchedCharException;
import antlr.RecognitionException;
import antlr.Token;
import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public abstract class DebuggingCharScanner extends CharScanner implements DebuggingParser {
    private boolean _notDebugMode;
    private ParserEventSupport parserEventSupport;
    protected String[] ruleNames;
    protected String[] semPredNames;

    public void setupDebugging() {
    }

    public DebuggingCharScanner(InputBuffer inputBuffer) {
        super(inputBuffer);
        this.parserEventSupport = new ParserEventSupport(this);
        this._notDebugMode = false;
    }

    public DebuggingCharScanner(LexerSharedInputState lexerSharedInputState) {
        super(lexerSharedInputState);
        this.parserEventSupport = new ParserEventSupport(this);
        this._notDebugMode = false;
    }

    public void addMessageListener(MessageListener messageListener) {
        this.parserEventSupport.addMessageListener(messageListener);
    }

    public void addNewLineListener(NewLineListener newLineListener) {
        this.parserEventSupport.addNewLineListener(newLineListener);
    }

    public void addParserListener(ParserListener parserListener) {
        this.parserEventSupport.addParserListener(parserListener);
    }

    public void addParserMatchListener(ParserMatchListener parserMatchListener) {
        this.parserEventSupport.addParserMatchListener(parserMatchListener);
    }

    public void addParserTokenListener(ParserTokenListener parserTokenListener) {
        this.parserEventSupport.addParserTokenListener(parserTokenListener);
    }

    public void addSemanticPredicateListener(SemanticPredicateListener semanticPredicateListener) {
        this.parserEventSupport.addSemanticPredicateListener(semanticPredicateListener);
    }

    public void addSyntacticPredicateListener(SyntacticPredicateListener syntacticPredicateListener) {
        this.parserEventSupport.addSyntacticPredicateListener(syntacticPredicateListener);
    }

    public void addTraceListener(TraceListener traceListener) {
        this.parserEventSupport.addTraceListener(traceListener);
    }

    @Override // antlr.CharScanner
    public void consume() throws CharStreamException {
        char c2;
        try {
            c2 = LA(1);
        } catch (CharStreamException unused) {
            c2 = 65437;
        }
        super.consume();
        this.parserEventSupport.fireConsume(c2);
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

    public boolean isDebugMode() {
        return !this._notDebugMode;
    }

    @Override // antlr.CharScanner
    public char LA(int i) throws CharStreamException {
        char LA = super.LA(i);
        this.parserEventSupport.fireLA(i, LA);
        return LA;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // antlr.CharScanner
    public Token makeToken(int i) {
        return super.makeToken(i);
    }

    @Override // antlr.CharScanner
    public void match(char c2) throws MismatchedCharException, CharStreamException {
        char LA = LA(1);
        try {
            super.match(c2);
            this.parserEventSupport.fireMatch(c2, this.inputState.guessing);
        } catch (MismatchedCharException e2) {
            if (this.inputState.guessing == 0) {
                this.parserEventSupport.fireMismatch(LA, c2, this.inputState.guessing);
            }
            throw e2;
        }
    }

    @Override // antlr.CharScanner
    public void match(BitSet bitSet) throws MismatchedCharException, CharStreamException {
        String aNTLRStringBuffer = this.text.toString();
        char LA = LA(1);
        try {
            super.match(bitSet);
            this.parserEventSupport.fireMatch(LA, bitSet, aNTLRStringBuffer, this.inputState.guessing);
        } catch (MismatchedCharException e2) {
            if (this.inputState.guessing == 0) {
                this.parserEventSupport.fireMismatch(LA, bitSet, aNTLRStringBuffer, this.inputState.guessing);
            }
            throw e2;
        }
    }

    @Override // antlr.CharScanner
    public void match(String str) throws MismatchedCharException, CharStreamException {
        StringBuffer stringBuffer = new StringBuffer("");
        int length = str.length();
        int i = 1;
        while (true) {
            if (i <= length) {
                try {
                    try {
                        stringBuffer.append(super.LA(i));
                        i++;
                    } catch (Exception unused) {
                        super.match(str);
                        this.parserEventSupport.fireMatch(str, this.inputState.guessing);
                        return;
                    }
                } catch (MismatchedCharException e2) {
                    if (this.inputState.guessing == 0) {
                        this.parserEventSupport.fireMismatch(stringBuffer.toString(), str, this.inputState.guessing);
                    }
                    throw e2;
                }
            }
            super.match(str);
            this.parserEventSupport.fireMatch(str, this.inputState.guessing);
            return;
        }
    }

    @Override // antlr.CharScanner
    public void matchNot(char c2) throws MismatchedCharException, CharStreamException {
        char LA = LA(1);
        try {
            super.matchNot(c2);
            this.parserEventSupport.fireMatchNot(LA, c2, this.inputState.guessing);
        } catch (MismatchedCharException e2) {
            if (this.inputState.guessing == 0) {
                this.parserEventSupport.fireMismatchNot(LA, c2, this.inputState.guessing);
            }
            throw e2;
        }
    }

    @Override // antlr.CharScanner
    public void matchRange(char c2, char c3) throws MismatchedCharException, CharStreamException {
        char LA = LA(1);
        try {
            super.matchRange(c2, c3);
            this.parserEventSupport.fireMatch(LA, new StringBuffer("").append(c2).append(c3).toString(), this.inputState.guessing);
        } catch (MismatchedCharException e2) {
            if (this.inputState.guessing == 0) {
                this.parserEventSupport.fireMismatch(LA, new StringBuffer("").append(c2).append(c3).toString(), this.inputState.guessing);
            }
            throw e2;
        }
    }

    @Override // antlr.CharScanner
    public void newline() {
        super.newline();
        this.parserEventSupport.fireNewLine(getLine());
    }

    public void removeMessageListener(MessageListener messageListener) {
        this.parserEventSupport.removeMessageListener(messageListener);
    }

    public void removeNewLineListener(NewLineListener newLineListener) {
        this.parserEventSupport.removeNewLineListener(newLineListener);
    }

    public void removeParserListener(ParserListener parserListener) {
        this.parserEventSupport.removeParserListener(parserListener);
    }

    public void removeParserMatchListener(ParserMatchListener parserMatchListener) {
        this.parserEventSupport.removeParserMatchListener(parserMatchListener);
    }

    public void removeParserTokenListener(ParserTokenListener parserTokenListener) {
        this.parserEventSupport.removeParserTokenListener(parserTokenListener);
    }

    public void removeSemanticPredicateListener(SemanticPredicateListener semanticPredicateListener) {
        this.parserEventSupport.removeSemanticPredicateListener(semanticPredicateListener);
    }

    public void removeSyntacticPredicateListener(SyntacticPredicateListener syntacticPredicateListener) {
        this.parserEventSupport.removeSyntacticPredicateListener(syntacticPredicateListener);
    }

    public void removeTraceListener(TraceListener traceListener) {
        this.parserEventSupport.removeTraceListener(traceListener);
    }

    public void reportError(MismatchedCharException mismatchedCharException) {
        this.parserEventSupport.fireReportError(mismatchedCharException);
        super.reportError((RecognitionException) mismatchedCharException);
    }

    @Override // antlr.CharScanner
    public void reportError(String str) {
        this.parserEventSupport.fireReportError(str);
        super.reportError(str);
    }

    @Override // antlr.CharScanner
    public void reportWarning(String str) {
        this.parserEventSupport.fireReportWarning(str);
        super.reportWarning(str);
    }

    public void setDebugMode(boolean z) {
        this._notDebugMode = !z;
    }

    public synchronized void wakeUp() {
        notify();
    }
}
