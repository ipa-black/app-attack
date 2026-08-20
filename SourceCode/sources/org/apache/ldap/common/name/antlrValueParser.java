package org.apache.ldap.common.name;

import antlr.LLkParser;
import antlr.NoViableAltException;
import antlr.ParserSharedInputState;
import antlr.RecognitionException;
import antlr.Token;
import antlr.TokenBuffer;
import antlr.TokenStream;
import antlr.TokenStreamException;
import javax.naming.NamingException;
import org.apache.ldap.common.util.NestableRuntimeException;
/* loaded from: classes3.dex */
public class antlrValueParser extends LLkParser implements antlrValueParserTokenTypes {
    public static final String[] _tokenNames = {"<0>", "EOF", "<2>", "NULL_TREE_LOOKAHEAD", "EQUAL", "COMMA", "SEMI", "DN_TERMINATOR", "PLUS", "DIGIT", "ALPHA", "HEXCHAR", "HEXPAIR", "ESCAPED_CHAR", "HEX_STRING", "QUOTED_STRING", "SIMPLE_STRING"};
    boolean m_isOid;
    String m_lhs;
    private NameComponentNormalizer m_normalizer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNormalizer(NameComponentNormalizer nameComponentNormalizer) {
        this.m_normalizer = nameComponentNormalizer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOid(boolean z) {
        this.m_isOid = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLhs(String str) {
        this.m_lhs = str;
    }

    protected antlrValueParser(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.m_isOid = false;
        this.m_lhs = null;
        this.tokenNames = _tokenNames;
    }

    public antlrValueParser(TokenBuffer tokenBuffer) {
        this(tokenBuffer, 1);
    }

    protected antlrValueParser(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.m_isOid = false;
        this.m_lhs = null;
        this.tokenNames = _tokenNames;
    }

    public antlrValueParser(TokenStream tokenStream) {
        this(tokenStream, 1);
    }

    public antlrValueParser(ParserSharedInputState parserSharedInputState) {
        super(parserSharedInputState, 1);
        this.m_isOid = false;
        this.m_lhs = null;
        this.tokenNames = _tokenNames;
    }

    public final String value() throws RecognitionException, TokenStreamException {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            try {
                switch (LA(1)) {
                    case 13:
                        Token LT = LT(1);
                        match(13);
                        if (this.m_normalizer != null) {
                            stringBuffer.append(LT.getText().toLowerCase());
                            break;
                        } else {
                            stringBuffer.append(LT.getText());
                            break;
                        }
                    case 14:
                        Token LT2 = LT(1);
                        match(14);
                        if (this.m_normalizer != null) {
                            stringBuffer.append(LT2.getText().toLowerCase());
                            break;
                        } else {
                            stringBuffer.append(LT2.getText());
                            break;
                        }
                    case 15:
                        Token LT3 = LT(1);
                        match(15);
                        stringBuffer.append(LT3.getText());
                        break;
                    case 16:
                        Token LT4 = LT(1);
                        match(16);
                        String text = LT4.getText();
                        NameComponentNormalizer nameComponentNormalizer = this.m_normalizer;
                        if (nameComponentNormalizer != null) {
                            if (this.m_isOid) {
                                stringBuffer.append(nameComponentNormalizer.normalizeByOid(this.m_lhs, text));
                                break;
                            } else {
                                stringBuffer.append(nameComponentNormalizer.normalizeByName(this.m_lhs, text));
                                break;
                            }
                        } else {
                            stringBuffer.append(text);
                            break;
                        }
                    default:
                        if (i < 1) {
                            throw new NoViableAltException(LT(1), getFilename());
                        }
                        return stringBuffer.toString().trim();
                }
                i++;
            } catch (NamingException e2) {
                throw new NestableRuntimeException("Failed normalization!", e2);
            }
        }
    }
}
