package antlr.actions.cpp;

import antlr.ActionTransInfo;
import antlr.ByteBuffer;
import antlr.CharBuffer;
import antlr.CharScanner;
import antlr.CharStreamException;
import antlr.CharStreamIOException;
import antlr.CodeGenerator;
import antlr.InputBuffer;
import antlr.LexerSharedInputState;
import antlr.NoViableAltForCharException;
import antlr.RecognitionException;
import antlr.RuleBlock;
import antlr.Token;
import antlr.TokenStream;
import antlr.TokenStreamException;
import antlr.TokenStreamIOException;
import antlr.TokenStreamRecognitionException;
import antlr.Tool;
import antlr.collections.impl.BitSet;
import antlr.collections.impl.Vector;
import com.google.firebase.messaging.Constants;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.util.Hashtable;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public class ActionLexer extends CharScanner implements ActionLexerTokenTypes, TokenStream {
    private Tool antlrTool;
    protected RuleBlock currentRule;
    protected CodeGenerator generator;
    protected int lineOffset;
    ActionTransInfo transInfo;
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
    public static final BitSet _tokenSet_11 = new BitSet(mk_tokenSet_11());
    public static final BitSet _tokenSet_12 = new BitSet(mk_tokenSet_12());
    public static final BitSet _tokenSet_13 = new BitSet(mk_tokenSet_13());
    public static final BitSet _tokenSet_14 = new BitSet(mk_tokenSet_14());
    public static final BitSet _tokenSet_15 = new BitSet(mk_tokenSet_15());
    public static final BitSet _tokenSet_16 = new BitSet(mk_tokenSet_16());
    public static final BitSet _tokenSet_17 = new BitSet(mk_tokenSet_17());
    public static final BitSet _tokenSet_18 = new BitSet(mk_tokenSet_18());
    public static final BitSet _tokenSet_19 = new BitSet(mk_tokenSet_19());
    public static final BitSet _tokenSet_20 = new BitSet(mk_tokenSet_20());
    public static final BitSet _tokenSet_21 = new BitSet(mk_tokenSet_21());
    public static final BitSet _tokenSet_22 = new BitSet(mk_tokenSet_22());
    public static final BitSet _tokenSet_23 = new BitSet(mk_tokenSet_23());
    public static final BitSet _tokenSet_24 = new BitSet(mk_tokenSet_24());
    public static final BitSet _tokenSet_25 = new BitSet(mk_tokenSet_25());
    public static final BitSet _tokenSet_26 = new BitSet(mk_tokenSet_26());

    public ActionLexer(String str, RuleBlock ruleBlock, CodeGenerator codeGenerator, ActionTransInfo actionTransInfo) {
        this(new StringReader(str));
        this.currentRule = ruleBlock;
        this.generator = codeGenerator;
        this.transInfo = actionTransInfo;
    }

    public void setLineOffset(int i) {
        setLine(i);
    }

    public void setTool(Tool tool) {
        this.antlrTool = tool;
    }

    @Override // antlr.CharScanner
    public void reportError(RecognitionException recognitionException) {
        this.antlrTool.error(new StringBuffer("Syntax error in action: ").append(recognitionException).toString(), getFilename(), getLine(), getColumn());
    }

    @Override // antlr.CharScanner
    public void reportError(String str) {
        this.antlrTool.error(str, getFilename(), getLine(), getColumn());
    }

    @Override // antlr.CharScanner
    public void reportWarning(String str) {
        if (getFilename() == null) {
            this.antlrTool.warning(str);
        } else {
            this.antlrTool.warning(str, getFilename(), getLine(), getColumn());
        }
    }

    public ActionLexer(InputStream inputStream) {
        this(new ByteBuffer(inputStream));
    }

    public ActionLexer(Reader reader) {
        this(new CharBuffer(reader));
    }

    public ActionLexer(InputBuffer inputBuffer) {
        this(new LexerSharedInputState(inputBuffer));
    }

    public ActionLexer(LexerSharedInputState lexerSharedInputState) {
        super(lexerSharedInputState);
        this.lineOffset = 0;
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
                    if (LA(1) >= 3 && LA(1) <= 255) {
                        mACTION(true);
                        Token token = this._returnToken;
                    } else if (LA(1) != 65535) {
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                    } else {
                        uponEOF();
                        this._returnToken = makeToken(1);
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

    public final void mACTION(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int i = 0;
        while (true) {
            char LA = LA(1);
            if (LA == '#') {
                mAST_ITEM(false);
            } else if (LA == '$') {
                mTEXT_ITEM(false);
            } else if (!_tokenSet_0.member(LA(1))) {
                break;
            } else {
                mSTUFF(false);
            }
            i++;
        }
        if (i < 1) {
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

    protected final void mSTUFF(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        if (LA == '\n') {
            match('\n');
            newline();
        } else if (LA == '\"') {
            mSTRING(false);
        } else if (LA == '\'') {
            mCHAR(false);
        } else if (LA(1) == '/' && (LA(2) == '*' || LA(2) == '/')) {
            mCOMMENT(false);
        } else if (LA(1) == '\r' && LA(2) == '\n') {
            match("\r\n");
            newline();
        } else if (LA(1) == '\\' && LA(2) == '#') {
            match('\\');
            match('#');
            this.text.setLength(length);
            this.text.append("#");
        } else {
            if (LA(1) == '/') {
                BitSet bitSet = _tokenSet_1;
                if (bitSet.member(LA(2))) {
                    match('/');
                    match(bitSet);
                }
            }
            if (LA(1) == '\r') {
                match('\r');
                newline();
            } else {
                BitSet bitSet2 = _tokenSet_2;
                if (bitSet2.member(LA(1))) {
                    match(bitSet2);
                } else {
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

    protected final void mAST_ITEM(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (LA(1) == '#' && LA(2) == '(') {
            int length2 = this.text.length();
            match('#');
            this.text.setLength(length2);
            mTREE(true);
            Token token2 = this._returnToken;
        } else if (LA(1) == '#' && _tokenSet_3.member(LA(2))) {
            int length3 = this.text.length();
            match('#');
            this.text.setLength(length3);
            char LA = LA(1);
            if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
                mWS(false);
            } else if (LA != ':' && LA != '_') {
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
            }
            mID(true);
            Token token3 = this._returnToken;
            String text = token3.getText();
            String mapTreeId = this.generator.mapTreeId(token3.getText(), this.transInfo);
            if (mapTreeId != null && !text.equals(mapTreeId)) {
                this.text.setLength(length);
                this.text.append(mapTreeId);
            } else if (text.equals("if") || text.equals("define") || text.equals("ifdef") || text.equals("ifndef") || text.equals("else") || text.equals("elif") || text.equals("endif") || text.equals("warning") || text.equals(Constants.IPC_BUNDLE_KEY_SEND_ERROR) || text.equals("ident") || text.equals("pragma") || text.equals("include")) {
                this.text.setLength(length);
                this.text.append(new StringBuffer("#").append(text).toString());
            }
            if (_tokenSet_4.member(LA(1))) {
                mWS(false);
            }
            if (LA(1) == '=') {
                mVAR_ASSIGN(false);
            }
        } else if (LA(1) == '#' && LA(2) == '[') {
            int length4 = this.text.length();
            match('#');
            this.text.setLength(length4);
            mAST_CONSTRUCTOR(true);
            Token token4 = this._returnToken;
        } else if (LA(1) == '#' && LA(2) == '#') {
            match("##");
            if (this.currentRule != null) {
                String stringBuffer = new StringBuffer().append(this.currentRule.getRuleName()).append("_AST").toString();
                this.text.setLength(length);
                this.text.append(stringBuffer);
                ActionTransInfo actionTransInfo = this.transInfo;
                if (actionTransInfo != null) {
                    actionTransInfo.refRuleRoot = stringBuffer;
                }
            } else {
                reportWarning("\"##\" not valid in this context");
                this.text.setLength(length);
                this.text.append("##");
            }
            if (_tokenSet_4.member(LA(1))) {
                mWS(false);
            }
            if (LA(1) == '=') {
                mVAR_ASSIGN(false);
            }
        } else {
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

    protected final void mTEXT_ITEM(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        Token token2 = null;
        if (LA(1) == '$' && LA(2) == 'a') {
            match("$append");
            char LA = LA(1);
            if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
                mWS(false);
            } else if (LA != '(') {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            match('(');
            mTEXT_ARG(true);
            Token token3 = this._returnToken;
            match(')');
            String stringBuffer = new StringBuffer("text += ").append(token3.getText()).toString();
            this.text.setLength(length);
            this.text.append(stringBuffer);
        } else if (LA(1) == '$' && LA(2) == 's') {
            match("$set");
            if (LA(1) == 'T' && LA(2) == 'e') {
                match("Text");
                char LA2 = LA(1);
                if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
                    mWS(false);
                } else if (LA2 != '(') {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
                match('(');
                mTEXT_ARG(true);
                Token token4 = this._returnToken;
                match(')');
                String stringBuffer2 = new StringBuffer("{ text.erase(_begin); text += ").append(token4.getText()).append("; }").toString();
                this.text.setLength(length);
                this.text.append(stringBuffer2);
            } else if (LA(1) == 'T' && LA(2) == 'o') {
                match("Token");
                char LA3 = LA(1);
                if (LA3 == '\t' || LA3 == '\n' || LA3 == '\r' || LA3 == ' ') {
                    mWS(false);
                } else if (LA3 != '(') {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
                match('(');
                mTEXT_ARG(true);
                Token token5 = this._returnToken;
                match(')');
                String stringBuffer3 = new StringBuffer("_token = ").append(token5.getText()).toString();
                this.text.setLength(length);
                this.text.append(stringBuffer3);
            } else if (LA(1) == 'T' && LA(2) == 'y') {
                match("Type");
                char LA4 = LA(1);
                if (LA4 == '\t' || LA4 == '\n' || LA4 == '\r' || LA4 == ' ') {
                    mWS(false);
                } else if (LA4 != '(') {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
                match('(');
                mTEXT_ARG(true);
                Token token6 = this._returnToken;
                match(')');
                String stringBuffer4 = new StringBuffer("_ttype = ").append(token6.getText()).toString();
                this.text.setLength(length);
                this.text.append(stringBuffer4);
            } else {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        } else if (LA(1) == '$' && LA(2) == 'g') {
            match("$getText");
            this.text.setLength(length);
            this.text.append("text.substr(_begin,text.length()-_begin)");
        } else if (LA(1) == '$' && LA(2) == 'F') {
            match("$FOLLOW");
            if (_tokenSet_5.member(LA(1)) && _tokenSet_6.member(LA(2))) {
                char LA5 = LA(1);
                if (LA5 == '\t' || LA5 == '\n' || LA5 == '\r' || LA5 == ' ') {
                    mWS(false);
                } else if (LA5 != '(') {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
                match('(');
                mTEXT_ARG(true);
                token = this._returnToken;
                match(')');
            } else {
                token = null;
            }
            String ruleName = this.currentRule.getRuleName();
            if (token != null) {
                ruleName = token.getText();
            }
            String fOLLOWBitSet = this.generator.getFOLLOWBitSet(ruleName, 1);
            if (fOLLOWBitSet == null) {
                reportError(new StringBuffer("$FOLLOW(").append(ruleName).append("): unknown rule or bad lookahead computation").toString());
            } else {
                this.text.setLength(length);
                this.text.append(fOLLOWBitSet);
            }
        } else if (LA(1) == '$' && LA(2) == 'F') {
            match("$FIRST");
            if (_tokenSet_5.member(LA(1)) && _tokenSet_6.member(LA(2))) {
                char LA6 = LA(1);
                if (LA6 == '\t' || LA6 == '\n' || LA6 == '\r' || LA6 == ' ') {
                    mWS(false);
                } else if (LA6 != '(') {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
                match('(');
                mTEXT_ARG(true);
                Token token7 = this._returnToken;
                match(')');
            }
            String ruleName2 = this.currentRule.getRuleName();
            String fIRSTBitSet = this.generator.getFIRSTBitSet(ruleName2, 1);
            if (fIRSTBitSet == null) {
                reportError(new StringBuffer("$FIRST(").append(ruleName2).append("): unknown rule or bad lookahead computation").toString());
            } else {
                this.text.setLength(length);
                this.text.append(fIRSTBitSet);
            }
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token2 = makeToken(7);
            token2.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        }
        this._returnToken = token2;
    }

    protected final void mCOMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (LA(1) == '/' && LA(2) == '/') {
            mSL_COMMENT(false);
        } else if (LA(1) == '/' && LA(2) == '*') {
            mML_COMMENT(false);
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

    protected final void mSTRING(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
            token = makeToken(23);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mCHAR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
            token = makeToken(22);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mTREE(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        Vector vector = new Vector(10);
        int length2 = this.text.length();
        char c2 = '(';
        match('(');
        this.text.setLength(length2);
        char LA = LA(1);
        if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
            int length3 = this.text.length();
            mWS(false);
            this.text.setLength(length3);
        } else if (LA != '(' && LA != ':' && LA != '_' && LA != '\"' && LA != '#') {
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
                case '[':
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
        }
        int length4 = this.text.length();
        mTREE_ELEMENT(true);
        this.text.setLength(length4);
        vector.appendElement(this.generator.processStringForASTConstructor(this._returnToken.getText()));
        char LA2 = LA(1);
        if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
            int length5 = this.text.length();
            mWS(false);
            this.text.setLength(length5);
        } else if (LA2 != ')' && LA2 != ',') {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        while (LA(1) == ',') {
            int length6 = this.text.length();
            match(',');
            this.text.setLength(length6);
            char LA3 = LA(1);
            if (LA3 == '\t' || LA3 == '\n' || LA3 == '\r' || LA3 == ' ') {
                int length7 = this.text.length();
                mWS(false);
                this.text.setLength(length7);
            } else if (LA3 != c2 && LA3 != ':' && LA3 != '_' && LA3 != '\"') {
                if (LA3 != '#') {
                    switch (LA3) {
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
                        case '[':
                            break;
                        default:
                            switch (LA3) {
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
                }
            }
            int length8 = this.text.length();
            mTREE_ELEMENT(true);
            this.text.setLength(length8);
            vector.appendElement(this.generator.processStringForASTConstructor(this._returnToken.getText()));
            char LA4 = LA(1);
            if (LA4 == '\t' || LA4 == '\n' || LA4 == '\r' || LA4 == ' ') {
                int length9 = this.text.length();
                mWS(false);
                this.text.setLength(length9);
            } else if (LA4 != ')' && LA4 != ',') {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            c2 = '(';
        }
        this.text.setLength(length);
        this.text.append(this.generator.getASTCreateString(vector));
        int length10 = this.text.length();
        match(')');
        this.text.setLength(length10);
        if (z) {
            token = makeToken(8);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mWS(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int i = 0;
        while (true) {
            if (LA(1) == '\r' && LA(2) == '\n') {
                match('\r');
                match('\n');
                newline();
            } else if (LA(1) == ' ') {
                match(' ');
            } else if (LA(1) == '\t') {
                match('\t');
            } else if (LA(1) == '\r') {
                match('\r');
                newline();
            } else if (LA(1) != '\n') {
                break;
            } else {
                match('\n');
                newline();
            }
            i++;
        }
        if (i < 1) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(28);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mID(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        if (LA == ':') {
            match("::");
        } else if (LA != '_') {
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
        } else {
            match('_');
        }
        while (_tokenSet_9.member(LA(1))) {
            char LA2 = LA(1);
            if (LA2 != '_') {
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
                    case ':':
                        match("::");
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
                                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                                }
                        }
                }
            } else {
                match('_');
            }
        }
        if (z) {
            token = makeToken(17);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mVAR_ASSIGN(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        ActionTransInfo actionTransInfo;
        int length = this.text.length();
        match('=');
        if (LA(1) != '=' && (actionTransInfo = this.transInfo) != null && actionTransInfo.refRuleRoot != null) {
            this.transInfo.assignToRoot = true;
        }
        if (z) {
            token = makeToken(18);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mAST_CONSTRUCTOR(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        int length2 = this.text.length();
        match('[');
        this.text.setLength(length2);
        char LA = LA(1);
        if (LA == '\t' || LA == '\n' || LA == '\r' || LA == ' ') {
            int length3 = this.text.length();
            mWS(false);
            this.text.setLength(length3);
        } else if (LA != '(' && LA != '_' && LA != '\"' && LA != '#') {
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
                case ':':
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
                        case '[':
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
            }
        }
        int length4 = this.text.length();
        mAST_CTOR_ELEMENT(true);
        this.text.setLength(length4);
        Token token2 = this._returnToken;
        char LA2 = LA(1);
        if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
            int length5 = this.text.length();
            mWS(false);
            this.text.setLength(length5);
        } else if (LA2 != ',' && LA2 != ']') {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        char LA3 = LA(1);
        Token token3 = null;
        if (LA3 == ',') {
            int length6 = this.text.length();
            match(',');
            this.text.setLength(length6);
            char LA4 = LA(1);
            if (LA4 == '\t' || LA4 == '\n' || LA4 == '\r' || LA4 == ' ') {
                int length7 = this.text.length();
                mWS(false);
                this.text.setLength(length7);
            } else if (LA4 != '(' && LA4 != '_' && LA4 != '\"' && LA4 != '#') {
                switch (LA4) {
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
                    case ':':
                        break;
                    default:
                        switch (LA4) {
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
                            case '[':
                                break;
                            default:
                                switch (LA4) {
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
                }
            }
            int length8 = this.text.length();
            mAST_CTOR_ELEMENT(true);
            this.text.setLength(length8);
            token = this._returnToken;
            char LA5 = LA(1);
            if (LA5 == '\t' || LA5 == '\n' || LA5 == '\r' || LA5 == ' ') {
                int length9 = this.text.length();
                mWS(false);
                this.text.setLength(length9);
            } else if (LA5 != ']') {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        } else if (LA3 != ']') {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        } else {
            token = null;
        }
        int length10 = this.text.length();
        match(']');
        this.text.setLength(length10);
        String processStringForASTConstructor = this.generator.processStringForASTConstructor(token2.getText());
        if (token != null) {
            processStringForASTConstructor = new StringBuffer().append(processStringForASTConstructor).append(",").append(token.getText()).toString();
        }
        this.text.setLength(length);
        this.text.append(this.generator.getASTCreateString(null, processStringForASTConstructor));
        if (z) {
            token3 = makeToken(10);
            token3.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        }
        this._returnToken = token3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b5, code lost:
        if (r9 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b7, code lost:
        r9 = makeToken(13);
        r9.setText(new java.lang.String(r8.text.getBuffer(), r0, r8.text.length() - r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d1, code lost:
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d2, code lost:
        r8._returnToken = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d4, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mTEXT_ARG(boolean r9) throws antlr.RecognitionException, antlr.CharStreamException, antlr.TokenStreamException {
        /*
            r8 = this;
            antlr.ANTLRStringBuffer r0 = r8.text
            int r0 = r0.length()
            r1 = 1
            char r2 = r8.LA(r1)
            r3 = 9
            r4 = 0
            r5 = 13
            if (r2 == r3) goto L4f
            r3 = 10
            if (r2 == r3) goto L4f
            if (r2 == r5) goto L4f
            r3 = 32
            if (r2 == r3) goto L4f
            r3 = 34
            if (r2 == r3) goto L52
            r3 = 36
            if (r2 == r3) goto L52
            r3 = 39
            if (r2 == r3) goto L52
            r3 = 43
            if (r2 == r3) goto L52
            r3 = 95
            if (r2 == r3) goto L52
            switch(r2) {
                case 48: goto L52;
                case 49: goto L52;
                case 50: goto L52;
                case 51: goto L52;
                case 52: goto L52;
                case 53: goto L52;
                case 54: goto L52;
                case 55: goto L52;
                case 56: goto L52;
                case 57: goto L52;
                case 58: goto L52;
                default: goto L33;
            }
        L33:
            switch(r2) {
                case 65: goto L52;
                case 66: goto L52;
                case 67: goto L52;
                case 68: goto L52;
                case 69: goto L52;
                case 70: goto L52;
                case 71: goto L52;
                case 72: goto L52;
                case 73: goto L52;
                case 74: goto L52;
                case 75: goto L52;
                case 76: goto L52;
                case 77: goto L52;
                case 78: goto L52;
                case 79: goto L52;
                case 80: goto L52;
                case 81: goto L52;
                case 82: goto L52;
                case 83: goto L52;
                case 84: goto L52;
                case 85: goto L52;
                case 86: goto L52;
                case 87: goto L52;
                case 88: goto L52;
                case 89: goto L52;
                case 90: goto L52;
                default: goto L36;
            }
        L36:
            switch(r2) {
                case 97: goto L52;
                case 98: goto L52;
                case 99: goto L52;
                case 100: goto L52;
                case 101: goto L52;
                case 102: goto L52;
                case 103: goto L52;
                case 104: goto L52;
                case 105: goto L52;
                case 106: goto L52;
                case 107: goto L52;
                case 108: goto L52;
                case 109: goto L52;
                case 110: goto L52;
                case 111: goto L52;
                case 112: goto L52;
                case 113: goto L52;
                case 114: goto L52;
                case 115: goto L52;
                case 116: goto L52;
                case 117: goto L52;
                case 118: goto L52;
                case 119: goto L52;
                case 120: goto L52;
                case 121: goto L52;
                case 122: goto L52;
                default: goto L39;
            }
        L39:
            antlr.NoViableAltForCharException r9 = new antlr.NoViableAltForCharException
            char r0 = r8.LA(r1)
            java.lang.String r1 = r8.getFilename()
            int r2 = r8.getLine()
            int r3 = r8.getColumn()
            r9.<init>(r0, r1, r2, r3)
            throw r9
        L4f:
            r8.mWS(r4)
        L52:
            r2 = r4
        L53:
            antlr.collections.impl.BitSet r3 = antlr.actions.cpp.ActionLexer._tokenSet_10
            char r6 = r8.LA(r1)
            boolean r3 = r3.member(r6)
            if (r3 == 0) goto Lb3
            r3 = 2
            char r6 = r8.LA(r3)
            r7 = 3
            if (r6 < r7) goto Lb3
            char r6 = r8.LA(r3)
            r7 = 255(0xff, float:3.57E-43)
            if (r6 > r7) goto Lb3
            r8.mTEXT_ARG_ELEMENT(r4)
            antlr.collections.impl.BitSet r6 = antlr.actions.cpp.ActionLexer._tokenSet_4
            char r7 = r8.LA(r1)
            boolean r6 = r6.member(r7)
            if (r6 == 0) goto L8e
            antlr.collections.impl.BitSet r6 = antlr.actions.cpp.ActionLexer._tokenSet_11
            char r3 = r8.LA(r3)
            boolean r3 = r6.member(r3)
            if (r3 == 0) goto L8e
            r8.mWS(r4)
            goto L9a
        L8e:
            antlr.collections.impl.BitSet r3 = antlr.actions.cpp.ActionLexer._tokenSet_11
            char r6 = r8.LA(r1)
            boolean r3 = r3.member(r6)
            if (r3 == 0) goto L9d
        L9a:
            int r2 = r2 + 1
            goto L53
        L9d:
            antlr.NoViableAltForCharException r9 = new antlr.NoViableAltForCharException
            char r0 = r8.LA(r1)
            java.lang.String r1 = r8.getFilename()
            int r2 = r8.getLine()
            int r3 = r8.getColumn()
            r9.<init>(r0, r1, r2, r3)
            throw r9
        Lb3:
            if (r2 < r1) goto Ld5
            if (r9 == 0) goto Ld1
            antlr.Token r9 = r8.makeToken(r5)
            java.lang.String r1 = new java.lang.String
            antlr.ANTLRStringBuffer r2 = r8.text
            char[] r2 = r2.getBuffer()
            antlr.ANTLRStringBuffer r3 = r8.text
            int r3 = r3.length()
            int r3 = r3 - r0
            r1.<init>(r2, r0, r3)
            r9.setText(r1)
            goto Ld2
        Ld1:
            r9 = 0
        Ld2:
            r8._returnToken = r9
            return
        Ld5:
            antlr.NoViableAltForCharException r9 = new antlr.NoViableAltForCharException
            char r0 = r8.LA(r1)
            java.lang.String r1 = r8.getFilename()
            int r2 = r8.getLine()
            int r3 = r8.getColumn()
            r9.<init>(r0, r1, r2, r3)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.actions.cpp.ActionLexer.mTEXT_ARG(boolean):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected final void mTREE_ELEMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        String mapTreeId;
        int length = this.text.length();
        char LA = LA(1);
        Token token = null;
        if (LA == '\"') {
            mSTRING(false);
        } else if (LA == '(') {
            mTREE(false);
        } else {
            if (LA != ':' && LA != '_') {
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
                    case '[':
                        mAST_CONSTRUCTOR(false);
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
                                if (LA(1) == '#' && LA(2) == '(') {
                                    int length2 = this.text.length();
                                    match('#');
                                    this.text.setLength(length2);
                                    mTREE(false);
                                    break;
                                } else if (LA(1) == '#' && LA(2) == '[') {
                                    int length3 = this.text.length();
                                    match('#');
                                    this.text.setLength(length3);
                                    mAST_CONSTRUCTOR(false);
                                    break;
                                } else if (LA(1) == '#' && _tokenSet_12.member(LA(2))) {
                                    int length4 = this.text.length();
                                    match('#');
                                    this.text.setLength(length4);
                                    boolean mID_ELEMENT = mID_ELEMENT(true);
                                    Token token2 = this._returnToken;
                                    if (!mID_ELEMENT && (mapTreeId = this.generator.mapTreeId(token2.getText(), null)) != null) {
                                        this.text.setLength(length);
                                        this.text.append(mapTreeId);
                                        break;
                                    }
                                } else if (LA(1) == '#' && LA(2) == '#') {
                                    match("##");
                                    if (this.currentRule != null) {
                                        String stringBuffer = new StringBuffer().append(this.currentRule.getRuleName()).append("_AST").toString();
                                        this.text.setLength(length);
                                        this.text.append(stringBuffer);
                                        break;
                                    } else {
                                        reportError("\"##\" not valid in this context");
                                        this.text.setLength(length);
                                        this.text.append("##");
                                        break;
                                    }
                                } else {
                                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                                }
                                break;
                        }
                }
            }
            mID_ELEMENT(false);
        }
        if (z) {
            token = makeToken(9);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        }
        this._returnToken = token;
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x035f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean mID_ELEMENT(boolean r17) throws antlr.RecognitionException, antlr.CharStreamException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 1342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.actions.cpp.ActionLexer.mID_ELEMENT(boolean):boolean");
    }

    protected final void mAST_CTOR_ELEMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        if (LA(1) == '\"' && LA(2) >= 3 && LA(2) <= 255) {
            mSTRING(false);
        } else if (_tokenSet_19.member(LA(1)) && LA(2) >= 3 && LA(2) <= 255) {
            mTREE_ELEMENT(false);
        } else if (LA(1) >= '0' && LA(1) <= '9') {
            mINT(false);
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(11);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mINT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
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
            token = makeToken(26);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mARG(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        if (LA == '\'') {
            mCHAR(false);
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
                    mINT_OR_FLOAT(false);
                    break;
                default:
                    if (_tokenSet_19.member(LA(1)) && LA(2) >= 3 && LA(2) <= 255) {
                        mTREE_ELEMENT(false);
                        break;
                    } else if (LA(1) == '\"' && LA(2) >= 3 && LA(2) <= 255) {
                        mSTRING(false);
                        break;
                    } else {
                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                    }
                    break;
            }
        }
        while (_tokenSet_20.member(LA(1)) && _tokenSet_21.member(LA(2))) {
            char LA2 = LA(1);
            if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
                mWS(false);
            } else if (LA2 != '-' && LA2 != '/' && LA2 != '*' && LA2 != '+') {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            char LA3 = LA(1);
            if (LA3 == '*') {
                match('*');
            } else if (LA3 == '+') {
                match('+');
            } else if (LA3 == '-') {
                match('-');
            } else if (LA3 == '/') {
                match('/');
            } else {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            char LA4 = LA(1);
            if (LA4 == '\t' || LA4 == '\n' || LA4 == '\r' || LA4 == ' ') {
                mWS(false);
            } else if (LA4 != '_' && LA4 != '\"' && LA4 != '#' && LA4 != '\'' && LA4 != '(') {
                switch (LA4) {
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
                    case ':':
                        continue;
                    default:
                        switch (LA4) {
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
                            case '[':
                                continue;
                            default:
                                switch (LA4) {
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
                                        continue;
                                    default:
                                        throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                                }
                        }
                }
            }
            mARG(false);
        }
        if (z) {
            token = makeToken(16);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mTEXT_ARG_ELEMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        char LA = LA(1);
        if (LA == '\"') {
            mSTRING(false);
        } else if (LA == '$') {
            mTEXT_ITEM(false);
        } else if (LA == '\'') {
            mCHAR(false);
        } else if (LA != '+') {
            if (LA != '_') {
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
                        mINT_OR_FLOAT(false);
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
                    case ':':
                        mTEXT_ARG_ID_ELEMENT(false);
                        break;
                }
            }
            mTEXT_ARG_ID_ELEMENT(false);
        } else {
            match('+');
        }
        if (z) {
            token = makeToken(14);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    protected final void mTEXT_ARG_ID_ELEMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        mID(true);
        Token token2 = this._returnToken;
        BitSet bitSet = _tokenSet_4;
        if (bitSet.member(LA(1)) && _tokenSet_22.member(LA(2))) {
            int length2 = this.text.length();
            mWS(false);
            this.text.setLength(length2);
        } else if (!_tokenSet_22.member(LA(1))) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        char LA = LA(1);
        if (LA == '(') {
            match('(');
            if (bitSet.member(LA(1)) && _tokenSet_23.member(LA(2))) {
                int length3 = this.text.length();
                mWS(false);
                this.text.setLength(length3);
            } else if (!_tokenSet_23.member(LA(1)) || LA(2) < 3 || LA(2) > 255) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            while (_tokenSet_24.member(LA(1)) && LA(2) >= 3 && LA(2) <= 255) {
                mTEXT_ARG(false);
                while (LA(1) == ',') {
                    match(',');
                    mTEXT_ARG(false);
                }
            }
            char LA2 = LA(1);
            if (LA2 == '\t' || LA2 == '\n' || LA2 == '\r' || LA2 == ' ') {
                int length4 = this.text.length();
                mWS(false);
                this.text.setLength(length4);
            } else if (LA2 != ')') {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
            match(')');
        } else if (LA == '[') {
            int i = 0;
            while (LA(1) == '[') {
                match('[');
                if (_tokenSet_4.member(LA(1)) && _tokenSet_24.member(LA(2))) {
                    int length5 = this.text.length();
                    mWS(false);
                    this.text.setLength(length5);
                } else if (!_tokenSet_24.member(LA(1)) || LA(2) < 3 || LA(2) > 255) {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
                mTEXT_ARG(false);
                char LA3 = LA(1);
                if (LA3 == '\t' || LA3 == '\n' || LA3 == '\r' || LA3 == ' ') {
                    int length6 = this.text.length();
                    mWS(false);
                    this.text.setLength(length6);
                } else if (LA3 != ']') {
                    throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
                }
                match(']');
                i++;
            }
            if (i < 1) {
                throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
            }
        } else if (LA == '-') {
            match("->");
            mTEXT_ARG_ID_ELEMENT(false);
        } else if (LA == '.') {
            match('.');
            mTEXT_ARG_ID_ELEMENT(false);
        } else if (LA(1) == ':' && LA(2) == ':') {
            match("::");
            mTEXT_ARG_ID_ELEMENT(false);
        } else if (!_tokenSet_11.member(LA(1))) {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        if (z) {
            token = makeToken(15);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (LA(1) != 'L') goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
        if (antlr.actions.cpp.ActionLexer._tokenSet_26.member(LA(2)) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
        match('L');
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        if (LA(1) != 'l') goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
        if (antlr.actions.cpp.ActionLexer._tokenSet_26.member(LA(2)) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        match('l');
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        if (LA(1) != '.') goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
        match('.');
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006d, code lost:
        if (LA(1) < '0') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0073, code lost:
        if (LA(1) > '9') goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007f, code lost:
        if (antlr.actions.cpp.ActionLexer._tokenSet_26.member(LA(2)) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0081, code lost:
        mDIGIT(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008f, code lost:
        if (antlr.actions.cpp.ActionLexer._tokenSet_26.member(LA(1)) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
        if (r10 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
        r10 = makeToken(27);
        r10.setText(new java.lang.String(r9.text.getBuffer(), r0, r9.text.length() - r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00af, code lost:
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b0, code lost:
        r9._returnToken = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b2, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c8, code lost:
        throw new antlr.NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mINT_OR_FLOAT(boolean r10) throws antlr.RecognitionException, antlr.CharStreamException, antlr.TokenStreamException {
        /*
            r9 = this;
            antlr.ANTLRStringBuffer r0 = r9.text
            int r0 = r0.length()
            r1 = 0
            r2 = r1
        L8:
            r3 = 1
            char r4 = r9.LA(r3)
            r5 = 57
            r6 = 48
            r7 = 2
            if (r4 < r6) goto L2c
            char r4 = r9.LA(r3)
            if (r4 > r5) goto L2c
            antlr.collections.impl.BitSet r4 = antlr.actions.cpp.ActionLexer._tokenSet_25
            char r8 = r9.LA(r7)
            boolean r4 = r4.member(r8)
            if (r4 == 0) goto L2c
            r9.mDIGIT(r1)
            int r2 = r2 + 1
            goto L8
        L2c:
            if (r2 < r3) goto Lc9
            char r2 = r9.LA(r3)
            r4 = 76
            if (r2 != r4) goto L46
            antlr.collections.impl.BitSet r2 = antlr.actions.cpp.ActionLexer._tokenSet_26
            char r8 = r9.LA(r7)
            boolean r2 = r2.member(r8)
            if (r2 == 0) goto L46
            r9.match(r4)
            goto L91
        L46:
            char r2 = r9.LA(r3)
            r4 = 108(0x6c, float:1.51E-43)
            if (r2 != r4) goto L5e
            antlr.collections.impl.BitSet r2 = antlr.actions.cpp.ActionLexer._tokenSet_26
            char r8 = r9.LA(r7)
            boolean r2 = r2.member(r8)
            if (r2 == 0) goto L5e
            r9.match(r4)
            goto L91
        L5e:
            char r2 = r9.LA(r3)
            r4 = 46
            if (r2 != r4) goto L85
            r9.match(r4)
        L69:
            char r2 = r9.LA(r3)
            if (r2 < r6) goto L91
            char r2 = r9.LA(r3)
            if (r2 > r5) goto L91
            antlr.collections.impl.BitSet r2 = antlr.actions.cpp.ActionLexer._tokenSet_26
            char r4 = r9.LA(r7)
            boolean r2 = r2.member(r4)
            if (r2 == 0) goto L91
            r9.mDIGIT(r1)
            goto L69
        L85:
            antlr.collections.impl.BitSet r1 = antlr.actions.cpp.ActionLexer._tokenSet_26
            char r2 = r9.LA(r3)
            boolean r1 = r1.member(r2)
            if (r1 == 0) goto Lb3
        L91:
            if (r10 == 0) goto Laf
            r10 = 27
            antlr.Token r10 = r9.makeToken(r10)
            java.lang.String r1 = new java.lang.String
            antlr.ANTLRStringBuffer r2 = r9.text
            char[] r2 = r2.getBuffer()
            antlr.ANTLRStringBuffer r3 = r9.text
            int r3 = r3.length()
            int r3 = r3 - r0
            r1.<init>(r2, r0, r3)
            r10.setText(r1)
            goto Lb0
        Laf:
            r10 = 0
        Lb0:
            r9._returnToken = r10
            return
        Lb3:
            antlr.NoViableAltForCharException r10 = new antlr.NoViableAltForCharException
            char r0 = r9.LA(r3)
            java.lang.String r1 = r9.getFilename()
            int r2 = r9.getLine()
            int r3 = r9.getColumn()
            r10.<init>(r0, r1, r2, r3)
            throw r10
        Lc9:
            antlr.NoViableAltForCharException r10 = new antlr.NoViableAltForCharException
            char r0 = r9.LA(r3)
            java.lang.String r1 = r9.getFilename()
            int r2 = r9.getLine()
            int r3 = r9.getColumn()
            r10.<init>(r0, r1, r2, r3)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.actions.cpp.ActionLexer.mINT_OR_FLOAT(boolean):void");
    }

    protected final void mSL_COMMENT(boolean z) throws RecognitionException, CharStreamException, TokenStreamException {
        Token token;
        int length = this.text.length();
        match("//");
        while (LA(1) != '\n' && LA(1) != '\r' && LA(1) >= 3 && LA(1) <= 255 && LA(2) >= 3 && LA(2) <= 255) {
            matchNot((char) 65535);
        }
        if (LA(1) == '\r' && LA(2) == '\n') {
            match("\r\n");
        } else if (LA(1) == '\n') {
            match('\n');
        } else if (LA(1) == '\r') {
            match('\r');
        } else {
            throw new NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());
        }
        newline();
        if (z) {
            token = makeToken(20);
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
            if (LA(1) == '*' && LA(2) == '/') {
                break;
            } else if (LA(1) == '\r' && LA(2) == '\n') {
                match('\r');
                match('\n');
                newline();
            } else if (LA(1) == '\r' && LA(2) >= 3 && LA(2) <= 255) {
                match('\r');
                newline();
            } else if (LA(1) == '\n' && LA(2) >= 3 && LA(2) <= 255) {
                match('\n');
                newline();
            } else if (LA(1) < 3 || LA(1) > 255 || LA(2) < 3 || LA(2) > 255) {
                break;
            } else {
                matchNot((char) 65535);
            }
        }
        match("*/");
        if (z) {
            token = makeToken(21);
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
        } else {
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
        }
        if (z) {
            token = makeToken(24);
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
            token = makeToken(25);
            token.setText(new String(this.text.getBuffer(), length, this.text.length() - length));
        } else {
            token = null;
        }
        this._returnToken = token;
    }

    private static final long[] mk_tokenSet_0() {
        long[] jArr = new long[8];
        jArr[0] = -103079215112L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_1() {
        long[] jArr = new long[8];
        jArr[0] = -145135534866440L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_2() {
        long[] jArr = new long[8];
        jArr[0] = -141407503262728L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_3() {
        return new long[]{288230380446688768L, 576460745995190270L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_4() {
        return new long[]{4294977024L, 0, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_5() {
        return new long[]{1103806604800L, 0, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_6() {
        return new long[]{576189812881499648L, 576460745995190270L, 0, 0, 0};
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
        return new long[]{576179277326712832L, 576460745995190270L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_10() {
        return new long[]{576188709074894848L, 576460745995190270L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_11() {
        return new long[]{576208504579171840L, 576460746532061182L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_12() {
        return new long[]{288230376151711744L, 576460745995190270L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_13() {
        return new long[]{3747275269732312576L, 671088640, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_14() {
        long[] jArr = new long[8];
        jArr[0] = -4611686018427387912L;
        for (int i = 1; i <= 3; i++) {
            jArr[i] = -1;
        }
        return jArr;
    }

    private static final long[] mk_tokenSet_15() {
        return new long[]{576183181451994624L, 576460746129407998L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_16() {
        return new long[]{2306051920717948416L, 536870912, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_17() {
        return new long[]{2305843013508670976L, 0, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_18() {
        return new long[]{208911504254464L, 536870912, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_19() {
        return new long[]{288231527202947072L, 576460746129407998L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_20() {
        return new long[]{189120294954496L, 0, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_21() {
        return new long[]{576370098428716544L, 576460746129407998L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_22() {
        return new long[]{576315157207066112L, 576460746666278910L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_23() {
        return new long[]{576190912393127424L, 576460745995190270L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_24() {
        return new long[]{576188713369871872L, 576460745995190270L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_25() {
        return new long[]{576459193230304768L, 576460746532061182L, 0, 0, 0};
    }

    private static final long[] mk_tokenSet_26() {
        return new long[]{576388824486127104L, 576460746532061182L, 0, 0, 0};
    }
}
