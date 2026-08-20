package org.apache.ldap.common.filter;

import antlr.ByteBuffer;
import antlr.CharBuffer;
import antlr.CharScanner;
import antlr.CharStreamException;
import antlr.InputBuffer;
import antlr.LexerSharedInputState;
import antlr.NoViableAltForCharException;
import antlr.RecognitionException;
import antlr.Token;
import antlr.TokenStream;
import antlr.TokenStreamException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
import kotlin.text.Typography;
/* loaded from: classes3.dex */
public class AntlrFilterLexer extends CharScanner implements FilterLexerTokenTypes, TokenStream {
    public static final String SELECTOR_KEY = "filterLexer";

    public AntlrFilterLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public AntlrFilterLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public AntlrFilterLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public AntlrFilterLexer(LexerSharedInputState lexerSharedInputState) {
        super(lexerSharedInputState);
        this.caseSensitiveLiterals = true;
        setCaseSensitive(true);
        this.literals = new Hashtable();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ac A[Catch: CharStreamException -> 0x00f9, RecognitionException -> 0x00fb, FALL_THROUGH, TryCatch #0 {RecognitionException -> 0x00fb, blocks: (B:3:0x0004, B:19:0x0028, B:20:0x002b, B:21:0x002e, B:22:0x0031, B:23:0x0034, B:24:0x0037, B:26:0x0040, B:28:0x0048, B:54:0x00e1, B:57:0x00e7, B:29:0x004f, B:31:0x0055, B:33:0x005d, B:34:0x0064, B:36:0x006a, B:37:0x0071, B:39:0x007a, B:40:0x0084, B:41:0x0099, B:42:0x009a, B:43:0x00a0, B:44:0x00a6, B:45:0x00ac, B:46:0x00b2, B:47:0x00b8, B:48:0x00be, B:49:0x00c4, B:50:0x00ca, B:51:0x00d0, B:52:0x00d6, B:53:0x00dc), top: B:70:0x0004, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e5 A[LOOP:0: B:2:0x0000->B:56:0x00e5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e7 A[SYNTHETIC] */
    @Override // antlr.CharScanner, antlr.TokenStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public antlr.Token nextToken() throws antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.ldap.common.filter.AntlrFilterLexer.nextToken():antlr.Token");
    }

    public final void mWS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        this.text.length();
        char LA = LA(1);
        if (LA == '\t') {
            match('\t');
        } else if (LA == '\n') {
            match('\n');
            newline();
        } else if (LA == ' ') {
            match(' ');
        } else if (LA(1) == '\r' && LA(2) == '\n') {
            match('\r');
            match('\n');
            newline();
        } else if (LA(1) == '\r') {
            match('\r');
            newline();
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        this._returnToken = null;
    }

    protected final void mRANGLE(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.greater);
        if (z) {
            token = makeToken(27);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mLANGLE(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.less);
        if (z) {
            token = makeToken(28);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mTILDE(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('~');
        if (z) {
            token = makeToken(17);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mCOLON(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(':');
        if (z) {
            token = makeToken(15);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mASTERISK(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('*');
        if (z) {
            token = makeToken(12);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mEXCLAMATION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('!');
        if (z) {
            token = makeToken(10);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mEQUALS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('=');
        if (z) {
            token = makeToken(29);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mLPAREN(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('(');
        if (z) {
            token = makeToken(13);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mRPAREN(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(')');
        if (z) {
            token = makeToken(14);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mVERTBAR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('|');
        if (z) {
            token = makeToken(16);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mAMPERSTAND(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.amp);
        if (z) {
            token = makeToken(30);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mDN(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(":dn");
        if (z) {
            token = makeToken(31);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mCOLONEQUALS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(":=");
        if (z) {
            token = makeToken(32);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mAPPROX(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mTILDE(false);
        mEQUALS(false);
        if (z) {
            token = makeToken(33);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mGREATEROREQUAL(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mRANGLE(false);
        mEQUALS(false);
        if (z) {
            token = makeToken(34);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mLESSOREQUAL(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mLANGLE(false);
        mEQUALS(false);
        if (z) {
            token = makeToken(35);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mDIGIT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        switch (LA(1)) {
            case '0':
                match('0');
                break;
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                mLDIGIT(false);
                break;
            default:
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(4);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mLDIGIT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange('1', '9');
        if (z) {
            token = makeToken(36);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mALPHA(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        switch (LA) {
            case 'A':
            case 'B':
            case 'C':
            case 'D':
            case 'E':
            case 'F':
            case 'G':
            case 'H':
            case 'I':
            case 'J':
            case 'K':
            case 'L':
            case 'M':
            case 'N':
            case 'O':
            case 'P':
            case 'Q':
            case 'R':
            case 'S':
            case 'T':
            case 'U':
            case 'V':
            case 'W':
            case 'X':
            case 'Y':
            case 'Z':
                matchRange('A', 'Z');
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
                        matchRange('a', 'z');
                        break;
                    default:
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
        }
        if (z) {
            token = makeToken(37);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mNUMBER(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (LA(1) >= '1' && LA(1) <= '9' && LA(2) >= '0' && LA(2) <= '9') {
            mLDIGIT(false);
            int i = 0;
            while (LA(1) >= '0' && LA(1) <= '9') {
                mDIGIT(false);
                i++;
            }
            if (i < 1) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        } else if (LA(1) >= '0' && LA(1) <= '9') {
            mDIGIT(false);
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(38);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mNUMERICOID(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mNUMBER(false);
        int i = 0;
        while (LA(1) == '.') {
            match('.');
            mNUMBER(false);
            i++;
        }
        if (i < 1) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(39);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mDESCR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
                            case 'A':
                            case 'B':
                            case 'C':
                            case 'D':
                            case 'E':
                            case 'F':
                            case 'G':
                            case 'H':
                            case 'I':
                            case 'J':
                            case 'K':
                            case 'L':
                            case 'M':
                            case 'N':
                            case 'O':
                            case 'P':
                            case 'Q':
                            case 'R':
                            case 'S':
                            case 'T':
                            case 'U':
                            case 'V':
                            case 'W':
                            case 'X':
                            case 'Y':
                            case 'Z':
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
                                        break;
                                    default:
                                        if (z) {
                                            token = makeToken(40);
                                            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
                                        } else {
                                            token = null;
                                        }
                                        this._returnToken = token;
                                        return;
                                }
                        }
                        mALPHA(false);
                        continue;
                }
            } else {
                match('-');
            }
        }
    }

    protected final void mOID(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
                mNUMERICOID(false);
                break;
            default:
                switch (LA) {
                    case 'A':
                    case 'B':
                    case 'C':
                    case 'D':
                    case 'E':
                    case 'F':
                    case 'G':
                    case 'H':
                    case 'I':
                    case 'J':
                    case 'K':
                    case 'L':
                    case 'M':
                    case 'N':
                    case 'O':
                    case 'P':
                    case 'Q':
                    case 'R':
                    case 'S':
                    case 'T':
                    case 'U':
                    case 'V':
                    case 'W':
                    case 'X':
                    case 'Y':
                    case 'Z':
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
                                break;
                            default:
                                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                        }
                }
                mDESCR(false);
                break;
        }
        if (z) {
            token = makeToken(41);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mOPTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int i = 0;
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
                            case 'A':
                            case 'B':
                            case 'C':
                            case 'D':
                            case 'E':
                            case 'F':
                            case 'G':
                            case 'H':
                            case 'I':
                            case 'J':
                            case 'K':
                            case 'L':
                            case 'M':
                            case 'N':
                            case 'O':
                            case 'P':
                            case 'Q':
                            case 'R':
                            case 'S':
                            case 'T':
                            case 'U':
                            case 'V':
                            case 'W':
                            case 'X':
                            case 'Y':
                            case 'Z':
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
                                        break;
                                    default:
                                        if (i < 1) {
                                            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                                        }
                                        if (z) {
                                            token = makeToken(42);
                                            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
                                        } else {
                                            token = null;
                                        }
                                        this._returnToken = token;
                                        return;
                                }
                        }
                        mALPHA(false);
                        continue;
                }
            } else {
                match('-');
            }
            i++;
        }
    }

    protected final void mOPTIONS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        while (LA(1) == ';') {
            match(';');
            mOPTION(false);
        }
        if (z) {
            token = makeToken(43);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mATTRIBUTEDESCRIPTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mOID(false);
        mOPTIONS(false);
        if (z) {
            token = makeToken(44);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }
}
