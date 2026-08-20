package antlr.preprocessor;

import antlr.LLkParser;
import antlr.NoViableAltException;
import antlr.ParserSharedInputState;
import antlr.RecognitionException;
import antlr.SemanticException;
import antlr.Token;
import antlr.TokenBuffer;
import antlr.TokenStream;
import antlr.TokenStreamException;
import antlr.collections.impl.BitSet;
import antlr.collections.impl.IndexedVector;
/* loaded from: classes.dex */
public class Preprocessor extends LLkParser implements PreprocessorTokenTypes {
    public static final String[] _tokenNames = {"<0>", "EOF", "<2>", "NULL_TREE_LOOKAHEAD", "\"tokens\"", "HEADER_ACTION", "ACTION", "\"class\"", "ID", "\"extends\"", "SEMI", "TOKENS_SPEC", "OPTIONS_START", "ASSIGN_RHS", "RCURLY", "\"protected\"", "\"private\"", "\"public\"", "BANG", "ARG_ACTION", "\"returns\"", "RULE_BLOCK", "\"throws\"", "COMMA", "\"exception\"", "\"catch\"", "SUBRULE_BLOCK", "ALT", "ELEMENT", "ID_OR_KEYWORD", "CURLY_BLOCK_SCARF", "WS", "NEWLINE", "COMMENT", "SL_COMMENT", "ML_COMMENT", "CHAR_LITERAL", "STRING_LITERAL", "ESC", "DIGIT", "XDIGIT"};
    public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
    public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
    public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
    public static final BitSet _tokenSet_3 = new BitSet(mk_tokenSet_3());
    public static final BitSet _tokenSet_4 = new BitSet(mk_tokenSet_4());
    public static final BitSet _tokenSet_5 = new BitSet(mk_tokenSet_5());
    public static final BitSet _tokenSet_6 = new BitSet(mk_tokenSet_6());
    public static final BitSet _tokenSet_7 = new BitSet(mk_tokenSet_7());
    private antlr.Tool antlrTool;

    public void setTool(antlr.Tool tool) {
        if (this.antlrTool == null) {
            this.antlrTool = tool;
            return;
        }
        throw new IllegalStateException("antlr.Tool already registered");
    }

    protected antlr.Tool getTool() {
        return this.antlrTool;
    }

    @Override // antlr.Parser
    public void reportError(String str) {
        if (getTool() != null) {
            getTool().error(str, getFilename(), -1, -1);
        } else {
            super.reportError(str);
        }
    }

    @Override // antlr.Parser
    public void reportError(RecognitionException recognitionException) {
        if (getTool() != null) {
            getTool().error(recognitionException.getErrorMessage(), recognitionException.getFilename(), recognitionException.getLine(), recognitionException.getColumn());
        } else {
            super.reportError(recognitionException);
        }
    }

    @Override // antlr.Parser
    public void reportWarning(String str) {
        if (getTool() != null) {
            getTool().warning(str, getFilename(), -1, -1);
        } else {
            super.reportWarning(str);
        }
    }

    protected Preprocessor(TokenBuffer tokenBuffer, int i) {
        super(tokenBuffer, i);
        this.tokenNames = _tokenNames;
    }

    public Preprocessor(TokenBuffer tokenBuffer) {
        this(tokenBuffer, 1);
    }

    protected Preprocessor(TokenStream tokenStream, int i) {
        super(tokenStream, i);
        this.tokenNames = _tokenNames;
    }

    public Preprocessor(TokenStream tokenStream) {
        this(tokenStream, 1);
    }

    public Preprocessor(ParserSharedInputState parserSharedInputState) {
        super(parserSharedInputState, 1);
        this.tokenNames = _tokenNames;
    }

    public final void grammarFile(Hierarchy hierarchy, String str) throws RecognitionException, TokenStreamException {
        while (LA(1) == 5) {
            try {
                Token LT = LT(1);
                match(5);
                hierarchy.getFile(str).addHeaderAction(LT.getText());
            } catch (RecognitionException e2) {
                reportError(e2);
                consume();
                consumeUntil(_tokenSet_0);
                return;
            }
        }
        int LA = LA(1);
        IndexedVector indexedVector = null;
        if (LA != 1) {
            if (LA == 12) {
                indexedVector = optionSpec(null);
            } else if (LA != 6 && LA != 7) {
                throw new NoViableAltException(LT(1), getFilename());
            }
        }
        while (true) {
            if (LA(1) != 6 && LA(1) != 7) {
                match(1);
                return;
            }
            Grammar class_def = class_def(str, hierarchy);
            if (class_def != null && indexedVector != null) {
                hierarchy.getFile(str).setOptions(indexedVector);
            }
            if (class_def != null) {
                class_def.setFileName(str);
                hierarchy.addGrammar(class_def);
            }
        }
    }

    public final IndexedVector optionSpec(Grammar grammar) throws RecognitionException, TokenStreamException {
        IndexedVector indexedVector = new IndexedVector();
        try {
            match(12);
            while (LA(1) == 8) {
                Token LT = LT(1);
                match(8);
                Token LT2 = LT(1);
                match(13);
                Option option = new Option(LT.getText(), LT2.getText(), grammar);
                indexedVector.appendElement(option.getName(), option);
                if (grammar != null && LT.getText().equals("importVocab")) {
                    grammar.specifiedVocabulary = true;
                    grammar.importVocab = LT2.getText();
                } else if (grammar != null && LT.getText().equals("exportVocab")) {
                    grammar.exportVocab = LT2.getText().substring(0, LT2.getText().length() - 1);
                    grammar.exportVocab = grammar.exportVocab.trim();
                }
            }
            match(14);
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_1);
        }
        return indexedVector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Grammar class_def(String str, Hierarchy hierarchy) throws RecognitionException, TokenStreamException {
        Token LT;
        IndexedVector indexedVector = new IndexedVector(100);
        IndexedVector indexedVector2 = null;
        try {
            int LA = LA(1);
            if (LA == 6) {
                LT = LT(1);
                match(6);
            } else if (LA != 7) {
                throw new NoViableAltException(LT(1), getFilename());
            } else {
                LT = null;
            }
            match(7);
            Token LT2 = LT(1);
            match(8);
            match(9);
            Token LT3 = LT(1);
            match(8);
            match(10);
            Grammar grammar = hierarchy.getGrammar(LT2.getText());
            if (grammar != null) {
                throw new SemanticException(new StringBuffer("redefinition of grammar ").append(LT2.getText()).toString(), str, LT2.getLine(), LT2.getColumn());
            }
            try {
                Grammar grammar2 = new Grammar(hierarchy.getTool(), LT2.getText(), LT3.getText(), indexedVector);
                if (LT != null) {
                    try {
                        grammar2.setPreambleAction(LT.getText());
                    } catch (RecognitionException e2) {
                        indexedVector2 = grammar2;
                        e = e2;
                        reportError(e);
                        consume();
                        consumeUntil(_tokenSet_3);
                        return indexedVector2;
                    }
                }
                int LA2 = LA(1);
                if (LA2 != 6 && LA2 != 8 && LA2 != 11) {
                    if (LA2 == 12) {
                        indexedVector2 = optionSpec(grammar2);
                    } else {
                        switch (LA2) {
                            case 15:
                            case 16:
                            case 17:
                                break;
                            default:
                                throw new NoViableAltException(LT(1), getFilename());
                        }
                    }
                }
                grammar2.setOptions(indexedVector2);
                int LA3 = LA(1);
                if (LA3 != 6 && LA3 != 8) {
                    if (LA3 == 11) {
                        Token LT4 = LT(1);
                        match(11);
                        grammar2.setTokenSection(LT4.getText());
                    } else {
                        switch (LA3) {
                            case 15:
                            case 16:
                            case 17:
                                break;
                            default:
                                throw new NoViableAltException(LT(1), getFilename());
                        }
                    }
                }
                int LA4 = LA(1);
                if (LA4 == 6) {
                    Token LT5 = LT(1);
                    match(6);
                    grammar2.setMemberAction(LT5.getText());
                } else if (LA4 != 8) {
                    switch (LA4) {
                        case 15:
                        case 16:
                        case 17:
                            break;
                        default:
                            throw new NoViableAltException(LT(1), getFilename());
                    }
                }
                int i = 0;
                while (_tokenSet_2.member(LA(1))) {
                    rule(grammar2);
                    i++;
                }
                if (i >= 1) {
                    return grammar2;
                }
                throw new NoViableAltException(LT(1), getFilename());
            } catch (RecognitionException e3) {
                e = e3;
                indexedVector2 = grammar;
            }
        } catch (RecognitionException e4) {
            e = e4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006c A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0089 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008e A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0105 A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013a A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0143 A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014c A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0155 A[Catch: RecognitionException -> 0x0161, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x015d A[Catch: RecognitionException -> 0x0161, TRY_LEAVE, TryCatch #0 {RecognitionException -> 0x0161, blocks: (B:3:0x0001, B:5:0x000a, B:6:0x000d, B:7:0x001a, B:8:0x001b, B:12:0x0034, B:15:0x0046, B:16:0x0049, B:17:0x0056, B:18:0x0057, B:20:0x005f, B:23:0x0069, B:24:0x006c, B:25:0x0079, B:26:0x007a, B:28:0x0083, B:31:0x008b, B:32:0x008e, B:33:0x009b, B:34:0x009c, B:36:0x00aa, B:42:0x00ba, B:46:0x00cf, B:51:0x00da, B:52:0x00e7, B:53:0x00e8, B:55:0x00ee, B:62:0x010c, B:64:0x013a, B:66:0x0143, B:68:0x014c, B:70:0x0155, B:71:0x0158, B:73:0x015d, B:59:0x00f7, B:60:0x0104, B:61:0x0105, B:43:0x00bf, B:44:0x00cc, B:9:0x0023, B:10:0x002b), top: B:78:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void rule(antlr.preprocessor.Grammar r13) throws antlr.RecognitionException, antlr.TokenStreamException {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: antlr.preprocessor.Preprocessor.rule(antlr.preprocessor.Grammar):void");
    }

    public final String throwsSpec() throws RecognitionException, TokenStreamException {
        String str = "throws ";
        try {
            match(22);
            Token LT = LT(1);
            match(8);
            str = new StringBuffer("throws ").append(LT.getText()).toString();
            while (LA(1) == 23) {
                match(23);
                Token LT2 = LT(1);
                match(8);
                str = new StringBuffer().append(str).append(",").append(LT2.getText()).toString();
            }
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_5);
        }
        return str;
    }

    public final String exceptionGroup() throws RecognitionException, TokenStreamException {
        String str = "";
        while (LA(1) == 24) {
            try {
                str = new StringBuffer().append(str).append(exceptionSpec()).toString();
            } catch (RecognitionException e2) {
                reportError(e2);
                consume();
                consumeUntil(_tokenSet_4);
            }
        }
        return str;
    }

    public final String exceptionSpec() throws RecognitionException, TokenStreamException {
        String stringBuffer = new StringBuffer().append(System.getProperty("line.separator")).append("exception ").toString();
        try {
            match(24);
            int LA = LA(1);
            if (LA != 1) {
                if (LA == 19) {
                    Token LT = LT(1);
                    match(19);
                    stringBuffer = new StringBuffer().append(stringBuffer).append(LT.getText()).toString();
                } else if (LA != 6 && LA != 7 && LA != 8 && LA != 24 && LA != 25) {
                    switch (LA) {
                        case 15:
                        case 16:
                        case 17:
                            break;
                        default:
                            throw new NoViableAltException(LT(1), getFilename());
                    }
                }
            }
            while (LA(1) == 25) {
                stringBuffer = new StringBuffer().append(stringBuffer).append(exceptionHandler()).toString();
            }
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_6);
        }
        return stringBuffer;
    }

    public final String exceptionHandler() throws RecognitionException, TokenStreamException {
        try {
            match(25);
            Token LT = LT(1);
            match(19);
            Token LT2 = LT(1);
            match(6);
            return new StringBuffer().append(System.getProperty("line.separator")).append("catch ").append(LT.getText()).append(" ").append(LT2.getText()).toString();
        } catch (RecognitionException e2) {
            reportError(e2);
            consume();
            consumeUntil(_tokenSet_7);
            return null;
        }
    }

    private static final long[] mk_tokenSet_0() {
        return new long[]{2, 0};
    }

    private static final long[] mk_tokenSet_1() {
        return new long[]{2329026, 0};
    }

    private static final long[] mk_tokenSet_2() {
        return new long[]{229632, 0};
    }

    private static final long[] mk_tokenSet_3() {
        return new long[]{194, 0};
    }

    private static final long[] mk_tokenSet_4() {
        return new long[]{229826, 0};
    }

    private static final long[] mk_tokenSet_5() {
        return new long[]{2101312, 0};
    }

    private static final long[] mk_tokenSet_6() {
        return new long[]{17007042, 0};
    }

    private static final long[] mk_tokenSet_7() {
        return new long[]{50561474, 0};
    }
}
