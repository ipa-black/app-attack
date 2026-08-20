package org.apache.ldap.common.filter;

import antlr.LLkParser;
import antlr.NoViableAltException;
import antlr.ParserSharedInputState;
import antlr.RecognitionException;
import antlr.Token;
import antlr.TokenBuffer;
import antlr.TokenStream;
import antlr.TokenStreamException;
import antlr.TokenStreamSelector;
import antlr.collections.impl.BitSet;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class AntlrFilterValueParser extends LLkParser implements AntlrFilterValueParserTokenTypes {
    public static final String[] _tokenNames = {"<0>", "EOF", "<2>", "NULL_TREE_LOOKAHEAD", "DIGIT", "HEXDIG", "VALUEENCODING", "NORMAL", "ESCAPED", "UTF1SUBSET", "EXCLAMATION", "AMPERSAND", "ASTERISK", "LPAREN", "RPAREN", "COLON", "VERTBAR", "TILDE", "ESC", "UTF8", "UTFMB", "UTF0", "UTF1", "UTF2", "UTF3", "UTF4"};
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    AntlrFilterLexer lexer;
    FilterParserMonitor monitor;
    TokenStreamSelector selector;

    public void setSelector(TokenStreamSelector tokenStreamSelector) {
        this.selector = tokenStreamSelector;
    }

    public void setLexer(AntlrFilterLexer antlrFilterLexer) {
        this.lexer = antlrFilterLexer;
    }

    public void setFilterParserMonitor(FilterParserMonitor filterParserMonitor) {
        this.monitor = filterParserMonitor;
    }

    private void matchedProduction(String str) {
        FilterParserMonitor filterParserMonitor = this.monitor;
        if (filterParserMonitor != null) {
            filterParserMonitor.matchedProduction(str);
        }
    }

    protected AntlrFilterValueParser(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.tokenNames = _tokenNames;
    }

    public AntlrFilterValueParser(TokenBuffer tokenBuffer) {
        this(tokenBuffer, 3);
    }

    protected AntlrFilterValueParser(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.tokenNames = _tokenNames;
    }

    public AntlrFilterValueParser(TokenStream tokenStream) {
        this(tokenStream, 3);
    }

    public AntlrFilterValueParser(ParserSharedInputState parserSharedInputState) {
        super(parserSharedInputState, 3);
        this.tokenNames = _tokenNames;
    }

    public final Object value(String str) throws RecognitionException, TokenStreamException {
        try {
            if (LA(1) == 6 && LA(2) == 14) {
                return equal();
            }
            if (LA(1) == 12 && LA(2) == 14) {
                return presence(str);
            }
            if ((LA(1) != 6 && LA(1) != 12) || (LA(2) != 6 && LA(2) != 12)) {
                throw new NoViableAltException(LT(1), getFilename());
            }
            return substring(str);
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
            return null;
        }
    }

    public final String equal() throws RecognitionException, TokenStreamException {
        String str = null;
        try {
            Token LT = LT(1);
            match(6);
            this.selector.select(this.lexer);
            str = LT.getText();
            match(14);
            return str;
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
            return str;
        }
    }

    public final PresenceNode presence(String str) throws RecognitionException, TokenStreamException {
        PresenceNode presenceNode = null;
        try {
            match(12);
            this.selector.select(this.lexer);
            PresenceNode presenceNode2 = new PresenceNode(str.trim());
            try {
                match(14);
                return presenceNode2;
            } catch (RecognitionException e2) {
                e = e2;
                presenceNode = presenceNode2;
                reportError(e);
                consume();
                consumeUntil(_tokenSet_0);
                return presenceNode;
            }
        } catch (RecognitionException e3) {
            e = e3;
        }
    }

    public final LeafNode substring(String str) throws RecognitionException, TokenStreamException {
        String str2;
        String str3;
        ArrayList arrayList = new ArrayList();
        try {
            if (LA(1) == 6 && LA(2) == 12 && LA(3) == 14) {
                Token LT = LT(1);
                match(6);
                str2 = LT.getText().trim();
                match(12);
                str3 = null;
            } else {
                int i = 0;
                if (LA(1) == 12) {
                    str3 = null;
                    while (LA(1) == 12 && LA(2) == 6) {
                        match(12);
                        Token LT2 = LT(1);
                        match(6);
                        if (str3 != null && str3.length() > 0) {
                            arrayList.add(str3);
                        }
                        str3 = LT2.getText().trim();
                        i++;
                    }
                    if (i < 1) {
                        throw new NoViableAltException(LT(1), getFilename());
                    }
                    int LA = LA(1);
                    if (LA == 12) {
                        match(12);
                        if (str3 != null && str3.length() > 0) {
                            arrayList.add(str3);
                        }
                        str2 = null;
                        str3 = null;
                    } else if (LA != 14) {
                        throw new NoViableAltException(LT(1), getFilename());
                    } else {
                        str2 = null;
                    }
                } else if (LA(1) == 6 && LA(2) == 12 && LA(3) == 6) {
                    Token LT3 = LT(1);
                    match(6);
                    String trim = LT3.getText().trim();
                    String str4 = null;
                    while (LA(1) == 12) {
                        match(12);
                        Token LT4 = LT(1);
                        match(6);
                        if (str4 != null && str4.length() > 0) {
                            arrayList.add(str4);
                        }
                        str4 = LT4.getText().trim();
                        i++;
                    }
                    if (i < 1) {
                        throw new NoViableAltException(LT(1), getFilename());
                    }
                    str2 = trim;
                    str3 = str4;
                } else {
                    throw new NoViableAltException(LT(1), getFilename());
                }
            }
            match(14);
            this.selector.select(this.lexer);
            if (arrayList.isEmpty() && ((str2 == null || str2.trim().length() == 0) && (str3 == null || str3.trim().length() == 0))) {
                return new PresenceNode(str);
            }
            if (str2 != null && str2.length() == 0) {
                str2 = null;
            }
            if (str3 != null && str3.length() == 0) {
                str3 = null;
            }
            return new SubstringNode(arrayList, str, str2, str3);
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
            return null;
        }
    }

    private static final long[] mk_tokenSet_0() {
        return new long[]{2, 0};
    }
}
