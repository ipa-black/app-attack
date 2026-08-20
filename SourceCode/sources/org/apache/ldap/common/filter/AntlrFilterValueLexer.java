package org.apache.ldap.common.filter;

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
import antlr.collections.impl.BitSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import java.io.InputStream;
import java.io.Reader;
import java.util.Hashtable;
/* loaded from: classes3.dex */
public class AntlrFilterValueLexer extends CharScanner implements FilterValueLexerTokenTypes, TokenStream {
    public static final String SELECTOR_KEY = "filterValueLexer";
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
    public static final BitSet _tokenSet_3 = new BitSet(mk_tokenSet_3());

    public AntlrFilterValueLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public AntlrFilterValueLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public AntlrFilterValueLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public AntlrFilterValueLexer(LexerSharedInputState lexerSharedInputState) {
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
                    switch (LA(1)) {
                        case '(':
                            mLPAREN(true);
                            Token token = this._returnToken;
                            break;
                        case ')':
                            mRPAREN(true);
                            Token token2 = this._returnToken;
                            break;
                        case '*':
                            mASTERISK(true);
                            Token token3 = this._returnToken;
                            break;
                        default:
                            if (_tokenSet_0.member(LA(1))) {
                                mVALUEENCODING(true);
                                Token token4 = this._returnToken;
                                break;
                            } else if (LA(1) == 65535) {
                                uponEOF();
                                this._returnToken = makeToken(1);
                                break;
                            } else {
                                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                            }
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
            token = makeToken(4);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mHEXDIG(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
            token = makeToken(5);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    public final void mVALUEENCODING(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int i = 0;
        while (true) {
            if (_tokenSet_1.member(LA(1))) {
                mNORMAL(false);
            } else if (LA(1) != '\\') {
                break;
            } else {
                mESCAPED(false);
            }
            i++;
        }
        if (i < 1) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(6);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mNORMAL(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (_tokenSet_2.member(LA(1))) {
            mUTF1SUBSET(false);
        } else if (_tokenSet_3.member(LA(1))) {
            mUTFMB(false);
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(7);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mESCAPED(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mESC(false);
        mHEXDIG(false);
        mHEXDIG(false);
        if (z) {
            token = makeToken(8);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mUTF1SUBSET(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match(_tokenSet_2);
        if (z) {
            token = makeToken(9);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mUTFMB(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        switch (LA) {
            case 548:
            case 549:
            case 550:
            case 551:
            case 552:
            case 553:
            case RtspMessageChannel.DEFAULT_RTSP_PORT /* 554 */:
            case 555:
            case 556:
            case 557:
            case 558:
            case 559:
            case 560:
            case 561:
            case TTAdConstant.STYLE_SIZE_RADIO_9_16 /* 562 */:
            case 563:
            case 564:
            case 565:
            case 566:
            case 567:
            case 568:
            case 569:
                mUTF3(false);
                break;
            default:
                switch (LA) {
                    case 576:
                    case 577:
                    case 578:
                    case 579:
                    case 580:
                        mUTF4(false);
                        break;
                    default:
                        if (LA(1) >= 404 && LA(1) <= 547) {
                            mUTF2(false);
                            break;
                        } else {
                            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                        }
                }
        }
        if (z) {
            token = makeToken(20);
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
        if (z) {
            token = makeToken(18);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mEXCLAMATION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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

    protected final void mAMPERSAND(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("&");
        if (z) {
            token = makeToken(11);
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

    protected final void mCOLON(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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

    protected final void mVERTBAR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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

    protected final void mUTF8(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (LA(1) >= 0 && LA(1) <= 295) {
            mUTF1(false);
        } else if (_tokenSet_3.member(LA(1))) {
            mUTFMB(false);
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(19);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mUTF1(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange((char) 0, (char) 295);
        if (z) {
            token = makeToken(22);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mUTF2(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange((char) 404, (char) 547);
        mUTF0(false);
        if (z) {
            token = makeToken(23);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mUTF3(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        switch (LA(1)) {
            case 548:
                match((char) 548);
                matchRange((char) 352, (char) 401);
                mUTF0(false);
                break;
            case 549:
            case 550:
            case 551:
            case 552:
            case 553:
            case RtspMessageChannel.DEFAULT_RTSP_PORT /* 554 */:
            case 555:
            case 556:
            case 557:
            case 558:
            case 559:
            case 560:
            case 561:
            case TTAdConstant.STYLE_SIZE_RADIO_9_16 /* 562 */:
            case 563:
            case 564:
            case 565:
            case 566:
                matchRange((char) 549, (char) 566);
                mUTF0(false);
                mUTF0(false);
                break;
            case 567:
                match((char) 567);
                matchRange((char) 296, (char) 345);
                mUTF0(false);
                break;
            case 568:
            case 569:
                matchRange((char) 568, (char) 569);
                mUTF0(false);
                mUTF0(false);
                break;
            default:
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(24);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mUTF4(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        switch (LA(1)) {
            case 576:
                match((char) 576);
                matchRange((char) 324, (char) 401);
                mUTF0(false);
                mUTF0(false);
                break;
            case 577:
            case 578:
            case 579:
                matchRange((char) 577, (char) 579);
                mUTF0(false);
                mUTF0(false);
                mUTF0(false);
                break;
            case 580:
                match((char) 580);
                matchRange((char) 296, (char) 323);
                mUTF0(false);
                mUTF0(false);
                break;
            default:
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(25);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mUTF0(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        matchRange((char) 296, (char) 401);
        if (z) {
            token = makeToken(21);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    private static final long[] mk_tokenSet_0() {
        long[] jArr = new long[2048];
        jArr[0] = -7696581394434L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        jArr[4] = 1099511627775L;
        jArr[6] = -1048576;
        jArr[7] = -1;
        jArr[8] = 288230376151711743L;
        jArr[9] = 31;
        return jArr;
    }

    private static final long[] mk_tokenSet_1() {
        long[] jArr = new long[2048];
        jArr[0] = -7696581394434L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        jArr[4] = 1099511627775L;
        jArr[6] = -1048576;
        jArr[7] = -1;
        jArr[8] = 288230376151711743L;
        jArr[9] = 31;
        return jArr;
    }

    private static final long[] mk_tokenSet_2() {
        long[] jArr = new long[2048];
        jArr[0] = -7696581394434L;
        jArr[1] = -268435457;
        for (int i = 2; i <= 3; i++) {
            jArr[i] = -1;
        }
        jArr[4] = 1099511627775L;
        return jArr;
    }

    private static final long[] mk_tokenSet_3() {
        long[] jArr = new long[1025];
        jArr[6] = -1048576;
        jArr[7] = -1;
        jArr[8] = 288230376151711743L;
        jArr[9] = 31;
        return jArr;
    }
}
