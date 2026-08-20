package antlr;

import antlr.collections.impl.BitSet;
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public class ANTLRTokdefLexer extends CharScanner implements ANTLRTokdefParserTokenTypes, TokenStream {
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
    public static final BitSet _tokenSet_3 = new BitSet(mk_tokenSet_3());

    public ANTLRTokdefLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public ANTLRTokdefLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public ANTLRTokdefLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public ANTLRTokdefLexer(LexerSharedInputState lexerSharedInputState) {
        super(lexerSharedInputState);
        this.caseSensitiveLiterals = true;
        setCaseSensitive(true);
        this.literals = new Hashtable();
    }

    @Override // antlr.CharScanner, antlr.TokenStream
    public Token nextToken() throws TokenStreamException {
        while (true) {
            resetText();
            try {
                try {
                    char LA = LA(1);
                    if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
                        mWS(true);
                        Token token = this._returnToken;
                    } else if (LA == '\"') {
                        mSTRING(true);
                        Token token2 = this._returnToken;
                    } else if (LA == '=') {
                        mASSIGN(true);
                        Token token3 = this._returnToken;
                    } else if (LA == '(') {
                        mLPAREN(true);
                        Token token4 = this._returnToken;
                    } else if (LA == ')') {
                        mRPAREN(true);
                        Token token5 = this._returnToken;
                    } else {
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
                                mINT(true);
                                Token token6 = this._returnToken;
                                break;
                            default:
                                switch (LA) {
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
                                                if (LA(1) == '/' && LA(2) == '/') {
                                                    mSL_COMMENT(true);
                                                    Token token7 = this._returnToken;
                                                    break;
                                                } else if (LA(1) == '/' && LA(2) == '*') {
                                                    mML_COMMENT(true);
                                                    Token token8 = this._returnToken;
                                                    break;
                                                } else if (LA(1) == 65535) {
                                                    uponEOF();
                                                    this._returnToken = makeToken(1);
                                                    break;
                                                } else {
                                                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                                                }
                                                break;
                                        }
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
                                        mID(true);
                                        Token token9 = this._returnToken;
                                        break;
                                }
                        }
                    }
                    if (this._returnToken != null) {
                        this._returnToken.setType(this._returnToken.getType());
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

    public final void mWS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        this.text.length();
        char LA = LA(1);
        if (LA == '\t') {
            match('\t');
        } else if (LA == '\n') {
            match('\n');
            newline();
        } else if (LA == '\r') {
            match('\r');
            if (LA(1) == '\n') {
                match('\n');
            }
            newline();
        } else if (LA == ' ') {
            match(' ');
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        this._returnToken = null;
    }

    public final void mSL_COMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        this.text.length();
        match("//");
        while (true) {
            BitSet bitSet = _tokenSet_0;
            if (!bitSet.member(LA(1))) {
                break;
            }
            match(bitSet);
        }
        char LA = LA(1);
        if (LA == '\n') {
            match('\n');
        } else if (LA == '\r') {
            match('\r');
            if (LA(1) == '\n') {
                match('\n');
            }
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        newline();
        this._returnToken = null;
    }

    public final void mML_COMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        this.text.length();
        match("/*");
        while (true) {
            if (LA(1) == '*' && _tokenSet_1.member(LA(2))) {
                match('*');
                matchNot('/');
            } else if (LA(1) == '\n') {
                match('\n');
                newline();
            } else if (_tokenSet_2.member(LA(1))) {
                matchNot('*');
            } else {
                match("*/");
                this._returnToken = null;
                return;
            }
        }
    }

    public final void mLPAREN(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('(');
        if (z) {
            token = makeToken(7);
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
            token = makeToken(8);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mASSIGN(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('=');
        if (z) {
            token = makeToken(6);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mSTRING(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.quote);
        while (true) {
            if (LA(1) == '\\') {
                mESC(false);
            } else if (!_tokenSet_3.member(LA(1))) {
                break;
            } else {
                matchNot(Typography.quote);
            }
        }
        match(Typography.quote);
        if (z) {
            token = makeToken(5);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mESC(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('\\');
        char LA = LA(1);
        if (LA == '\"') {
            match(Typography.quote);
        } else if (LA == '\'') {
            match('\'');
        } else if (LA == '\\') {
            match('\\');
        } else if (LA == 'b') {
            match('b');
        } else if (LA == 'f') {
            match('f');
        } else if (LA == 'n') {
            match('n');
        } else if (LA == 'r') {
            match('r');
        } else if (LA == 't') {
            match('t');
        } else if (LA != 'u') {
            switch (LA) {
                case '0':
                case '1':
                case '2':
                case '3':
                    matchRange('0', '3');
                    if (LA(1) >= '0' && LA(1) <= '9' && LA(2) >= 3 && LA(2) <= 255) {
                        mDIGIT(false);
                        if (LA(1) >= '0' && LA(1) <= '9' && LA(2) >= 3 && LA(2) <= 255) {
                            mDIGIT(false);
                            break;
                        } else if (LA(1) < 3 || LA(1) > 255) {
                            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                        }
                    } else if (LA(1) < 3 || LA(1) > 255) {
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                    }
                    break;
                case '4':
                case '5':
                case '6':
                case '7':
                    matchRange('4', '7');
                    if (LA(1) >= '0' && LA(1) <= '9' && LA(2) >= 3 && LA(2) <= 255) {
                        mDIGIT(false);
                        break;
                    } else if (LA(1) < 3 || LA(1) > 255) {
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                    }
                    break;
                default:
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        } else {
            match('u');
            mXDIGIT(false);
            mXDIGIT(false);
            mXDIGIT(false);
            mXDIGIT(false);
        }
        if (z) {
            token = makeToken(13);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mDIGIT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange('0', '9');
        if (z) {
            token = makeToken(14);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mXDIGIT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
                matchRange('0', '9');
                break;
            default:
                switch (LA) {
                    case 'A':
                    case 'B':
                    case 'C':
                    case 'D':
                    case 'E':
                    case 'F':
                        matchRange('A', 'F');
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
        }
        if (z) {
            token = makeToken(15);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mID(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
        while (true) {
            char LA2 = LA(1);
            if (LA2 == '_') {
                match('_');
            } else {
                switch (LA2) {
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
                        matchRange('0', '9');
                        continue;
                    default:
                        switch (LA2) {
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
                                continue;
                                continue;
                            default:
                                switch (LA2) {
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
                                        continue;
                                    default:
                                        if (z) {
                                            token = makeToken(4);
                                            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
                                        } else {
                                            token = null;
                                        }
                                        this._returnToken = token;
                                        return;
                                }
                        }
                }
            }
        }
    }

    public final void mINT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
        if (z) {
            token = makeToken(9);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    private static final long[] mk_tokenSet_0() {
        long[] jArr = new long[8];
        jArr[0] = -9224;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_1() {
        long[] jArr = new long[8];
        jArr[0] = -140737488355336L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_2() {
        long[] jArr = new long[8];
        jArr[0] = -4398046512136L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_3() {
        long[] jArr = new long[8];
        jArr[0] = -17179869192L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }
}
