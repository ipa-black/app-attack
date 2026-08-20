package antlr;

import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class ANTLRParser extends LLkParser implements ANTLRTokenTypes {
    private static final boolean DEBUG_PARSER = false;
    Tool antlrTool;
    ANTLRGrammarParseBehavior behavior;
    protected int blockNesting;
    public static final String[] _tokenNames = {"<0>", "EOF", "<2>", "NULL_TREE_LOOKAHEAD", "\"tokens\"", "\"header\"", "STRING_LITERAL", "ACTION", "DOC_COMMENT", "\"lexclass\"", "\"class\"", "\"extends\"", "\"Lexer\"", "\"TreeParser\"", "OPTIONS", "ASSIGN", "SEMI", "RCURLY", "\"charVocabulary\"", "CHAR_LITERAL", "INT", "OR", "RANGE", "TOKENS", "TOKEN_REF", "OPEN_ELEMENT_OPTION", "CLOSE_ELEMENT_OPTION", "LPAREN", "RULE_REF", "RPAREN", "\"Parser\"", "\"protected\"", "\"public\"", "\"private\"", "BANG", "ARG_ACTION", "\"returns\"", "COLON", "\"throws\"", "COMMA", "\"exception\"", "\"catch\"", "NOT_OP", "SEMPRED", "TREE_BEGIN", "QUESTION", "STAR", "PLUS", "IMPLIES", "CARET", "WILDCARD", "\"options\"", "WS", "COMMENT", "SL_COMMENT", "ML_COMMENT", "ESC", "DIGIT", "XDIGIT", "NESTED_ARG_ACTION", "NESTED_ACTION", "WS_LOOP", "INTERNAL_RULE_REF", "WS_OPT"};
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

    public ANTLRParser(TokenBuffer tokenBuffer, ANTLRGrammarParseBehavior aNTLRGrammarParseBehavior, Tool tool) {
        super(tokenBuffer, 1);
        this.blockNesting = -1;
        this.tokenNames = _tokenNames;
        this.behavior = aNTLRGrammarParseBehavior;
        this.antlrTool = tool;
    }

    @Override // antlr.Parser
    public void reportError(String str) {
        this.antlrTool.error(str, getFilename(), -1, -1);
    }

    @Override // antlr.Parser
    public void reportError(RecognitionException recognitionException) {
        reportError(recognitionException, recognitionException.getErrorMessage());
    }

    public void reportError(RecognitionException recognitionException, String str) {
        this.antlrTool.error(str, recognitionException.getFilename(), recognitionException.getLine(), recognitionException.getColumn());
    }

    @Override // antlr.Parser
    public void reportWarning(String str) {
        this.antlrTool.warning(str, getFilename(), -1, -1);
    }

    private boolean lastInRule() throws TokenStreamException {
        if (this.blockNesting == 0) {
            return LA(1) == 16 || LA(1) == 40 || LA(1) == 21;
        }
        return false;
    }

    private void checkForMissingEndRule(Token token) {
        if (token.getColumn() == 1) {
            this.antlrTool.warning("did you forget to terminate previous rule?", getFilename(), token.getLine(), token.getColumn());
        }
    }

    protected ANTLRParser(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.blockNesting = -1;
        this.tokenNames = _tokenNames;
    }

    public ANTLRParser(TokenBuffer tokenBuffer) {
        this(tokenBuffer, 2);
    }

    protected ANTLRParser(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.blockNesting = -1;
        this.tokenNames = _tokenNames;
    }

    public ANTLRParser(TokenStream tokenStream) {
        this(tokenStream, 2);
    }

    public ANTLRParser(ParserSharedInputState parserSharedInputState) {
        super(parserSharedInputState, 2);
        this.blockNesting = -1;
        this.tokenNames = _tokenNames;
    }

    public final void grammar() throws RecognitionException, TokenStreamException {
        Token token = null;
        while (LA(1) == 5) {
            try {
                if (this.inputState.guessing == 0) {
                    token = null;
                }
                match(5);
                int LA = LA(1);
                if (LA == 6) {
                    token = LT(1);
                    match(6);
                } else if (LA != 7) {
                    throw new NoViableAltException(LT(1), getFilename());
                }
                Token LT = LT(1);
                match(7);
                if (this.inputState.guessing == 0) {
                    this.behavior.refHeaderAction(token, LT);
                }
            } catch (RecognitionException e2) {
                if (this.inputState.guessing == 0) {
                    reportError(e2, new StringBuffer("rule grammar trapped:\n").append(e2.toString()).toString());
                    consumeUntil(1);
                    return;
                }
                throw e2;
            }
        }
        int LA2 = LA(1);
        if (LA2 != 1) {
            if (LA2 == 14) {
                fileOptionsSpec();
            } else {
                switch (LA2) {
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        break;
                    default:
                        throw new NoViableAltException(LT(1), getFilename());
                }
            }
        }
        while (LA(1) >= 7 && LA(1) <= 10) {
            classDef();
        }
        match(1);
    }

    public final void fileOptionsSpec() throws RecognitionException, TokenStreamException {
        match(14);
        while (true) {
            if (LA(1) == 24 || LA(1) == 28) {
                Token id = id();
                match(15);
                Token optionValue = optionValue();
                if (this.inputState.guessing == 0) {
                    this.behavior.setFileOption(id, optionValue, getInputState().filename);
                }
                match(16);
            } else {
                match(17);
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't wrap try/catch for region: R(16:2|3|4|12|13|20|(4:24|(1:26)(3:32|(1:56)(5:38|39|40|41|42)|(1:44)(2:45|(2:52|53)(1:51)))|27|(2:29|30)(1:31))|62|63|64|(1:(1:67)(2:70|71))(1:72)|68|69|(0)(0)|27|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009b, code lost:
        r11 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a8 A[Catch: RecognitionException -> 0x0137, TryCatch #2 {RecognitionException -> 0x0137, blocks: (B:3:0x0008, B:4:0x000c, B:5:0x000f, B:67:0x012b, B:68:0x0136, B:6:0x0013, B:8:0x0021, B:9:0x0026, B:10:0x002a, B:11:0x002d, B:65:0x011f, B:66:0x012a, B:12:0x0031, B:14:0x003e, B:16:0x0044, B:18:0x0051, B:38:0x00a8, B:60:0x0101, B:62:0x010a, B:39:0x00ac, B:41:0x00b2, B:43:0x00b8, B:45:0x00be, B:49:0x00da, B:52:0x00e8, B:53:0x00ec, B:55:0x00f2, B:57:0x00f8, B:59:0x00fe, B:63:0x0111, B:64:0x011e, B:20:0x0057, B:22:0x005d, B:26:0x0066, B:36:0x009c), top: B:92:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ac A[Catch: RecognitionException -> 0x0137, TryCatch #2 {RecognitionException -> 0x0137, blocks: (B:3:0x0008, B:4:0x000c, B:5:0x000f, B:67:0x012b, B:68:0x0136, B:6:0x0013, B:8:0x0021, B:9:0x0026, B:10:0x002a, B:11:0x002d, B:65:0x011f, B:66:0x012a, B:12:0x0031, B:14:0x003e, B:16:0x0044, B:18:0x0051, B:38:0x00a8, B:60:0x0101, B:62:0x010a, B:39:0x00ac, B:41:0x00b2, B:43:0x00b8, B:45:0x00be, B:49:0x00da, B:52:0x00e8, B:53:0x00ec, B:55:0x00f2, B:57:0x00f8, B:59:0x00fe, B:63:0x0111, B:64:0x011e, B:20:0x0057, B:22:0x005d, B:26:0x0066, B:36:0x009c), top: B:92:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010a A[Catch: RecognitionException -> 0x0137, TryCatch #2 {RecognitionException -> 0x0137, blocks: (B:3:0x0008, B:4:0x000c, B:5:0x000f, B:67:0x012b, B:68:0x0136, B:6:0x0013, B:8:0x0021, B:9:0x0026, B:10:0x002a, B:11:0x002d, B:65:0x011f, B:66:0x012a, B:12:0x0031, B:14:0x003e, B:16:0x0044, B:18:0x0051, B:38:0x00a8, B:60:0x0101, B:62:0x010a, B:39:0x00ac, B:41:0x00b2, B:43:0x00b8, B:45:0x00be, B:49:0x00da, B:52:0x00e8, B:53:0x00ec, B:55:0x00f2, B:57:0x00f8, B:59:0x00fe, B:63:0x0111, B:64:0x011e, B:20:0x0057, B:22:0x005d, B:26:0x0066, B:36:0x009c), top: B:92:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0186 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void classDef() throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.classDef():void");
    }

    public final Token id() throws RecognitionException, TokenStreamException {
        int LA = LA(1);
        if (LA == 24) {
            Token LT = LT(1);
            match(24);
            if (this.inputState.guessing == 0) {
                return LT;
            }
        } else if (LA == 28) {
            Token LT2 = LT(1);
            match(28);
            if (this.inputState.guessing == 0) {
                return LT2;
            }
        } else {
            throw new NoViableAltException(LT(1), getFilename());
        }
        return null;
    }

    public final void lexerSpec(String str) throws RecognitionException, TokenStreamException {
        Token token;
        int LA = LA(1);
        String str2 = null;
        if (LA == 9) {
            Token LT = LT(1);
            match(9);
            Token id = id();
            if (this.inputState.guessing == 0) {
                this.antlrTool.warning("lexclass' is deprecated; use 'class X extends Lexer'", getFilename(), LT.getLine(), LT.getColumn());
            }
            token = id;
        } else if (LA == 10) {
            match(10);
            token = id();
            match(11);
            match(12);
            int LA2 = LA(1);
            if (LA2 != 16) {
                if (LA2 == 27) {
                    str2 = superClass();
                } else {
                    throw new NoViableAltException(LT(1), getFilename());
                }
            }
        } else {
            throw new NoViableAltException(LT(1), getFilename());
        }
        if (this.inputState.guessing == 0) {
            this.behavior.startLexer(getFilename(), token, str2, str);
        }
        match(16);
        int LA3 = LA(1);
        if (LA3 != 7 && LA3 != 8) {
            if (LA3 == 14) {
                lexerOptionsSpec();
            } else if (LA3 != 28 && LA3 != 23 && LA3 != 24) {
                switch (LA3) {
                    case 31:
                    case 32:
                    case 33:
                        break;
                    default:
                        throw new NoViableAltException(LT(1), getFilename());
                }
            }
        }
        if (this.inputState.guessing == 0) {
            this.behavior.endOptions();
        }
        int LA4 = LA(1);
        if (LA4 != 7 && LA4 != 8) {
            if (LA4 == 23) {
                tokensSpec();
            } else if (LA4 != 24 && LA4 != 28) {
                switch (LA4) {
                    case 31:
                    case 32:
                    case 33:
                        break;
                    default:
                        throw new NoViableAltException(LT(1), getFilename());
                }
            }
        }
        int LA5 = LA(1);
        if (LA5 == 7) {
            Token LT2 = LT(1);
            match(7);
            if (this.inputState.guessing == 0) {
                this.behavior.refMemberAction(LT2);
            }
        } else if (LA5 == 8 || LA5 == 24 || LA5 == 28) {
        } else {
            switch (LA5) {
                case 31:
                case 32:
                case 33:
                    return;
                default:
                    throw new NoViableAltException(LT(1), getFilename());
            }
        }
    }

    public final void treeParserSpec(String str) throws RecognitionException, TokenStreamException {
        String str2;
        match(10);
        Token id = id();
        match(11);
        match(13);
        int LA = LA(1);
        if (LA == 16) {
            str2 = null;
        } else if (LA == 27) {
            str2 = superClass();
        } else {
            throw new NoViableAltException(LT(1), getFilename());
        }
        if (this.inputState.guessing == 0) {
            this.behavior.startTreeWalker(getFilename(), id, str2, str);
        }
        match(16);
        int LA2 = LA(1);
        if (LA2 != 7 && LA2 != 8) {
            if (LA2 == 14) {
                treeParserOptionsSpec();
            } else if (LA2 != 28 && LA2 != 23 && LA2 != 24) {
                switch (LA2) {
                    case 31:
                    case 32:
                    case 33:
                        break;
                    default:
                        throw new NoViableAltException(LT(1), getFilename());
                }
            }
        }
        if (this.inputState.guessing == 0) {
            this.behavior.endOptions();
        }
        int LA3 = LA(1);
        if (LA3 != 7 && LA3 != 8) {
            if (LA3 == 23) {
                tokensSpec();
            } else if (LA3 != 24 && LA3 != 28) {
                switch (LA3) {
                    case 31:
                    case 32:
                    case 33:
                        break;
                    default:
                        throw new NoViableAltException(LT(1), getFilename());
                }
            }
        }
        int LA4 = LA(1);
        if (LA4 == 7) {
            Token LT = LT(1);
            match(7);
            if (this.inputState.guessing == 0) {
                this.behavior.refMemberAction(LT);
            }
        } else if (LA4 == 8 || LA4 == 24 || LA4 == 28) {
        } else {
            switch (LA4) {
                case 31:
                case 32:
                case 33:
                    return;
                default:
                    throw new NoViableAltException(LT(1), getFilename());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void parserSpec(java.lang.String r9) throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.parserSpec(java.lang.String):void");
    }

    public final void rules() throws RecognitionException, TokenStreamException {
        int i = 0;
        while (_tokenSet_0.member(LA(1)) && _tokenSet_1.member(LA(2))) {
            rule();
            i++;
        }
        if (i < 1) {
            throw new NoViableAltException(LT(1), getFilename());
        }
    }

    public final Token optionValue() throws RecognitionException, TokenStreamException {
        int LA = LA(1);
        if (LA == 6) {
            Token LT = LT(1);
            match(6);
            if (this.inputState.guessing == 0) {
                return LT;
            }
        } else if (LA == 24 || LA == 28) {
            return qualifiedID();
        } else {
            if (LA == 19) {
                Token LT2 = LT(1);
                match(19);
                if (this.inputState.guessing == 0) {
                    return LT2;
                }
            } else if (LA == 20) {
                Token LT3 = LT(1);
                match(20);
                if (this.inputState.guessing == 0) {
                    return LT3;
                }
            } else {
                throw new NoViableAltException(LT(1), getFilename());
            }
        }
        return null;
    }

    public final void parserOptionsSpec() throws RecognitionException, TokenStreamException {
        match(14);
        while (true) {
            if (LA(1) == 24 || LA(1) == 28) {
                Token id = id();
                match(15);
                Token optionValue = optionValue();
                if (this.inputState.guessing == 0) {
                    this.behavior.setGrammarOption(id, optionValue);
                }
                match(16);
            } else {
                match(17);
                return;
            }
        }
    }

    public final void treeParserOptionsSpec() throws RecognitionException, TokenStreamException {
        match(14);
        while (true) {
            if (LA(1) == 24 || LA(1) == 28) {
                Token id = id();
                match(15);
                Token optionValue = optionValue();
                if (this.inputState.guessing == 0) {
                    this.behavior.setGrammarOption(id, optionValue);
                }
                match(16);
            } else {
                match(17);
                return;
            }
        }
    }

    public final void lexerOptionsSpec() throws RecognitionException, TokenStreamException {
        match(14);
        while (true) {
            int LA = LA(1);
            if (LA == 18) {
                match(18);
                match(15);
                BitSet charSet = charSet();
                match(16);
                if (this.inputState.guessing == 0) {
                    this.behavior.setCharVocabulary(charSet);
                }
            } else if (LA == 24 || LA == 28) {
                Token id = id();
                match(15);
                Token optionValue = optionValue();
                if (this.inputState.guessing == 0) {
                    this.behavior.setGrammarOption(id, optionValue);
                }
                match(16);
            } else {
                match(17);
                return;
            }
        }
    }

    public final BitSet charSet() throws RecognitionException, TokenStreamException {
        BitSet blockElement = setBlockElement();
        while (LA(1) == 21) {
            match(21);
            BitSet blockElement2 = setBlockElement();
            if (this.inputState.guessing == 0) {
                blockElement.orInPlace(blockElement2);
            }
        }
        return blockElement;
    }

    public final void subruleOptionsSpec() throws RecognitionException, TokenStreamException {
        match(14);
        while (true) {
            if (LA(1) == 24 || LA(1) == 28) {
                Token id = id();
                match(15);
                Token optionValue = optionValue();
                if (this.inputState.guessing == 0) {
                    this.behavior.setSubruleOption(id, optionValue);
                }
                match(16);
            } else {
                match(17);
                return;
            }
        }
    }

    public final Token qualifiedID() throws RecognitionException, TokenStreamException {
        StringBuffer stringBuffer = new StringBuffer(30);
        Token id = id();
        if (this.inputState.guessing == 0) {
            stringBuffer.append(id.getText());
        }
        while (LA(1) == 50) {
            match(50);
            id = id();
            if (this.inputState.guessing == 0) {
                stringBuffer.append('.');
                stringBuffer.append(id.getText());
            }
        }
        if (this.inputState.guessing == 0) {
            CommonToken commonToken = new CommonToken(24, stringBuffer.toString());
            commonToken.setLine(id.getLine());
            return commonToken;
        }
        return null;
    }

    public final BitSet setBlockElement() throws RecognitionException, TokenStreamException {
        BitSet bitSet;
        int i;
        Token LT = LT(1);
        match(19);
        if (this.inputState.guessing == 0) {
            i = ANTLRLexer.tokenTypeForCharLiteral(LT.getText());
            bitSet = BitSet.of(i);
        } else {
            bitSet = null;
            i = 0;
        }
        int LA = LA(1);
        if (LA != 16 && LA != 21) {
            if (LA == 22) {
                match(22);
                Token LT2 = LT(1);
                match(19);
                if (this.inputState.guessing == 0) {
                    int i2 = ANTLRLexer.tokenTypeForCharLiteral(LT2.getText());
                    if (i2 < i) {
                        this.antlrTool.error("Malformed range line ", getFilename(), LT.getLine(), LT.getColumn());
                    }
                    for (int i3 = i + 1; i3 <= i2; i3++) {
                        bitSet.add(i3);
                    }
                }
            } else {
                throw new NoViableAltException(LT(1), getFilename());
            }
        }
        return bitSet;
    }

    public final void tokensSpec() throws RecognitionException, TokenStreamException {
        match(23);
        int i = 0;
        Token token = null;
        while (true) {
            if (LA(1) != 6 && LA(1) != 24) {
                if (i < 1) {
                    throw new NoViableAltException(LT(1), getFilename());
                }
                match(17);
                return;
            }
            int LA = LA(1);
            if (LA == 6) {
                Token LT = LT(1);
                match(6);
                if (this.inputState.guessing == 0) {
                    this.behavior.defineToken(null, LT);
                }
                int LA2 = LA(1);
                if (LA2 == 16) {
                    continue;
                } else if (LA2 == 25) {
                    tokensSpecOptions(LT);
                } else {
                    throw new NoViableAltException(LT(1), getFilename());
                }
            } else if (LA == 24) {
                if (this.inputState.guessing == 0) {
                    token = null;
                }
                Token LT2 = LT(1);
                match(24);
                int LA3 = LA(1);
                if (LA3 == 15) {
                    match(15);
                    token = LT(1);
                    match(6);
                } else if (LA3 != 16 && LA3 != 25) {
                    throw new NoViableAltException(LT(1), getFilename());
                }
                if (this.inputState.guessing == 0) {
                    this.behavior.defineToken(LT2, token);
                }
                int LA4 = LA(1);
                if (LA4 == 16) {
                    continue;
                } else if (LA4 == 25) {
                    tokensSpecOptions(LT2);
                } else {
                    throw new NoViableAltException(LT(1), getFilename());
                }
            } else {
                throw new NoViableAltException(LT(1), getFilename());
            }
            match(16);
            i++;
        }
    }

    public final void tokensSpecOptions(Token token) throws RecognitionException, TokenStreamException {
        match(25);
        Token id = id();
        match(15);
        Token optionValue = optionValue();
        if (this.inputState.guessing == 0) {
            this.behavior.refTokensSpecElementOption(token, id, optionValue);
        }
        while (LA(1) == 16) {
            match(16);
            Token id2 = id();
            match(15);
            Token optionValue2 = optionValue();
            if (this.inputState.guessing == 0) {
                this.behavior.refTokensSpecElementOption(token, id2, optionValue2);
            }
        }
        match(26);
    }

    public final String superClass() throws RecognitionException, TokenStreamException {
        match(27);
        String text = this.inputState.guessing == 0 ? LT(1).getText() : null;
        int LA = LA(1);
        if (LA == 24) {
            match(24);
        } else if (LA == 28) {
            match(28);
        } else {
            throw new NoViableAltException(LT(1), getFilename());
        }
        match(29);
        return text;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bc A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x012d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x019d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void rule() throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.rule():void");
    }

    public final void throwsSpec() throws RecognitionException, TokenStreamException {
        match(38);
        String text = this.inputState.guessing == 0 ? id().getText() : null;
        while (LA(1) == 39) {
            match(39);
            Token id = id();
            if (this.inputState.guessing == 0) {
                text = new StringBuffer().append(text).append(",").append(id.getText()).toString();
            }
        }
        if (this.inputState.guessing == 0) {
            this.behavior.setUserExceptions(text);
        }
    }

    public final void ruleOptionsSpec() throws RecognitionException, TokenStreamException {
        match(14);
        while (true) {
            if (LA(1) == 24 || LA(1) == 28) {
                Token id = id();
                match(15);
                Token optionValue = optionValue();
                if (this.inputState.guessing == 0) {
                    this.behavior.setRuleOption(id, optionValue);
                }
                match(16);
            } else {
                match(17);
                return;
            }
        }
    }

    public final void block() throws RecognitionException, TokenStreamException {
        if (this.inputState.guessing == 0) {
            this.blockNesting++;
        }
        alternative();
        while (LA(1) == 21) {
            match(21);
            alternative();
        }
        if (this.inputState.guessing == 0) {
            this.blockNesting--;
        }
    }

    public final void exceptionGroup() throws RecognitionException, TokenStreamException {
        if (this.inputState.guessing == 0) {
            this.behavior.beginExceptionGroup();
        }
        int i = 0;
        while (LA(1) == 40) {
            exceptionSpec();
            i++;
        }
        if (i < 1) {
            throw new NoViableAltException(LT(1), getFilename());
        }
        if (this.inputState.guessing == 0) {
            this.behavior.endExceptionGroup();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e A[LOOP:0: B:28:0x0052->B:30:0x005e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void alternative() throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            r6 = this;
            r0 = 1
            int r1 = r6.LA(r0)
            r2 = 6
            r3 = 40
            r4 = 21
            r5 = 16
            if (r1 == r2) goto L46
            r2 = 7
            if (r1 == r2) goto L46
            if (r1 == r5) goto L46
            r2 = 19
            if (r1 == r2) goto L46
            if (r1 == r4) goto L46
            r2 = 24
            if (r1 == r2) goto L46
            r2 = 34
            if (r1 == r2) goto L3b
            if (r1 == r3) goto L46
            r2 = 50
            if (r1 == r2) goto L46
            switch(r1) {
                case 27: goto L46;
                case 28: goto L46;
                case 29: goto L46;
                default: goto L2a;
            }
        L2a:
            switch(r1) {
                case 42: goto L46;
                case 43: goto L46;
                case 44: goto L46;
                default: goto L2d;
            }
        L2d:
            antlr.NoViableAltException r1 = new antlr.NoViableAltException
            antlr.Token r0 = r6.LT(r0)
            java.lang.String r2 = r6.getFilename()
            r1.<init>(r0, r2)
            throw r1
        L3b:
            r6.match(r2)
            antlr.ParserSharedInputState r1 = r6.inputState
            int r1 = r1.guessing
            if (r1 != 0) goto L46
            r1 = 0
            goto L47
        L46:
            r1 = r0
        L47:
            antlr.ParserSharedInputState r2 = r6.inputState
            int r2 = r2.guessing
            if (r2 != 0) goto L52
            antlr.ANTLRGrammarParseBehavior r2 = r6.behavior
            r2.beginAlt(r1)
        L52:
            antlr.collections.impl.BitSet r1 = antlr.ANTLRParser._tokenSet_2
            int r2 = r6.LA(r0)
            boolean r1 = r1.member(r2)
            if (r1 == 0) goto L62
            r6.element()
            goto L52
        L62:
            int r1 = r6.LA(r0)
            if (r1 == r5) goto L82
            if (r1 == r4) goto L82
            r2 = 29
            if (r1 == r2) goto L82
            if (r1 != r3) goto L74
            r6.exceptionSpecNoLabel()
            goto L82
        L74:
            antlr.NoViableAltException r1 = new antlr.NoViableAltException
            antlr.Token r0 = r6.LT(r0)
            java.lang.String r2 = r6.getFilename()
            r1.<init>(r0, r2)
            throw r1
        L82:
            antlr.ParserSharedInputState r0 = r6.inputState
            int r0 = r0.guessing
            if (r0 != 0) goto L8d
            antlr.ANTLRGrammarParseBehavior r0 = r6.behavior
            r0.endAlt()
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.alternative():void");
    }

    public final void element() throws RecognitionException, TokenStreamException {
        elementNoOptionSpec();
        int LA = LA(1);
        if (LA == 6 || LA == 7 || LA == 16 || LA == 19 || LA == 21 || LA == 40 || LA == 50 || LA == 24) {
            return;
        }
        if (LA == 25) {
            elementOptionSpec();
            return;
        }
        switch (LA) {
            case 27:
            case 28:
            case 29:
                return;
            default:
                switch (LA) {
                    case 42:
                    case 43:
                    case 44:
                        return;
                    default:
                        throw new NoViableAltException(LT(1), getFilename());
                }
        }
    }

    public final void exceptionSpecNoLabel() throws RecognitionException, TokenStreamException {
        match(40);
        if (this.inputState.guessing == 0) {
            this.behavior.beginExceptionSpec(null);
        }
        while (LA(1) == 41) {
            exceptionHandler();
        }
        if (this.inputState.guessing == 0) {
            this.behavior.endExceptionSpec();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
        if (r5.inputState.guessing == 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void exceptionSpec() throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            r5 = this;
            r0 = 40
            r5.match(r0)
            r1 = 1
            int r2 = r5.LA(r1)
            r3 = 41
            if (r2 == r1) goto L40
            r4 = 24
            if (r2 == r4) goto L40
            r4 = 28
            if (r2 == r4) goto L40
            r4 = 35
            if (r2 == r4) goto L32
            if (r2 == r0) goto L40
            if (r2 == r3) goto L40
            switch(r2) {
                case 7: goto L40;
                case 8: goto L40;
                case 9: goto L40;
                case 10: goto L40;
                default: goto L21;
            }
        L21:
            switch(r2) {
                case 31: goto L40;
                case 32: goto L40;
                case 33: goto L40;
                default: goto L24;
            }
        L24:
            antlr.NoViableAltException r0 = new antlr.NoViableAltException
            antlr.Token r1 = r5.LT(r1)
            java.lang.String r2 = r5.getFilename()
            r0.<init>(r1, r2)
            throw r0
        L32:
            antlr.Token r0 = r5.LT(r1)
            r5.match(r4)
            antlr.ParserSharedInputState r2 = r5.inputState
            int r2 = r2.guessing
            if (r2 != 0) goto L40
            goto L41
        L40:
            r0 = 0
        L41:
            antlr.ParserSharedInputState r2 = r5.inputState
            int r2 = r2.guessing
            if (r2 != 0) goto L4c
            antlr.ANTLRGrammarParseBehavior r2 = r5.behavior
            r2.beginExceptionSpec(r0)
        L4c:
            int r0 = r5.LA(r1)
            if (r0 != r3) goto L56
            r5.exceptionHandler()
            goto L4c
        L56:
            antlr.ParserSharedInputState r0 = r5.inputState
            int r0 = r0.guessing
            if (r0 != 0) goto L61
            antlr.ANTLRGrammarParseBehavior r0 = r5.behavior
            r0.endExceptionSpec()
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.exceptionSpec():void");
    }

    public final void exceptionHandler() throws RecognitionException, TokenStreamException {
        match(41);
        Token LT = LT(1);
        match(35);
        Token LT2 = LT(1);
        match(7);
        if (this.inputState.guessing == 0) {
            this.behavior.refExceptionHandler(LT, LT2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:213:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:221:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void elementNoOptionSpec() throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 958
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.elementNoOptionSpec():void");
    }

    public final void elementOptionSpec() throws RecognitionException, TokenStreamException {
        match(25);
        Token id = id();
        match(15);
        Token optionValue = optionValue();
        if (this.inputState.guessing == 0) {
            this.behavior.refElementOption(id, optionValue);
        }
        while (LA(1) == 16) {
            match(16);
            Token id2 = id();
            match(15);
            Token optionValue2 = optionValue();
            if (this.inputState.guessing == 0) {
                this.behavior.refElementOption(id2, optionValue2);
            }
        }
        match(26);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x009f, code lost:
        if (r13.inputState.guessing == 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bb, code lost:
        if (r13.inputState.guessing == 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bd, code lost:
        r8 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00bf, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d6, code lost:
        if (r13.inputState.guessing == 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f2, code lost:
        if (r13.inputState.guessing == 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f4, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f6, code lost:
        r9 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void range(antlr.Token r14) throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.range(antlr.Token):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
        if (r15.inputState.guessing == 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void terminal(antlr.Token r16) throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.terminal(antlr.Token):void");
    }

    public final void notTerminal(Token token) throws RecognitionException, TokenStreamException {
        int i = 1;
        int LA = LA(1);
        if (LA != 19) {
            if (LA == 24) {
                Token LT = LT(1);
                match(24);
                int ast_type_spec = ast_type_spec();
                if (this.inputState.guessing == 0) {
                    this.behavior.refToken(null, LT, token, null, true, ast_type_spec, lastInRule());
                    return;
                }
                return;
            }
            throw new NoViableAltException(LT(1), getFilename());
        }
        Token LT2 = LT(1);
        match(19);
        int LA2 = LA(1);
        if (LA2 != 6 && LA2 != 7 && LA2 != 16 && LA2 != 19 && LA2 != 21) {
            if (LA2 == 34) {
                match(34);
                if (this.inputState.guessing == 0) {
                    i = 3;
                }
            } else if (LA2 != 40 && LA2 != 50 && LA2 != 24 && LA2 != 25) {
                switch (LA2) {
                    case 27:
                    case 28:
                    case 29:
                        break;
                    default:
                        switch (LA2) {
                            case 42:
                            case 43:
                            case 44:
                                break;
                            default:
                                throw new NoViableAltException(LT(1), getFilename());
                        }
                }
            }
        }
        int i2 = i;
        if (this.inputState.guessing == 0) {
            this.behavior.refCharLiteral(LT2, token, true, i2, lastInRule());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void ebnf(antlr.Token r11, boolean r12) throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.ANTLRParser.ebnf(antlr.Token, boolean):void");
    }

    public final void tree() throws RecognitionException, TokenStreamException {
        Token LT = LT(1);
        match(44);
        if (this.inputState.guessing == 0) {
            this.behavior.beginTree(LT);
        }
        rootNode();
        if (this.inputState.guessing == 0) {
            this.behavior.beginChildList();
        }
        int i = 0;
        while (_tokenSet_2.member(LA(1))) {
            element();
            i++;
        }
        if (i < 1) {
            throw new NoViableAltException(LT(1), getFilename());
        }
        if (this.inputState.guessing == 0) {
            this.behavior.endChildList();
        }
        match(29);
        if (this.inputState.guessing == 0) {
            this.behavior.endTree();
        }
    }

    public final void rootNode() throws RecognitionException, TokenStreamException {
        Token id;
        if ((LA(1) == 24 || LA(1) == 28) && LA(2) == 37) {
            id = id();
            match(37);
            if (this.inputState.guessing == 0) {
                checkForMissingEndRule(id);
            }
        } else if (!_tokenSet_7.member(LA(1)) || !_tokenSet_11.member(LA(2))) {
            throw new NoViableAltException(LT(1), getFilename());
        } else {
            id = null;
        }
        terminal(id);
    }

    public final int ast_type_spec() throws RecognitionException, TokenStreamException {
        int LA = LA(1);
        if (LA == 6 || LA == 7 || LA == 16 || LA == 19 || LA == 21 || LA == 40 || LA == 24 || LA == 25) {
            return 1;
        }
        if (LA == 34) {
            match(34);
            return this.inputState.guessing == 0 ? 3 : 1;
        } else if (LA != 35) {
            if (LA == 49) {
                match(49);
                return this.inputState.guessing == 0 ? 2 : 1;
            } else if (LA != 50) {
                switch (LA) {
                    case 27:
                    case 28:
                    case 29:
                        return 1;
                    default:
                        switch (LA) {
                            case 42:
                            case 43:
                            case 44:
                                return 1;
                            default:
                                throw new NoViableAltException(LT(1), getFilename());
                        }
                }
            } else {
                return 1;
            }
        } else {
            return 1;
        }
    }

    private static final long[] mk_tokenSet_0() {
        return new long[]{15317598464L, 0};
    }

    private static final long[] mk_tokenSet_1() {
        return new long[]{547893559424L, 0};
    }

    private static final long[] mk_tokenSet_2() {
        return new long[]{1156686652375232L, 0};
    }

    private static final long[] mk_tokenSet_3() {
        return new long[]{1157838276198592L, 0};
    }

    private static final long[] mk_tokenSet_4() {
        return new long[]{1130298373308480L, 0};
    }

    private static final long[] mk_tokenSet_5() {
        return new long[]{1720925672784064L, 0};
    }

    private static final long[] mk_tokenSet_6() {
        return new long[]{1720788233830592L, 0};
    }

    private static final long[] mk_tokenSet_7() {
        return new long[]{1125899924144192L, 0};
    }

    private static final long[] mk_tokenSet_8() {
        return new long[]{1720788229619904L, 0};
    }

    private static final long[] mk_tokenSet_9() {
        return new long[]{1157803882840256L, 0};
    }

    private static final long[] mk_tokenSet_10() {
        return new long[]{2250890277404864L, 0};
    }

    private static final long[] mk_tokenSet_11() {
        return new long[]{1719688145404096L, 0};
    }
}
