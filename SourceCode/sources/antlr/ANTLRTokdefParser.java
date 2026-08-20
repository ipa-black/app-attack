package antlr;

import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class ANTLRTokdefParser extends LLkParser implements ANTLRTokdefParserTokenTypes {
    public static final String[] _tokenNames = {"<0>", "EOF", "<2>", "NULL_TREE_LOOKAHEAD", "ID", "STRING", "ASSIGN", "LPAREN", "RPAREN", "INT", "WS", "SL_COMMENT", "ML_COMMENT", "ESC", "DIGIT", "XDIGIT"};
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    private Tool antlrTool;

    public void setTool(Tool tool) {
        if (this.antlrTool == null) {
            this.antlrTool = tool;
            return;
        }
        throw new IllegalStateException("antlr.Tool already registered");
    }

    protected Tool getTool() {
        return this.antlrTool;
    }

    @Override // antlr.Parser
    public void reportError(String str) {
        if (getTool() != null) {
            getTool().error(str, getFilename(), -1, -1);
        } else {
            super.reportError(str);
        }
    }

    @Override // antlr.Parser
    public void reportError(RecognitionException recognitionException) {
        if (getTool() != null) {
            getTool().error(recognitionException.getErrorMessage(), recognitionException.getFilename(), recognitionException.getLine(), recognitionException.getColumn());
        } else {
            super.reportError(recognitionException);
        }
    }

    @Override // antlr.Parser
    public void reportWarning(String str) {
        if (getTool() != null) {
            getTool().warning(str, getFilename(), -1, -1);
        } else {
            super.reportWarning(str);
        }
    }

    protected ANTLRTokdefParser(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.tokenNames = _tokenNames;
    }

    public ANTLRTokdefParser(TokenBuffer tokenBuffer) {
        this(tokenBuffer, 3);
    }

    protected ANTLRTokdefParser(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.tokenNames = _tokenNames;
    }

    public ANTLRTokdefParser(TokenStream tokenStream) {
        this(tokenStream, 3);
    }

    public ANTLRTokdefParser(ParserSharedInputState parserSharedInputState) {
        super(parserSharedInputState, 3);
        this.tokenNames = _tokenNames;
    }

    public final void file(ImportVocabTokenManager importVocabTokenManager) throws RecognitionException, TokenStreamException {
        try {
            LT(1);
            match(4);
            while (true) {
                if (LA(1) != 4 && LA(1) != 5) {
                    return;
                }
                line(importVocabTokenManager);
            }
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
        }
    }

    public final void line(ImportVocabTokenManager importVocabTokenManager) throws RecognitionException, TokenStreamException {
        Token LT;
        Token token;
        try {
            Token token2 = null;
            if (LA(1) == 5) {
                Token LT2 = LT(1);
                match(5);
                token = null;
                token2 = LT2;
                LT = null;
            } else if (LA(1) == 4 && LA(2) == 6 && LA(3) == 5) {
                LT = LT(1);
                match(4);
                match(6);
                Token LT3 = LT(1);
                match(5);
                token = null;
                token2 = LT3;
            } else if (LA(1) == 4 && LA(2) == 7) {
                LT = LT(1);
                match(4);
                match(7);
                token = LT(1);
                match(5);
                match(8);
            } else if (LA(1) == 4 && LA(2) == 6 && LA(3) == 9) {
                LT = LT(1);
                match(4);
                token = null;
            } else {
                throw new NoViableAltException(LT(1), getFilename());
            }
            match(6);
            Token LT4 = LT(1);
            match(9);
            Integer valueOf = Integer.valueOf(LT4.getText());
            if (token2 != null) {
                importVocabTokenManager.define(token2.getText(), valueOf.intValue());
                if (LT != null) {
                    StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) importVocabTokenManager.getTokenSymbol(token2.getText());
                    stringLiteralSymbol.setLabel(LT.getText());
                    importVocabTokenManager.mapToTokenSymbol(LT.getText(), stringLiteralSymbol);
                }
            } else if (LT != null) {
                importVocabTokenManager.define(LT.getText(), valueOf.intValue());
                if (token != null) {
                    importVocabTokenManager.getTokenSymbol(LT.getText()).setParaphrase(token.getText());
                }
            }
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_1);
        }
    }

    private static final long[] mk_tokenSet_0() {
        return new long[]{2, 0};
    }

    private static final long[] mk_tokenSet_1() {
        return new long[]{50, 0};
    }
}
