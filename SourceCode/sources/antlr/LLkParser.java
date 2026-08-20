package antlr;
/* loaded from: classes.dex */
public class LLkParser extends Parser {
    int k;

    public LLkParser(int i) {
        this.k = i;
    }

    public LLkParser(ParserSharedInputState parserSharedInputState, int i) {
        super(parserSharedInputState);
        this.k = i;
    }

    public LLkParser(TokenBuffer tokenBuffer, int i) {
        this.k = i;
        setTokenBuffer(tokenBuffer);
    }

    public LLkParser(TokenStream tokenStream, int i) {
        this.k = i;
        setTokenBuffer(new TokenBuffer(tokenStream));
    }

    @Override // antlr.Parser
    public void consume() {
        this.inputState.input.consume();
    }

    @Override // antlr.Parser
    public int LA(int i) throws TokenStreamException {
        return this.inputState.input.LA(i);
    }

    @Override // antlr.Parser
    public Token LT(int i) throws TokenStreamException {
        return this.inputState.input.LT(i);
    }

    private void trace(String str, String str2) throws TokenStreamException {
        traceIndent();
        System.out.print(new StringBuffer().append(str).append(str2).append(this.inputState.guessing > 0 ? "; [guessing]" : "; ").toString());
        for (int i = 1; i <= this.k; i++) {
            if (i != 1) {
                System.out.print(", ");
            }
            if (LT(i) != null) {
                System.out.print(new StringBuffer("LA(").append(i).append(")==").append(LT(i).getText()).toString());
            } else {
                System.out.print(new StringBuffer("LA(").append(i).append(")==null").toString());
            }
        }
        System.out.println("");
    }

    @Override // antlr.Parser
    public void traceIn(String str) throws TokenStreamException {
        this.traceDepth++;
        trace("> ", str);
    }

    @Override // antlr.Parser
    public void traceOut(String str) throws TokenStreamException {
        trace("< ", str);
        this.traceDepth--;
    }
}
