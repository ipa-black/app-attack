package antlr;

import antlr.collections.impl.BitSet;
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public class ANTLRLexer extends CharScanner implements ANTLRTokenTypes, TokenStream {
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
    public static final BitSet _tokenSet_3 = new BitSet(mk_tokenSet_3());
    public static final BitSet _tokenSet_4 = new BitSet(mk_tokenSet_4());
    public static final BitSet _tokenSet_5 = new BitSet(mk_tokenSet_5());

    public static int escapeCharValue(String str) {
        int digit;
        int digit2;
        char charAt;
        char charAt2;
        if (str.charAt(1) != '\\') {
            return 0;
        }
        char charAt3 = str.charAt(2);
        int i = 34;
        if (charAt3 != '\"') {
            i = 39;
            if (charAt3 != '\'') {
                if (charAt3 != '\\') {
                    if (charAt3 != 'b') {
                        if (charAt3 != 'f') {
                            if (charAt3 != 'n') {
                                if (charAt3 != 'r') {
                                    if (charAt3 != 't') {
                                        if (charAt3 == 'u') {
                                            if (str.length() != 8) {
                                                return 0;
                                            }
                                            digit = (Character.digit(str.charAt(3), 16) * 4096) + (Character.digit(str.charAt(4), 16) * 256) + (Character.digit(str.charAt(5), 16) * 16);
                                            digit2 = Character.digit(str.charAt(6), 16);
                                        } else {
                                            switch (charAt3) {
                                                case '0':
                                                case '1':
                                                case '2':
                                                case '3':
                                                    if (str.length() > 5 && Character.isDigit(str.charAt(4))) {
                                                        digit = ((str.charAt(2) - '0') * 64) + ((str.charAt(3) - '0') * 8);
                                                        charAt2 = str.charAt(4);
                                                    } else if (str.length() > 4 && Character.isDigit(str.charAt(3))) {
                                                        digit = (str.charAt(2) - '0') * 8;
                                                        charAt2 = str.charAt(3);
                                                    } else {
                                                        charAt = str.charAt(2);
                                                        return charAt - '0';
                                                    }
                                                    digit2 = charAt2 - '0';
                                                    break;
                                                case '4':
                                                case '5':
                                                case '6':
                                                case '7':
                                                    if (str.length() > 4 && Character.isDigit(str.charAt(3))) {
                                                        digit = (str.charAt(2) - '0') * 8;
                                                        charAt2 = str.charAt(3);
                                                        digit2 = charAt2 - '0';
                                                        break;
                                                    } else {
                                                        charAt = str.charAt(2);
                                                        return charAt - '0';
                                                    }
                                                default:
                                                    return 0;
                                            }
                                        }
                                        return digit + digit2;
                                    }
                                    return 9;
                                }
                                return 13;
                            }
                            return 10;
                        }
                        return 12;
                    }
                    return 8;
                }
                return 92;
            }
        }
        return i;
    }

    public static int tokenTypeForCharLiteral(String str) {
        if (str.length() > 3) {
            return escapeCharValue(str);
        }
        return str.charAt(1);
    }

    public ANTLRLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public ANTLRLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public ANTLRLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public ANTLRLexer(LexerSharedInputState lexerSharedInputState) {
        super(lexerSharedInputState);
        this.caseSensitiveLiterals = true;
        setCaseSensitive(true);
        this.literals = new Hashtable();
        this.literals.put(new ANTLRHashString("public", this), new Integer(32));
        this.literals.put(new ANTLRHashString("class", this), new Integer(10));
        this.literals.put(new ANTLRHashString("header", this), new Integer(5));
        this.literals.put(new ANTLRHashString("throws", this), new Integer(38));
        this.literals.put(new ANTLRHashString("lexclass", this), new Integer(9));
        this.literals.put(new ANTLRHashString("catch", this), new Integer(41));
        this.literals.put(new ANTLRHashString("private", this), new Integer(33));
        this.literals.put(new ANTLRHashString("options", this), new Integer(51));
        this.literals.put(new ANTLRHashString("extends", this), new Integer(11));
        this.literals.put(new ANTLRHashString("protected", this), new Integer(31));
        this.literals.put(new ANTLRHashString("TreeParser", this), new Integer(13));
        this.literals.put(new ANTLRHashString("Parser", this), new Integer(30));
        this.literals.put(new ANTLRHashString("Lexer", this), new Integer(12));
        this.literals.put(new ANTLRHashString("returns", this), new Integer(36));
        this.literals.put(new ANTLRHashString("charVocabulary", this), new Integer(18));
        this.literals.put(new ANTLRHashString("tokens", this), new Integer(4));
        this.literals.put(new ANTLRHashString("exception", this), new Integer(40));
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0140 A[LOOP:0: B:2:0x0000->B:68:0x0140, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0142 A[SYNTHETIC] */
    @Override // antlr.CharScanner, antlr.TokenStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public antlr.Token nextToken() throws antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRLexer.nextToken():antlr.Token");
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

    public final void mCOMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        int type;
        Token token;
        int length = this.text.length();
        if (LA(1) == '/' && LA(2) == '/') {
            mSL_COMMENT(false);
            type = 53;
        } else if (LA(1) == '/' && LA(2) == '*') {
            mML_COMMENT(true);
            type = this._returnToken.getType();
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (type != 8) {
            type = -1;
        }
        if (!z || type == -1) {
            token = null;
        } else {
            token = makeToken(type);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        }
        this._returnToken = token;
    }

    protected final void mSL_COMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("//");
        while (true) {
            BitSet bitSet = _tokenSet_0;
            if (!bitSet.member(LA(1))) {
                break;
            }
            match(bitSet);
        }
        if (LA(1) == '\r' && LA(2) == '\n') {
            match('\r');
            match('\n');
        } else if (LA(1) == '\r') {
            match('\r');
        } else if (LA(1) == '\n') {
            match('\n');
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        newline();
        if (z) {
            token = makeToken(54);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mML_COMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        int i;
        Token token;
        int length = this.text.length();
        match("/*");
        if (LA(1) == '*' && LA(2) >= 3 && LA(2) <= 255 && LA(2) != '/') {
            match('*');
            i = 8;
        } else if (LA(1) < 3 || LA(1) > 255 || LA(2) < 3 || LA(2) > 255) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        } else {
            i = 55;
        }
        while (true) {
            if (LA(1) == '*' && LA(2) == '/') {
                break;
            } else if (LA(1) == '\r' && LA(2) == '\n') {
                match('\r');
                match('\n');
                newline();
            } else if (LA(1) == '\r' && LA(2) >= 3 && LA(2) <= 255) {
                match('\r');
                newline();
            } else {
                BitSet bitSet = _tokenSet_0;
                if (bitSet.member(LA(1)) && LA(2) >= 3 && LA(2) <= 255) {
                    match(bitSet);
                } else if (LA(1) != '\n') {
                    break;
                } else {
                    match('\n');
                    newline();
                }
            }
        }
        match("*/");
        if (!z || i == -1) {
            token = null;
        } else {
            token = makeToken(i);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        }
        this._returnToken = token;
    }

    public final void mOPEN_ELEMENT_OPTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.less);
        if (z) {
            token = makeToken(25);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mCLOSE_ELEMENT_OPTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(Typography.greater);
        if (z) {
            token = makeToken(26);
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
            token = makeToken(39);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mQUESTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('?');
        if (z) {
            token = makeToken(45);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mTREE_BEGIN(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("#(");
        if (z) {
            token = makeToken(44);
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
            token = makeToken(27);
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
            token = makeToken(29);
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
            token = makeToken(37);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mSTAR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('*');
        if (z) {
            token = makeToken(46);
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
        if (z) {
            token = makeToken(47);
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
            token = makeToken(15);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mIMPLIES(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("=>");
        if (z) {
            token = makeToken(48);
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
            token = makeToken(16);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mCARET(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('^');
        if (z) {
            token = makeToken(49);
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
            token = makeToken(34);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mOR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('|');
        if (z) {
            token = makeToken(21);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mWILDCARD(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('.');
        if (z) {
            token = makeToken(50);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mRANGE(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("..");
        if (z) {
            token = makeToken(22);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mNOT_OP(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('~');
        if (z) {
            token = makeToken(42);
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
            token = makeToken(17);
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
        } else if (_tokenSet_1.member(LA(1))) {
            matchNot('\'');
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        match('\'');
        if (z) {
            token = makeToken(19);
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
                        matchRange('0', '9');
                        if (LA(1) >= '0' && LA(1) <= '9' && LA(2) >= 3 && LA(2) <= 255) {
                            matchRange('0', '9');
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
                        matchRange('0', '9');
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
            token = makeToken(56);
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
            } else if (!_tokenSet_2.member(LA(1))) {
                break;
            } else {
                matchNot(Typography.quote);
            }
        }
        match(Typography.quote);
        if (z) {
            token = makeToken(6);
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
            token = makeToken(58);
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
            token = makeToken(57);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mINT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int i = 0;
        while (LA(1) >= '0' && LA(1) <= '9') {
            matchRange('0', '9');
            i++;
        }
        if (i < 1) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(20);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mARG_ACTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mNESTED_ARG_ACTION(false);
        setText(StringUtils.stripFrontBack(getText(), "[", "]"));
        if (z) {
            token = makeToken(35);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mNESTED_ARG_ACTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('[');
        while (true) {
            char LA = LA(1);
            if (LA == '\n') {
                match('\n');
                newline();
            } else if (LA == '\"') {
                mSTRING_LITERAL(false);
            } else if (LA == '\'') {
                mCHAR_LITERAL(false);
            } else if (LA == '[') {
                mNESTED_ARG_ACTION(false);
            } else if (LA(1) == '\r' && LA(2) == '\n') {
                match('\r');
                match('\n');
                newline();
            } else if (LA(1) == '\r' && LA(2) >= 3 && LA(2) <= 255) {
                match('\r');
                newline();
            } else if (!_tokenSet_3.member(LA(1))) {
                break;
            } else {
                matchNot(']');
            }
        }
        match(']');
        if (z) {
            token = makeToken(59);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mACTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        int i;
        int length = this.text.length();
        int line = getLine();
        int column = getColumn();
        mNESTED_ACTION(false);
        if (LA(1) == '?') {
            match('?');
            i = 43;
        } else {
            i = 7;
        }
        if (i == 7) {
            setText(StringUtils.stripFrontBack(getText(), "{", "}"));
        } else {
            setText(StringUtils.stripFrontBack(getText(), "{", "}?"));
        }
        CommonToken commonToken = new CommonToken(i, new String(this.text.getBuffer(), length, this.text.length() - length));
        commonToken.setLine(line);
        commonToken.setColumn(column);
        this._returnToken = commonToken;
    }

    protected final void mNESTED_ACTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match('{');
        while (LA(1) != '}') {
            if ((LA(1) == '\n' || LA(1) == '\r') && LA(2) >= 3 && LA(2) <= 255) {
                if (LA(1) == '\r' && LA(2) == '\n') {
                    match('\r');
                    match('\n');
                    newline();
                } else if (LA(1) == '\r' && LA(2) >= 3 && LA(2) <= 255) {
                    match('\r');
                    newline();
                } else if (LA(1) == '\n') {
                    match('\n');
                    newline();
                } else {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
            } else if (LA(1) == '{' && LA(2) >= 3 && LA(2) <= 255) {
                mNESTED_ACTION(false);
            } else if (LA(1) == '\'' && _tokenSet_4.member(LA(2))) {
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
            token = makeToken(60);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mTOKEN_REF(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange('A', 'Z');
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
                                    default:
                                        int testLiteralsTable = testLiteralsTable(24);
                                        if (!z || testLiteralsTable == -1) {
                                            token = null;
                                        } else {
                                            token = makeToken(testLiteralsTable);
                                            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
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
                                        matchRange('a', 'z');
                                        continue;
                                        continue;
                                }
                        }
                }
            }
        }
    }

    public final void mRULE_REF(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int mINTERNAL_RULE_REF = mINTERNAL_RULE_REF(false);
        if (mINTERNAL_RULE_REF == 51) {
            mWS_LOOP(false);
            if (LA(1) == '{') {
                match('{');
                mINTERNAL_RULE_REF = 14;
            }
        } else if (mINTERNAL_RULE_REF == 4) {
            mWS_LOOP(false);
            if (LA(1) == '{') {
                match('{');
                mINTERNAL_RULE_REF = 23;
            }
        }
        if (!z || mINTERNAL_RULE_REF == -1) {
            token = null;
        } else {
            token = makeToken(mINTERNAL_RULE_REF);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        }
        this._returnToken = token;
    }

    protected final int mINTERNAL_RULE_REF(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange('a', 'z');
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
                                    default:
                                        int testLiteralsTable = testLiteralsTable(28);
                                        if (z) {
                                            token = makeToken(62);
                                            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
                                        } else {
                                            token = null;
                                        }
                                        this._returnToken = token;
                                        return testLiteralsTable;
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
                                        continue;
                                }
                        }
                }
            }
        }
    }

    protected final void mWS_LOOP(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        while (true) {
            char LA = LA(1);
            if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
                mWS(false);
            } else if (LA != '/') {
                break;
            } else {
                mCOMMENT(false);
            }
        }
        if (z) {
            token = makeToken(61);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mWS_OPT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (_tokenSet_5.member(LA(1))) {
            mWS(false);
        }
        if (z) {
            token = makeToken(63);
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
        jArr[0] = -549755813896L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_2() {
        long[] jArr = new long[8];
        jArr[0] = -17179869192L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_3() {
        long[] jArr = new long[8];
        jArr[0] = -566935692296L;
        jArr[1] = -671088641;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_4() {
        long[] jArr = new long[8];
        jArr[0] = -549755813896L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_5() {
        return new long[]{4294977024L, 0, 0, 0, 0};
    }
}
