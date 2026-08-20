package antlr;

import antlr.collections.Stack;
import antlr.collections.impl.LList;
import java.util.Hashtable;
/* loaded from: classes.dex */
public class TokenStreamSelector implements TokenStream {
    protected TokenStream input;
    protected Stack streamStack = new LList();
    protected Hashtable inputStreamNames = new Hashtable();

    public void addInputStream(TokenStream tokenStream, String str) {
        this.inputStreamNames.put(str, tokenStream);
    }

    public TokenStream getCurrentStream() {
        return this.input;
    }

    public TokenStream getStream(String str) {
        TokenStream tokenStream = (TokenStream) this.inputStreamNames.get(str);
        if (tokenStream != null) {
            return tokenStream;
        }
        throw new IllegalArgumentException(new StringBuffer("TokenStream ").append(str).append(" not found").toString());
    }

    @Override // antlr.TokenStream
    public Token nextToken() throws TokenStreamException {
        while (true) {
            try {
                return this.input.nextToken();
            } catch (TokenStreamRetryException unused) {
            }
        }
    }

    public TokenStream pop() {
        TokenStream tokenStream = (TokenStream) this.streamStack.pop();
        select(tokenStream);
        return tokenStream;
    }

    public void push(TokenStream tokenStream) {
        this.streamStack.push(this.input);
        select(tokenStream);
    }

    public void push(String str) {
        this.streamStack.push(this.input);
        select(str);
    }

    public void retry() throws TokenStreamRetryException {
        throw new TokenStreamRetryException();
    }

    public void select(TokenStream tokenStream) {
        this.input = tokenStream;
    }

    public void select(String str) throws IllegalArgumentException {
        this.input = getStream(str);
    }
}
