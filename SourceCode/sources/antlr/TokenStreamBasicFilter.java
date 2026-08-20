package antlr;

import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class TokenStreamBasicFilter implements TokenStream {
    protected BitSet discardMask = new BitSet();
    protected TokenStream input;

    public TokenStreamBasicFilter(TokenStream tokenStream) {
        this.input = tokenStream;
    }

    public void discard(int i) {
        this.discardMask.add(i);
    }

    public void discard(BitSet bitSet) {
        this.discardMask = bitSet;
    }

    @Override // antlr.TokenStream
    public Token nextToken() throws TokenStreamException {
        Token nextToken = this.input.nextToken();
        while (nextToken != null && this.discardMask.member(nextToken.getType())) {
            nextToken = this.input.nextToken();
        }
        return nextToken;
    }
}
