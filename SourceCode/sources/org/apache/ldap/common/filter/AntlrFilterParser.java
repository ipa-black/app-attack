package org.apache.ldap.common.filter;

import android.support.v4.media.session.PlaybackStateCompat;
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
public class AntlrFilterParser extends LLkParser implements AntlrFilterParserTokenTypes {
    public static final String[] _tokenNames = {"<0>", "EOF", "<2>", "NULL_TREE_LOOKAHEAD", "DIGIT", "HEXDIG", "VALUEENCODING", "NORMAL", "ESCAPED", "UTF1SUBSET", "EXCLAMATION", "AMPERSAND", "ASTERISK", "LPAREN", "RPAREN", "COLON", "VERTBAR", "TILDE", "ESC", "UTF8", "UTFMB", "UTF0", "UTF1", "UTF2", "UTF3", "UTF4", "WS", "RANGLE", "LANGLE", "EQUALS", "AMPERSTAND", "DN", "COLONEQUALS", "APPROX", "GREATEROREQUAL", "LESSOREQUAL", "LDIGIT", "ALPHA", "NUMBER", "NUMERICOID", "DESCR", "OID", "OPTION", "OPTIONS", "ATTRIBUTEDESCRIPTION"};
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
    public static final BitSet _tokenSet_3 = new BitSet(mk_tokenSet_3());
    FilterParserMonitor monitor;
    TokenStreamSelector selector;
    AntlrFilterValueLexer valueLexer;
    AntlrFilterValueParser valueParser;

    public void setSelector(TokenStreamSelector tokenStreamSelector) {
        this.selector = tokenStreamSelector;
    }

    public void setValueLexer(AntlrFilterValueLexer antlrFilterValueLexer) {
        this.valueLexer = antlrFilterValueLexer;
    }

    public void setValueParser(AntlrFilterValueParser antlrFilterValueParser) {
        this.valueParser = antlrFilterValueParser;
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

    protected AntlrFilterParser(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.tokenNames = _tokenNames;
    }

    public AntlrFilterParser(TokenBuffer tokenBuffer) {
        this(tokenBuffer, 5);
    }

    protected AntlrFilterParser(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.tokenNames = _tokenNames;
    }

    public AntlrFilterParser(TokenStream tokenStream) {
        this(tokenStream, 5);
    }

    public AntlrFilterParser(ParserSharedInputState parserSharedInputState) {
        super(parserSharedInputState, 5);
        this.tokenNames = _tokenNames;
    }

    public final ExprNode filter() throws RecognitionException, TokenStreamException {
        try {
            match(13);
            return filtercomp();
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
            return null;
        }
    }

    public final ExprNode filtercomp() throws RecognitionException, TokenStreamException {
        try {
            int LA = LA(1);
            if (LA == 10) {
                BranchNode not = not();
                match(14);
                return not;
            }
            if (LA != 44 && LA != 15) {
                if (LA != 16) {
                    switch (LA) {
                        case 30:
                            BranchNode and = and();
                            match(14);
                            return and;
                        case 31:
                        case 32:
                            break;
                        default:
                            throw new NoViableAltException(LT(1), getFilename());
                    }
                } else {
                    BranchNode or = or();
                    match(14);
                    return or;
                }
            }
            return item();
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
            return null;
        }
    }

    public final BranchNode and() throws RecognitionException, TokenStreamException {
        ArrayList arrayList = new ArrayList();
        try {
            match(30);
            arrayList.add(filter());
            int i = 0;
            while (LA(1) == 13) {
                arrayList.add(filter());
                i++;
            }
            if (i < 1) {
                throw new NoViableAltException(LT(1), getFilename());
            }
            return new BranchNode(10, arrayList);
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_1);
            return null;
        }
    }

    public final BranchNode or() throws RecognitionException, TokenStreamException {
        ArrayList arrayList = new ArrayList();
        try {
            match(16);
            arrayList.add(filter());
            int i = 0;
            while (LA(1) == 13) {
                arrayList.add(filter());
                i++;
            }
            if (i < 1) {
                throw new NoViableAltException(LT(1), getFilename());
            }
            return new BranchNode(9, arrayList);
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_1);
            return null;
        }
    }

    public final BranchNode not() throws RecognitionException, TokenStreamException {
        ExprNode filter;
        BranchNode branchNode;
        BranchNode branchNode2 = null;
        try {
            match(10);
            filter = filter();
            branchNode = new BranchNode(11);
        } catch (RecognitionException e2) {
            e = e2;
        }
        try {
            branchNode.addNode(filter);
            return branchNode;
        } catch (RecognitionException e3) {
            e = e3;
            branchNode2 = branchNode;
            reportError(e);
            consume();
            consumeUntil(_tokenSet_1);
            return branchNode2;
        }
    }

    public final LeafNode item() throws RecognitionException, TokenStreamException {
        LeafNode extensible;
        try {
            if (LA(1) == 44 && _tokenSet_2.member(LA(2))) {
                extensible = simple();
            } else if ((LA(1) == 15 || LA(1) == 31 || LA(1) == 44) && _tokenSet_3.member(LA(2))) {
                extensible = extensible();
            } else if (LA(1) == 32) {
                match(32);
                this.selector.select(this.valueLexer);
                return new ExtensibleNode(null, ((String) this.valueParser.value(null)).trim(), null, false);
            } else {
                throw new NoViableAltException(LT(1), getFilename());
            }
            return extensible;
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
            return null;
        }
    }

    public final LeafNode simple() throws RecognitionException, TokenStreamException {
        int i;
        try {
            Token LT = LT(1);
            match(44);
            String text = LT.getText();
            int LA = LA(1);
            if (LA != 29) {
                switch (LA) {
                    case 33:
                        match(33);
                        i = 5;
                        break;
                    case 34:
                        match(34);
                        i = 3;
                        break;
                    case 35:
                        match(35);
                        i = 4;
                        break;
                    default:
                        throw new NoViableAltException(LT(1), getFilename());
                }
            } else {
                match(29);
                i = 0;
            }
            this.selector.select(this.valueLexer);
            Object value = this.valueParser.value(text);
            if (i != 0) {
                if (i != 3 && i != 4 && i != 5) {
                    throw new IllegalStateException("Expecting one of 4 types");
                }
                return new SimpleNode(text, ((String) value).trim(), i);
            } else if (value instanceof String) {
                return new SimpleNode(text, ((String) value).trim(), i);
            } else {
                return (LeafNode) value;
            }
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_0);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[Catch: RecognitionException -> 0x0115, TryCatch #0 {RecognitionException -> 0x0115, blocks: (B:3:0x0002, B:8:0x001a, B:13:0x0034, B:14:0x0041, B:15:0x0042, B:17:0x0048, B:25:0x0078, B:40:0x00fb, B:21:0x0052, B:22:0x005f, B:23:0x0060, B:26:0x008f, B:27:0x00a1, B:28:0x00a2, B:29:0x00af, B:30:0x00b0, B:33:0x00b8, B:37:0x00cc, B:39:0x00e4, B:41:0x0102, B:42:0x0114, B:34:0x00bd, B:35:0x00ca), top: B:46:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.ldap.common.filter.ExtensibleNode extensible() throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.common.filter.AntlrFilterParser.extensible():org.apache.ldap.common.filter.ExtensibleNode");
    }

    private static final long[] mk_tokenSet_0() {
        return new long[]{24576, 0};
    }

    private static final long[] mk_tokenSet_1() {
        return new long[]{PlaybackStateCompat.ACTION_PREPARE, 0};
    }

    private static final long[] mk_tokenSet_2() {
        return new long[]{60666413056L, 0};
    }

    private static final long[] mk_tokenSet_3() {
        return new long[]{17598628528128L, 0};
    }
}
