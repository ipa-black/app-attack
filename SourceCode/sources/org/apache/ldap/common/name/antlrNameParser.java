package org.apache.ldap.common.name;

import antlr.LLkParser;
import antlr.NoViableAltException;
import antlr.ParserSharedInputState;
import antlr.RecognitionException;
import antlr.Token;
import antlr.TokenBuffer;
import antlr.TokenStream;
import antlr.TokenStreamException;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class antlrNameParser extends LLkParser implements antlrNameParserTokenTypes {
    public static final String[] _tokenNames = {"<0>", "EOF", "<2>", "NULL_TREE_LOOKAHEAD", "EQUAL", "COMMA", "SEMI", "DN_TERMINATOR", "PLUS", "DIGIT", "ALPHA", "OPEN_BRACKET", "CLOSE_BRACKET", "OID", "ATTRIBUTE", "WS"};
    private antlrValueParser m_valueParser;

    public void setNormalizer(NameComponentNormalizer nameComponentNormalizer) {
        this.m_valueParser.setNormalizer(nameComponentNormalizer);
    }

    protected antlrNameParser(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.m_valueParser = new antlrValueParser(getInputState());
        this.tokenNames = _tokenNames;
    }

    public antlrNameParser(TokenBuffer tokenBuffer) {
        this(tokenBuffer, 1);
    }

    protected antlrNameParser(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.m_valueParser = new antlrValueParser(getInputState());
        this.tokenNames = _tokenNames;
    }

    public antlrNameParser(TokenStream tokenStream) {
        this(tokenStream, 1);
    }

    public antlrNameParser(ParserSharedInputState parserSharedInputState) {
        super(parserSharedInputState, 1);
        this.m_valueParser = new antlrValueParser(getInputState());
        this.tokenNames = _tokenNames;
    }

    public final ArrayList name() throws RecognitionException, TokenStreamException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(nameComponent());
        while (true) {
            if (LA(1) == 5 || LA(1) == 6) {
                int LA = LA(1);
                if (LA == 5) {
                    match(5);
                } else if (LA == 6) {
                    match(6);
                } else {
                    throw new NoViableAltException(LT(1), getFilename());
                }
                arrayList.add(nameComponent());
            } else {
                match(7);
                return arrayList;
            }
        }
    }

    public final String nameComponent() throws RecognitionException, TokenStreamException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(attributeTypeAndValue());
        while (LA(1) == 8) {
            match(8);
            stringBuffer.append('+').append(attributeTypeAndValue());
        }
        return stringBuffer.toString();
    }

    public final String attributeTypeAndValue() throws RecognitionException, TokenStreamException {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        int LA = LA(1);
        if (LA == 13) {
            Token LT = LT(1);
            match(13);
            String text = LT.getText();
            this.m_valueParser.setOid(true);
            str = text;
        } else if (LA == 14) {
            Token LT2 = LT(1);
            match(14);
            str = LT2.getText();
            this.m_valueParser.setOid(false);
        } else {
            throw new NoViableAltException(LT(1), getFilename());
        }
        match(4);
        this.m_valueParser.setLhs(str);
        stringBuffer.append(str);
        stringBuffer.append('=').append(this.m_valueParser.value());
        return stringBuffer.toString();
    }
}
