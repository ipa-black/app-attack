package antlr;

import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class TokenStreamHiddenTokenFilter extends TokenStreamBasicFilter implements TokenStream {
    protected CommonHiddenStreamToken firstHidden;
    protected BitSet hideMask;
    protected CommonHiddenStreamToken lastHiddenToken;
    private CommonHiddenStreamToken nextMonitoredToken;

    public TokenStreamHiddenTokenFilter(TokenStream tokenStream) {
        super(tokenStream);
        this.firstHidden = null;
        this.hideMask = new BitSet();
    }

    protected void consume() throws TokenStreamException {
        this.nextMonitoredToken = (CommonHiddenStreamToken) this.input.nextToken();
    }

    private void consumeFirst() throws TokenStreamException {
        consume();
        CommonHiddenStreamToken commonHiddenStreamToken = null;
        while (true) {
            if (!this.hideMask.member(LA(1).getType()) && !this.discardMask.member(LA(1).getType())) {
                return;
            }
            if (this.hideMask.member(LA(1).getType())) {
                if (commonHiddenStreamToken == null) {
                    commonHiddenStreamToken = LA(1);
                } else {
                    commonHiddenStreamToken.setHiddenAfter(LA(1));
                    LA(1).setHiddenBefore(commonHiddenStreamToken);
                    commonHiddenStreamToken = LA(1);
                }
                this.lastHiddenToken = commonHiddenStreamToken;
                if (this.firstHidden == null) {
                    this.firstHidden = commonHiddenStreamToken;
                }
            }
            consume();
        }
    }

    public BitSet getDiscardMask() {
        return this.discardMask;
    }

    public CommonHiddenStreamToken getHiddenAfter(CommonHiddenStreamToken commonHiddenStreamToken) {
        return commonHiddenStreamToken.getHiddenAfter();
    }

    public CommonHiddenStreamToken getHiddenBefore(CommonHiddenStreamToken commonHiddenStreamToken) {
        return commonHiddenStreamToken.getHiddenBefore();
    }

    public BitSet getHideMask() {
        return this.hideMask;
    }

    public CommonHiddenStreamToken getInitialHiddenToken() {
        return this.firstHidden;
    }

    public void hide(int i) {
        this.hideMask.add(i);
    }

    public void hide(BitSet bitSet) {
        this.hideMask = bitSet;
    }

    protected CommonHiddenStreamToken LA(int i) {
        return this.nextMonitoredToken;
    }

    @Override // antlr.TokenStreamBasicFilter, antlr.TokenStream
    public Token nextToken() throws TokenStreamException {
        if (LA(1) == null) {
            consumeFirst();
        }
        CommonHiddenStreamToken LA = LA(1);
        LA.setHiddenBefore(this.lastHiddenToken);
        this.lastHiddenToken = null;
        consume();
        CommonHiddenStreamToken commonHiddenStreamToken = LA;
        while (true) {
            if (!this.hideMask.member(LA(1).getType()) && !this.discardMask.member(LA(1).getType())) {
                return LA;
            }
            if (this.hideMask.member(LA(1).getType())) {
                commonHiddenStreamToken.setHiddenAfter(LA(1));
                if (commonHiddenStreamToken != LA) {
                    LA(1).setHiddenBefore(commonHiddenStreamToken);
                }
                commonHiddenStreamToken = LA(1);
                this.lastHiddenToken = commonHiddenStreamToken;
            }
            consume();
        }
    }
}
