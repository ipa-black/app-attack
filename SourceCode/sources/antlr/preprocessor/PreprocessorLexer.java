package antlr.preprocessor;

import antlr.ANTLRHashString;
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
import antlr.collections.impl.BitSet;
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
import kotlin.text.Typography;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
/* loaded from: classes.dex */
public class PreprocessorLexer extends CharScanner implements PreprocessorTokenTypes, TokenStream {
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
    public static final BitSet _tokenSet_3 = new BitSet(mk_tokenSet_3());
    public static final BitSet _tokenSet_4 = new BitSet(mk_tokenSet_4());
    public static final BitSet _tokenSet_5 = new BitSet(mk_tokenSet_5());
    public static final BitSet _tokenSet_6 = new BitSet(mk_tokenSet_6());
    public static final BitSet _tokenSet_7 = new BitSet(mk_tokenSet_7());
    public static final BitSet _tokenSet_8 = new BitSet(mk_tokenSet_8());
    public static final BitSet _tokenSet_9 = new BitSet(mk_tokenSet_9());
    public static final BitSet _tokenSet_10 = new BitSet(mk_tokenSet_10());

    public PreprocessorLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public PreprocessorLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public PreprocessorLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public PreprocessorLexer(LexerSharedInputState lexerSharedInputState) {
        super(lexerSharedInputState);
        this.caseSensitiveLiterals = true;
        setCaseSensitive(true);
        this.literals = new Hashtable();
        this.literals.put(new ANTLRHashString("public", this), new Integer(17));
        this.literals.put(new ANTLRHashString("class", this), new Integer(7));
        this.literals.put(new ANTLRHashString("throws", this), new Integer(22));
        this.literals.put(new ANTLRHashString("catch", this), new Integer(25));
        this.literals.put(new ANTLRHashString("private", this), new Integer(16));
        this.literals.put(new ANTLRHashString("extends", this), new Integer(9));
        this.literals.put(new ANTLRHashString("protected", this), new Integer(15));
        this.literals.put(new ANTLRHashString("returns", this), new Integer(20));
        this.literals.put(new ANTLRHashString("tokens", this), new Integer(4));
        this.literals.put(new ANTLRHashString("exception", this), new Integer(24));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c2 A[LOOP:0: B:2:0x0000->B:51:0x00c2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c4 A[SYNTHETIC] */
    @Override // antlr.CharScanner, antlr.TokenStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public antlr.Token nextToken() throws antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.preprocessor.PreprocessorLexer.nextToken():antlr.Token");
    }

    public final void mRULE_BLOCK(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(':');
        if (_tokenSet_0.member(LA(1)) && _tokenSet_1.member(LA(2))) {
            int length2 = this.text.length();
            mWS(false);
            this.text.setLength(length2);
        } else if (!_tokenSet_1.member(LA(1))) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        mALT(false);
        char LA = LA(1);
        if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
            int length3 = this.text.length();
            mWS(false);
            this.text.setLength(length3);
        } else if (LA != ';' && LA != '|') {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        while (LA(1) == '|') {
            match('|');
            if (_tokenSet_0.member(LA(1)) && _tokenSet_1.member(LA(2))) {
                int length4 = this.text.length();
                mWS(false);
                this.text.setLength(length4);
            } else if (!_tokenSet_1.member(LA(1))) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            mALT(false);
            char LA2 = LA(1);
            if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
                int length5 = this.text.length();
                mWS(false);
                this.text.setLength(length5);
            } else if (LA2 != ';' && LA2 != '|') {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        }
        match(';');
        if (z) {
            token = makeToken(21);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mWS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        this.text.length();
        int i = 0;
        while (true) {
            if (LA(1) == ' ') {
                match(' ');
            } else if (LA(1) == '\t') {
                match('\t');
            } else if (LA(1) != '\n' && LA(1) != '\r') {
                break;
            } else {
                mNEWLINE(false);
            }
            i++;
        }
        if (i < 1) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        this._returnToken = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
        r5 = makeToken(27);
        r5.setText(new java.lang.String(r4.text.getBuffer(), r0, r4.text.length() - r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mALT(boolean r5) throws antlr.RecognitionException, antlr.CharStreamException, antlr.TokenStreamException {
        /*
            r4 = this;
            antlr.ANTLRStringBuffer r0 = r4.text
            int r0 = r0.length()
        L6:
            antlr.collections.impl.BitSet r1 = antlr.preprocessor.PreprocessorLexer._tokenSet_2
            r2 = 1
            char r2 = r4.LA(r2)
            boolean r1 = r1.member(r2)
            if (r1 == 0) goto L28
            r1 = 2
            char r2 = r4.LA(r1)
            r3 = 3
            if (r2 < r3) goto L28
            char r1 = r4.LA(r1)
            r2 = 255(0xff, float:3.57E-43)
            if (r1 > r2) goto L28
            r1 = 0
            r4.mELEMENT(r1)
            goto L6
        L28:
            if (r5 == 0) goto L46
            r5 = 27
            antlr.Token r5 = r4.makeToken(r5)
            java.lang.String r1 = new java.lang.String
            antlr.ANTLRStringBuffer r2 = r4.text
            char[] r2 = r2.getBuffer()
            antlr.ANTLRStringBuffer r3 = r4.text
            int r3 = r3.length()
            int r3 = r3 - r0
            r1.<init>(r2, r0, r3)
            r5.setText(r1)
            goto L47
        L46:
            r5 = 0
        L47:
            r4._returnToken = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.preprocessor.PreprocessorLexer.mALT(boolean):void");
    }

    public final void mSUBRULE_BLOCK(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('(');
        if (_tokenSet_0.member(LA(1)) && _tokenSet_3.member(LA(2))) {
            mWS(false);
        } else if (!_tokenSet_3.member(LA(1))) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        mALT(false);
        while (_tokenSet_4.member(LA(1))) {
            BitSet bitSet = _tokenSet_3;
            if (!bitSet.member(LA(2))) {
                break;
            }
            char LA = LA(1);
            if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
                mWS(false);
            } else if (LA != '|') {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            match('|');
            if (_tokenSet_0.member(LA(1)) && bitSet.member(LA(2))) {
                mWS(false);
            } else if (!bitSet.member(LA(1))) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            mALT(false);
        }
        char LA2 = LA(1);
        if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
            mWS(false);
        } else if (LA2 != ')') {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        match(')');
        if (LA(1) == '=' && LA(2) == '>') {
            match("=>");
        } else if (LA(1) == '*') {
            match('*');
        } else if (LA(1) == '+') {
            match('+');
        } else if (LA(1) == '?') {
            match('?');
        }
        if (z) {
            token = makeToken(26);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mELEMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        if (LA == '\n' || LA == '\r') {
            mNEWLINE(false);
        } else if (LA == '\"') {
            mSTRING_LITERAL(false);
        } else if (LA == '/') {
            mCOMMENT(false);
        } else if (LA == '{') {
            mACTION(false);
        } else if (LA == '\'') {
            mCHAR_LITERAL(false);
        } else if (LA == '(') {
            mSUBRULE_BLOCK(false);
        } else {
            BitSet bitSet = _tokenSet_5;
            if (bitSet.member(LA(1))) {
                match(bitSet);
            } else {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        }
        if (z) {
            token = makeToken(28);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mCOMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        this.text.length();
        if (LA(1) == '/' && LA(2) == '/') {
            mSL_COMMENT(false);
        } else if (LA(1) == '/' && LA(2) == '*') {
            mML_COMMENT(false);
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        this._returnToken = null;
    }

    public final void mACTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('{');
        while (LA(1) != '}') {
            if ((LA(1) == '\n' || LA(1) == '\r') && LA(2) >= 3 && LA(2) <= 255) {
                mNEWLINE(false);
            } else if (LA(1) == '{' && LA(2) >= 3 && LA(2) <= 255) {
                mACTION(false);
            } else if (LA(1) == '\'' && _tokenSet_6.member(LA(2))) {
                mCHAR_LITERAL(false);
            } else if (LA(1) == '/' && (LA(2) == '*' || LA(2) == '/')) {
                mCOMMENT(false);
            } else if (LA(1) == '\"' && LA(2) >= 3 && LA(2) <= 255) {
                mSTRING_LITERAL(false);
            } else if (LA(1) < 3 || LA(1) > 255 || LA(2) < 3 || LA(2) > 255) {
                break;
            } else {
                matchNot((char) 65535);
            }
        }
        match('}');
        if (z) {
            token = makeToken(6);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mSTRING_LITERAL(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.quote);
        while (true) {
            if (LA(1) == '\\') {
                mESC(false);
            } else if (!_tokenSet_7.member(LA(1))) {
                break;
            } else {
                matchNot(Typography.quote);
            }
        }
        match(Typography.quote);
        if (z) {
            token = makeToken(37);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mCHAR_LITERAL(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('\'');
        if (LA(1) == '\\') {
            mESC(false);
        } else if (_tokenSet_8.member(LA(1))) {
            matchNot('\'');
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        match('\'');
        if (z) {
            token = makeToken(36);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mNEWLINE(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (LA(1) == '\r' && LA(2) == '\n') {
            match('\r');
            match('\n');
            newline();
        } else if (LA(1) == '\r') {
            match('\r');
            newline();
        } else if (LA(1) == '\n') {
            match('\n');
            newline();
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(32);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mBANG(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('!');
        if (z) {
            token = makeToken(18);
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
        if (z) {
            token = makeToken(10);
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
        if (z) {
            token = makeToken(23);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mRCURLY(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('}');
        if (z) {
            token = makeToken(14);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mID_OR_KEYWORD(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mID(true);
        Token token2 = this._returnToken;
        int type = token2.getType();
        BitSet bitSet = _tokenSet_9;
        if (bitSet.member(LA(1)) && LA(2) >= 3 && LA(2) <= 255 && token2.getText().equals("header")) {
            if (_tokenSet_0.member(LA(1)) && bitSet.member(LA(2))) {
                mWS(false);
            } else if (!bitSet.member(LA(1)) || LA(2) < 3 || LA(2) > 255) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            char LA = LA(1);
            if (LA != '\t' && LA != '\n' && LA != '\r' && LA != ' ') {
                if (LA == '\"') {
                    mSTRING_LITERAL(false);
                } else if (LA != '/' && LA != '{') {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
            }
            while (true) {
                char LA2 = LA(1);
                if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
                    mWS(false);
                } else if (LA2 != '/') {
                    break;
                } else {
                    mCOMMENT(false);
                }
            }
            mACTION(false);
            type = 5;
        } else {
            BitSet bitSet2 = _tokenSet_10;
            if (bitSet2.member(LA(1)) && LA(2) >= 3 && LA(2) <= 255 && token2.getText().equals("tokens")) {
                while (true) {
                    char LA3 = LA(1);
                    if (LA3 == '\t' || LA3 == '\n' || LA3 == '\r' || LA3 == ' ') {
                        mWS(false);
                    } else if (LA3 != '/') {
                        break;
                    } else {
                        mCOMMENT(false);
                    }
                }
                mCURLY_BLOCK_SCARF(false);
                type = 11;
            } else if (bitSet2.member(LA(1)) && token2.getText().equals("options")) {
                while (true) {
                    char LA4 = LA(1);
                    if (LA4 == '\t' || LA4 == '\n' || LA4 == '\r' || LA4 == ' ') {
                        mWS(false);
                    } else if (LA4 != '/') {
                        break;
                    } else {
                        mCOMMENT(false);
                    }
                }
                match('{');
                type = 12;
            }
        }
        if (!z || type == -1) {
            token = null;
        } else {
            token = makeToken(type);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        }
        this._returnToken = token;
    }

    protected final void mID(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        switch (LA(1)) {
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
            case '[':
            case '\\':
            case ']':
            case '^':
            case '`':
            default:
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            case '_':
                match('_');
                break;
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
        }
        while (true) {
            char LA = LA(1);
            if (LA == '_') {
                match('_');
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
                        matchRange('0', '9');
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
                                matchRange('A', 'Z');
                                continue;
                                continue;
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
                                        continue;
                                    default:
                                        int testLiteralsTable = testLiteralsTable(new String(this.text.getBuffer(), length, this.text.length() - length), 8);
                                        if (!z || testLiteralsTable == -1) {
                                            token = null;
                                        } else {
                                            token = makeToken(testLiteralsTable);
                                            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
                                        }
                                        this._returnToken = token;
                                        return;
                                }
                        }
                }
            }
        }
    }

    protected final void mCURLY_BLOCK_SCARF(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('{');
        while (LA(1) != '}') {
            if ((LA(1) == '\n' || LA(1) == '\r') && LA(2) >= 3 && LA(2) <= 255) {
                mNEWLINE(false);
            } else if (LA(1) == '\"' && LA(2) >= 3 && LA(2) <= 255) {
                mSTRING_LITERAL(false);
            } else if (LA(1) == '\'' && _tokenSet_6.member(LA(2))) {
                mCHAR_LITERAL(false);
            } else if (LA(1) == '/' && (LA(2) == '*' || LA(2) == '/')) {
                mCOMMENT(false);
            } else if (LA(1) < 3 || LA(1) > 255 || LA(2) < 3 || LA(2) > 255) {
                break;
            } else {
                matchNot((char) 65535);
            }
        }
        match('}');
        if (z) {
            token = makeToken(30);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mASSIGN_RHS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int length2 = this.text.length();
        match('=');
        this.text.setLength(length2);
        while (LA(1) != ';') {
            if (LA(1) == '\"' && LA(2) >= 3 && LA(2) <= 255) {
                mSTRING_LITERAL(false);
            } else if (LA(1) == '\'' && _tokenSet_6.member(LA(2))) {
                mCHAR_LITERAL(false);
            } else if ((LA(1) == '\n' || LA(1) == '\r') && LA(2) >= 3 && LA(2) <= 255) {
                mNEWLINE(false);
            } else if (LA(1) < 3 || LA(1) > 255 || LA(2) < 3 || LA(2) > 255) {
                break;
            } else {
                matchNot((char) 65535);
            }
        }
        match(';');
        if (z) {
            token = makeToken(13);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mSL_COMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("//");
        while (LA(1) != '\n' && LA(1) != '\r' && LA(1) >= 3 && LA(1) <= 255 && LA(2) >= 3 && LA(2) <= 255) {
            matchNot((char) 65535);
        }
        mNEWLINE(false);
        if (z) {
            token = makeToken(34);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mML_COMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("/*");
        while (true) {
            if (LA(1) != '*' || LA(2) != '/') {
                if ((LA(1) == '\n' || LA(1) == '\r') && LA(2) >= 3 && LA(2) <= 255) {
                    mNEWLINE(false);
                } else if (LA(1) < 3 || LA(1) > 255 || LA(2) < 3 || LA(2) > 255) {
                    break;
                } else {
                    matchNot((char) 65535);
                }
            } else {
                break;
            }
        }
        match("*/");
        if (z) {
            token = makeToken(35);
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
        } else if (LA == 'f') {
            match('f');
        } else if (LA == 'n') {
            match('n');
        } else if (LA == 'r') {
            match('r');
        } else if (LA == 'w') {
            match('w');
        } else if (LA == 'a') {
            match('a');
        } else if (LA == 'b') {
            match('b');
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
            token = makeToken(38);
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
            token = makeToken(39);
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
            token = makeToken(40);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mARG_ACTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('[');
        while (LA(1) != ']') {
            if (LA(1) == '[' && LA(2) >= 3 && LA(2) <= 255) {
                mARG_ACTION(false);
            } else if ((LA(1) == '\n' || LA(1) == '\r') && LA(2) >= 3 && LA(2) <= 255) {
                mNEWLINE(false);
            } else if (LA(1) == '\'' && _tokenSet_6.member(LA(2))) {
                mCHAR_LITERAL(false);
            } else if (LA(1) == '\"' && LA(2) >= 3 && LA(2) <= 255) {
                mSTRING_LITERAL(false);
            } else if (LA(1) < 3 || LA(1) > 255 || LA(2) < 3 || LA(2) > 255) {
                break;
            } else {
                matchNot((char) 65535);
            }
        }
        match(']');
        if (z) {
            token = makeToken(19);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    private static final long[] mk_tokenSet_0() {
        return new long[]{4294977024L, 0, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_1() {
        long[] jArr = new long[8];
        jArr[0] = -2199023255560L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_2() {
        long[] jArr = new long[8];
        jArr[0] = -576462951326679048L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_3() {
        long[] jArr = new long[8];
        jArr[0] = -576460752303423496L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_4() {
        return new long[]{4294977024L, LockFreeTaskQueueCore.FROZEN_MASK, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_5() {
        long[] jArr = new long[8];
        jArr[0] = -576605355262354440L;
        jArr[1] = -576460752303423489L;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_6() {
        long[] jArr = new long[8];
        jArr[0] = -549755813896L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_7() {
        long[] jArr = new long[8];
        jArr[0] = -17179869192L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_8() {
        long[] jArr = new long[8];
        jArr[0] = -549755813896L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_9() {
        return new long[]{140758963201536L, 576460752303423488L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_10() {
        return new long[]{140741783332352L, 576460752303423488L, 0, 0, 0};
    }
}
