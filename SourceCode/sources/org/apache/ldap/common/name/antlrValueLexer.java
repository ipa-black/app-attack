package org.apache.ldap.common.name;

import antlr.ByteBuffer;
import antlr.CharBuffer;
import antlr.CharScanner;
import antlr.CharStreamException;
import antlr.CharStreamIOException;
import antlr.InputBuffer;
import antlr.LexerSharedInputState;
import antlr.NoViableAltForCharException;
import antlr.RecognitionException;
import antlr.Token;
import antlr.TokenStream;
import antlr.TokenStreamException;
import antlr.TokenStreamIOException;
import antlr.TokenStreamRecognitionException;
import antlr.TokenStreamSelector;
import antlr.collections.impl.BitSet;
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
import kotlin.text.Typography;
/* loaded from: classes3.dex */
public class antlrValueLexer extends CharScanner implements antlrValueTokenTypes, TokenStream {
    public static final String LEXER_KEY = "valueLexer";
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
    private TokenStreamSelector m_selector;

    public void setSelector(TokenStreamSelector tokenStreamSelector) {
        this.m_selector = tokenStreamSelector;
    }

    private void pop() {
        TokenStreamSelector tokenStreamSelector = this.m_selector;
        if (tokenStreamSelector == null) {
            throw new NullPointerException("The selector has not been set for the value lexer!\nCall lexer.setSelector(TokenStreamSelector a_selector) before using the lexer or its owning parser.");
        }
        tokenStreamSelector.pop();
    }

    public antlrValueLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public antlrValueLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public antlrValueLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public antlrValueLexer(LexerSharedInputState lexerSharedInputState) {
        super(lexerSharedInputState);
        this.m_selector = null;
        this.caseSensitiveLiterals = true;
        setCaseSensitive(false);
        this.literals = new Hashtable();
    }

    @Override // antlr.CharScanner, antlr.TokenStream
    public Token nextToken() throws TokenStreamException {
        while (true) {
            resetText();
            try {
                try {
                    char LA = LA(1);
                    if (LA == '\"') {
                        mQUOTED_STRING(true);
                        Token token = this._returnToken;
                    } else if (LA == ';') {
                        mSEMI(true);
                        Token token2 = this._returnToken;
                    } else if (LA == '\\') {
                        mESCAPED_CHAR(true);
                        Token token3 = this._returnToken;
                    } else if (LA == '+') {
                        mPLUS(true);
                        Token token4 = this._returnToken;
                    } else if (LA == ',') {
                        mCOMMA(true);
                        Token token5 = this._returnToken;
                    } else if (LA(1) == '#' && _tokenSet_0.member(LA(2))) {
                        mHEX_STRING(true);
                        Token token6 = this._returnToken;
                    } else if (LA(1) == '#') {
                        mDN_TERMINATOR(true);
                        Token token7 = this._returnToken;
                    } else {
                        mSIMPLE_STRING(true);
                        Token token8 = this._returnToken;
                    }
                    if (this._returnToken != null) {
                        this._returnToken.setType(testLiteralsTable(this._returnToken.getType()));
                        return this._returnToken;
                    }
                } catch (RecognitionException e2) {
                    throw new TokenStreamRecognitionException(e2);
                }
            } catch (CharStreamException e3) {
                if (e3 instanceof CharStreamIOException) {
                    throw new TokenStreamIOException(((CharStreamIOException) e3).f10io);
                }
                throw new TokenStreamException(e3.getMessage());
            }
        }
    }

    protected final void mDIGIT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange('0', '9');
        if (z) {
            token = makeToken(9);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mALPHA(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange('a', 'z');
        if (z) {
            token = makeToken(10);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mHEXCHAR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        switch (LA) {
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                mDIGIT(false);
                break;
            default:
                switch (LA) {
                    case 'a':
                    case 'b':
                    case 'c':
                    case 'd':
                    case 'e':
                    case 'f':
                        matchRange('a', 'f');
                        break;
                    default:
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
        }
        if (z) {
            token = makeToken(11);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mHEXPAIR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mHEXCHAR(false);
        mHEXCHAR(false);
        if (z) {
            token = makeToken(12);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mESCAPED_CHAR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('\\');
        char LA = LA(1);
        if (LA != '\"') {
            if (LA != '#' && LA != '+' && LA != ',') {
                if (LA == '\\') {
                    match('\\');
                } else {
                    switch (LA) {
                        default:
                            switch (LA) {
                                case ';':
                                case '<':
                                case '=':
                                case '>':
                                    break;
                                default:
                                    switch (LA) {
                                        case 'a':
                                        case 'b':
                                        case 'c':
                                        case 'd':
                                        case 'e':
                                        case 'f':
                                            break;
                                        default:
                                            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                                    }
                            }
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                            mHEXPAIR(false);
                            break;
                    }
                }
            }
            char LA2 = LA(1);
            if (LA2 == '#') {
                match('#');
            } else if (LA2 == '+') {
                match('+');
            } else if (LA2 == ',') {
                match(',');
            } else {
                switch (LA2) {
                    case ';':
                        match(';');
                        break;
                    case '<':
                        match(Typography.less);
                        break;
                    case '=':
                        match('=');
                        break;
                    case '>':
                        match(Typography.greater);
                        break;
                    default:
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
            }
        } else {
            match(Typography.quote);
        }
        if (z) {
            token = makeToken(13);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mHEX_STRING(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('#');
        int i = 0;
        while (_tokenSet_0.member(LA(1))) {
            mHEXPAIR(false);
            i++;
        }
        if (i < 1) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(14);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mQUOTED_STRING(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.quote);
        while (true) {
            BitSet bitSet = _tokenSet_1;
            if (bitSet.member(LA(1))) {
                match(bitSet);
            } else if (LA(1) != '\\') {
                break;
            } else {
                mESCAPED_CHAR(false);
            }
        }
        match(Typography.quote);
        if (z) {
            token = makeToken(15);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mSIMPLE_STRING(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        while (true) {
            BitSet bitSet = _tokenSet_2;
            if (!bitSet.member(LA(1))) {
                break;
            }
            match(bitSet);
        }
        if (z) {
            token = makeToken(16);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mCOMMA(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(',');
        pop();
        if (z) {
            token = makeToken(5);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mSEMI(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(';');
        pop();
        if (z) {
            token = makeToken(6);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mPLUS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('+');
        pop();
        if (z) {
            token = makeToken(8);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mDN_TERMINATOR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('#');
        pop();
        if (z) {
            token = makeToken(7);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    private static final long[] mk_tokenSet_0() {
        return new long[]{287948901175001088L, 541165879296L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_1() {
        long[] jArr = new long[8];
        jArr[0] = -17179869185L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_2() {
        long[] jArr = new long[8];
        jArr[0] = -8646937724370026497L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }
}
