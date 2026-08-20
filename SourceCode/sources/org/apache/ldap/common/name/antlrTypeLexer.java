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
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
/* loaded from: classes3.dex */
public class antlrTypeLexer extends CharScanner implements antlrTypeTokenTypes, TokenStream {
    public static final String LEXER_KEY = "typeLexer";
    private TokenStreamSelector m_selector;

    public void setSelector(TokenStreamSelector tokenStreamSelector) {
        this.m_selector = tokenStreamSelector;
    }

    private void push() {
        TokenStreamSelector tokenStreamSelector = this.m_selector;
        if (tokenStreamSelector == null) {
            throw new NullPointerException("The selector has not been set for the type lexer!\nCall lexer.setSelector(TokenStreamSelector a_selector) before using the lexer or its owning parser.");
        }
        tokenStreamSelector.push(antlrValueLexer.LEXER_KEY);
    }

    public antlrTypeLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public antlrTypeLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public antlrTypeLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public antlrTypeLexer(LexerSharedInputState lexerSharedInputState) {
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
                    if (LA == '\t' || LA == '\n' || LA == '\f' || LA == '\r' || LA == ' ') {
                        mWS(true);
                        Token token = this._returnToken;
                    } else if (LA != '=') {
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
                                mOID(true);
                                Token token2 = this._returnToken;
                                break;
                            default:
                                switch (LA) {
                                    case 'a':
                                    case 'b':
                                    case 'c':
                                    case 'd':
                                    case 'e':
                                    case 'f':
                                    case 'g':
                                    case 'h':
                                    case 'i':
                                    case 'j':
                                    case 'k':
                                    case 'l':
                                    case 'm':
                                    case 'n':
                                    case 'o':
                                    case 'p':
                                    case 'q':
                                    case 'r':
                                    case 's':
                                    case 't':
                                    case 'u':
                                    case 'v':
                                    case 'w':
                                    case 'x':
                                    case 'y':
                                    case 'z':
                                        mATTRIBUTE(true);
                                        Token token3 = this._returnToken;
                                        break;
                                    default:
                                        if (LA(1) == 65535) {
                                            uponEOF();
                                            this._returnToken = makeToken(1);
                                            break;
                                        } else {
                                            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                                        }
                                }
                        }
                    } else {
                        mEQUAL(true);
                        Token token4 = this._returnToken;
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

    protected final void mOPEN_BRACKET(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('{');
        if (z) {
            token = makeToken(11);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mCLOSE_BRACKET(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('}');
        if (z) {
            token = makeToken(12);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mOID(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int i = 0;
        while (LA(1) >= '0' && LA(1) <= '9') {
            mDIGIT(false);
            i++;
        }
        if (i < 1) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        while (LA(1) == '.') {
            match('.');
            int i2 = 0;
            while (LA(1) >= '0' && LA(1) <= '9') {
                mDIGIT(false);
                i2++;
            }
            if (i2 < 1) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        }
        if (LA(1) == '{') {
            mOPEN_BRACKET(false);
            int i3 = 0;
            while (LA(1) >= '0' && LA(1) <= '9') {
                mDIGIT(false);
                i3++;
            }
            if (i3 < 1) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            mCLOSE_BRACKET(false);
        }
        if (z) {
            token = makeToken(13);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mATTRIBUTE(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mALPHA(false);
        while (true) {
            char LA = LA(1);
            if (LA != '-') {
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
                        continue;
                    default:
                        switch (LA) {
                            default:
                                if (z) {
                                    token = makeToken(14);
                                    token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
                                } else {
                                    token = null;
                                }
                                this._returnToken = token;
                                return;
                            case 'a':
                            case 'b':
                            case 'c':
                            case 'd':
                            case 'e':
                            case 'f':
                            case 'g':
                            case 'h':
                            case 'i':
                            case 'j':
                            case 'k':
                            case 'l':
                            case 'm':
                            case 'n':
                            case 'o':
                            case 'p':
                            case 'q':
                            case 'r':
                            case 's':
                            case 't':
                            case 'u':
                            case 'v':
                            case 'w':
                            case 'x':
                            case 'y':
                            case 'z':
                                mALPHA(false);
                                continue;
                                continue;
                        }
                }
            } else {
                match('-');
            }
        }
    }

    public final void mWS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        this.text.length();
        char LA = LA(1);
        if (LA == '\t') {
            match('\t');
        } else {
            if (LA != '\n') {
                if (LA == '\f') {
                    match('\f');
                } else if (LA != '\r') {
                    if (LA == ' ') {
                        match(' ');
                    } else {
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                    }
                }
            }
            if (LA(1) == '\r' && LA(2) == '\n') {
                match("\r\n");
            } else if (LA(1) == '\r') {
                match('\r');
            } else if (LA(1) == '\n') {
                match('\n');
            } else {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            newline();
        }
        this._returnToken = null;
    }

    public final void mEQUAL(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("=");
        push();
        if (z) {
            token = makeToken(4);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }
}
