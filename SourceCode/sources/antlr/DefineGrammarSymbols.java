package antlr;

import antlr.collections.impl.BitSet;
import java.util.Hashtable;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public class DefineGrammarSymbols implements ANTLRGrammarParseBehavior {
    static final String DEFAULT_TOKENMANAGER_NAME = "*default";
    LLkAnalyzer analyzer;
    String[] args;
    protected Grammar grammar;
    protected Tool tool;
    protected Hashtable grammars = new Hashtable();
    protected Hashtable tokenManagers = new Hashtable();
    protected Hashtable headerActions = new Hashtable();
    Token thePreambleAction = new CommonToken(0, "");
    String language = "Java";
    protected int numLexers = 0;
    protected int numParsers = 0;
    protected int numTreeParsers = 0;

    @Override // antlr.ANTLRGrammarParseBehavior
    public void beginAlt(boolean z) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void beginChildList() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void beginExceptionGroup() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void beginExceptionSpec(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void beginSubRule(Token token, Token token2, boolean z) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void beginTree(Token token) throws SemanticException {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endAlt() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endChildList() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endExceptionGroup() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endExceptionSpec() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endGrammar() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endRule(String str) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endSubRule() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endTree() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void hasError() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void noASTSubRule() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void oneOrMoreSubRule() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void optionalSubRule() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refAction(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refArgAction(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refCharLiteral(Token token, Token token2, boolean z, int i, boolean z2) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refCharRange(Token token, Token token2, Token token3, int i, boolean z) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refElementOption(Token token, Token token2) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refExceptionHandler(Token token, Token token2) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refInitAction(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refMemberAction(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refReturnAction(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refSemPred(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refTokensSpecElementOption(Token token, Token token2, Token token3) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refTreeSpecifier(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refWildcard(Token token, Token token2, int i) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void setArgOfRuleRef(Token token) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void setRuleOption(Token token, Token token2) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void setSubruleOption(Token token, Token token2) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void setUserExceptions(String str) {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void synPred() {
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void zeroOrMoreSubRule() {
    }

    public DefineGrammarSymbols(Tool tool, String[] strArr, LLkAnalyzer lLkAnalyzer) {
        this.tool = tool;
        this.args = strArr;
        this.analyzer = lLkAnalyzer;
    }

    public void _refStringLiteral(Token token, Token token2, int i, boolean z) {
        if (this.grammar instanceof LexerGrammar) {
            return;
        }
        String text = token.getText();
        if (this.grammar.tokenManager.getTokenSymbol(text) != null) {
            return;
        }
        StringLiteralSymbol stringLiteralSymbol = new StringLiteralSymbol(text);
        stringLiteralSymbol.setTokenType(this.grammar.tokenManager.nextTokenType());
        this.grammar.tokenManager.define(stringLiteralSymbol);
    }

    public void _refToken(Token token, Token token2, Token token3, Token token4, boolean z, int i, boolean z2) {
        String text = token2.getText();
        if (this.grammar.tokenManager.tokenDefined(text)) {
            return;
        }
        int nextTokenType = this.grammar.tokenManager.nextTokenType();
        TokenSymbol tokenSymbol = new TokenSymbol(text);
        tokenSymbol.setTokenType(nextTokenType);
        this.grammar.tokenManager.define(tokenSymbol);
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void abortGrammar() {
        Grammar grammar = this.grammar;
        if (grammar != null && grammar.getClassName() != null) {
            this.grammars.remove(this.grammar.getClassName());
        }
        this.grammar = null;
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void defineRuleName(Token token, String str, boolean z, String str2) throws SemanticException {
        RuleSymbol ruleSymbol;
        String text = token.getText();
        if (token.type == 24) {
            text = CodeGenerator.encodeLexerRuleName(text);
            if (!this.grammar.tokenManager.tokenDefined(token.getText())) {
                int nextTokenType = this.grammar.tokenManager.nextTokenType();
                TokenSymbol tokenSymbol = new TokenSymbol(token.getText());
                tokenSymbol.setTokenType(nextTokenType);
                this.grammar.tokenManager.define(tokenSymbol);
            }
        }
        if (this.grammar.isDefined(text)) {
            ruleSymbol = (RuleSymbol) this.grammar.getSymbol(text);
            if (ruleSymbol.isDefined()) {
                this.tool.error(new StringBuffer("redefinition of rule ").append(text).toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
            }
        } else {
            ruleSymbol = new RuleSymbol(text);
            this.grammar.define(ruleSymbol);
        }
        ruleSymbol.setDefined();
        ruleSymbol.access = str;
        ruleSymbol.comment = str2;
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void defineToken(Token token, Token token2) {
        TokenSymbol tokenSymbol;
        String text = token != null ? token.getText() : null;
        String text2 = token2 != null ? token2.getText() : null;
        if (text2 != null) {
            StringLiteralSymbol stringLiteralSymbol = (StringLiteralSymbol) this.grammar.tokenManager.getTokenSymbol(text2);
            if (stringLiteralSymbol != null) {
                if (text == null || stringLiteralSymbol.getLabel() != null) {
                    this.tool.warning(new StringBuffer("Redefinition of literal in tokens {...}: ").append(text2).toString(), this.grammar.getFilename(), token2.getLine(), token2.getColumn());
                    return;
                } else if (text != null) {
                    stringLiteralSymbol.setLabel(text);
                    this.grammar.tokenManager.mapToTokenSymbol(text, stringLiteralSymbol);
                }
            }
            if (text != null && (tokenSymbol = this.grammar.tokenManager.getTokenSymbol(text)) != null) {
                if (tokenSymbol instanceof StringLiteralSymbol) {
                    this.tool.warning(new StringBuffer("Redefinition of token in tokens {...}: ").append(text).toString(), this.grammar.getFilename(), token2.getLine(), token2.getColumn());
                    return;
                }
                int tokenType = tokenSymbol.getTokenType();
                StringLiteralSymbol stringLiteralSymbol2 = new StringLiteralSymbol(text2);
                stringLiteralSymbol2.setTokenType(tokenType);
                stringLiteralSymbol2.setLabel(text);
                this.grammar.tokenManager.define(stringLiteralSymbol2);
                this.grammar.tokenManager.mapToTokenSymbol(text, stringLiteralSymbol2);
                return;
            }
            StringLiteralSymbol stringLiteralSymbol3 = new StringLiteralSymbol(text2);
            stringLiteralSymbol3.setTokenType(this.grammar.tokenManager.nextTokenType());
            stringLiteralSymbol3.setLabel(text);
            this.grammar.tokenManager.define(stringLiteralSymbol3);
            if (text != null) {
                this.grammar.tokenManager.mapToTokenSymbol(text, stringLiteralSymbol3);
            }
        } else if (this.grammar.tokenManager.tokenDefined(text)) {
            this.tool.warning(new StringBuffer("Redefinition of token in tokens {...}: ").append(text).toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
        } else {
            int nextTokenType = this.grammar.tokenManager.nextTokenType();
            TokenSymbol tokenSymbol2 = new TokenSymbol(text);
            tokenSymbol2.setTokenType(nextTokenType);
            this.grammar.tokenManager.define(tokenSymbol2);
        }
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void endOptions() {
        if (this.grammar.exportVocab == null && this.grammar.importVocab == null) {
            Grammar grammar = this.grammar;
            grammar.exportVocab = grammar.getClassName();
            if (this.tokenManagers.containsKey(DEFAULT_TOKENMANAGER_NAME)) {
                this.grammar.exportVocab = DEFAULT_TOKENMANAGER_NAME;
                this.grammar.setTokenManager((TokenManager) this.tokenManagers.get(DEFAULT_TOKENMANAGER_NAME));
                return;
            }
            SimpleTokenManager simpleTokenManager = new SimpleTokenManager(this.grammar.exportVocab, this.tool);
            this.grammar.setTokenManager(simpleTokenManager);
            this.tokenManagers.put(this.grammar.exportVocab, simpleTokenManager);
            this.tokenManagers.put(DEFAULT_TOKENMANAGER_NAME, simpleTokenManager);
        } else if (this.grammar.exportVocab == null && this.grammar.importVocab != null) {
            Grammar grammar2 = this.grammar;
            grammar2.exportVocab = grammar2.getClassName();
            if (this.grammar.importVocab.equals(this.grammar.exportVocab)) {
                this.tool.warning(new StringBuffer("Grammar ").append(this.grammar.getClassName()).append(" cannot have importVocab same as default output vocab (grammar name); ignored.").toString());
                this.grammar.importVocab = null;
                endOptions();
            } else if (this.tokenManagers.containsKey(this.grammar.importVocab)) {
                TokenManager tokenManager = (TokenManager) ((TokenManager) this.tokenManagers.get(this.grammar.importVocab)).clone();
                tokenManager.setName(this.grammar.exportVocab);
                tokenManager.setReadOnly(false);
                this.grammar.setTokenManager(tokenManager);
                this.tokenManagers.put(this.grammar.exportVocab, tokenManager);
            } else {
                ImportVocabTokenManager importVocabTokenManager = new ImportVocabTokenManager(this.grammar, new StringBuffer().append(this.grammar.importVocab).append(CodeGenerator.TokenTypesFileSuffix).append(CodeGenerator.TokenTypesFileExt).toString(), this.grammar.exportVocab, this.tool);
                importVocabTokenManager.setReadOnly(false);
                this.tokenManagers.put(this.grammar.exportVocab, importVocabTokenManager);
                this.grammar.setTokenManager(importVocabTokenManager);
                if (this.tokenManagers.containsKey(DEFAULT_TOKENMANAGER_NAME)) {
                    return;
                }
                this.tokenManagers.put(DEFAULT_TOKENMANAGER_NAME, importVocabTokenManager);
            }
        } else if (this.grammar.exportVocab != null && this.grammar.importVocab == null) {
            if (this.tokenManagers.containsKey(this.grammar.exportVocab)) {
                this.grammar.setTokenManager((TokenManager) this.tokenManagers.get(this.grammar.exportVocab));
                return;
            }
            SimpleTokenManager simpleTokenManager2 = new SimpleTokenManager(this.grammar.exportVocab, this.tool);
            this.grammar.setTokenManager(simpleTokenManager2);
            this.tokenManagers.put(this.grammar.exportVocab, simpleTokenManager2);
            if (this.tokenManagers.containsKey(DEFAULT_TOKENMANAGER_NAME)) {
                return;
            }
            this.tokenManagers.put(DEFAULT_TOKENMANAGER_NAME, simpleTokenManager2);
        } else if (this.grammar.exportVocab == null || this.grammar.importVocab == null) {
        } else {
            if (this.grammar.importVocab.equals(this.grammar.exportVocab)) {
                this.tool.error(new StringBuffer("exportVocab of ").append(this.grammar.exportVocab).append(" same as importVocab; probably not what you want").toString());
            }
            if (this.tokenManagers.containsKey(this.grammar.importVocab)) {
                TokenManager tokenManager2 = (TokenManager) ((TokenManager) this.tokenManagers.get(this.grammar.importVocab)).clone();
                tokenManager2.setName(this.grammar.exportVocab);
                tokenManager2.setReadOnly(false);
                this.grammar.setTokenManager(tokenManager2);
                this.tokenManagers.put(this.grammar.exportVocab, tokenManager2);
                return;
            }
            ImportVocabTokenManager importVocabTokenManager2 = new ImportVocabTokenManager(this.grammar, new StringBuffer().append(this.grammar.importVocab).append(CodeGenerator.TokenTypesFileSuffix).append(CodeGenerator.TokenTypesFileExt).toString(), this.grammar.exportVocab, this.tool);
            importVocabTokenManager2.setReadOnly(false);
            this.tokenManagers.put(this.grammar.exportVocab, importVocabTokenManager2);
            this.grammar.setTokenManager(importVocabTokenManager2);
            if (this.tokenManagers.containsKey(DEFAULT_TOKENMANAGER_NAME)) {
                return;
            }
            this.tokenManagers.put(DEFAULT_TOKENMANAGER_NAME, importVocabTokenManager2);
        }
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refHeaderAction(Token token, Token token2) {
        String stripFrontBack;
        if (token == null) {
            stripFrontBack = "";
        } else {
            stripFrontBack = StringUtils.stripFrontBack(token.getText(), "\"", "\"");
        }
        if (this.headerActions.containsKey(stripFrontBack)) {
            if (stripFrontBack.equals("")) {
                this.tool.error(new StringBuffer().append(token2.getLine()).append(": header action already defined").toString());
            } else {
                this.tool.error(new StringBuffer().append(token2.getLine()).append(": header action '").append(stripFrontBack).append("' already defined").toString());
            }
        }
        this.headerActions.put(stripFrontBack, token2);
    }

    public String getHeaderAction(String str) {
        Token token = (Token) this.headerActions.get(str);
        if (token == null) {
            return "";
        }
        return token.getText();
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refPreambleAction(Token token) {
        this.thePreambleAction = token;
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refRule(Token token, Token token2, Token token3, Token token4, int i) {
        String text = token2.getText();
        if (token2.type == 24) {
            text = CodeGenerator.encodeLexerRuleName(text);
        }
        if (this.grammar.isDefined(text)) {
            return;
        }
        this.grammar.define(new RuleSymbol(text));
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refStringLiteral(Token token, Token token2, int i, boolean z) {
        _refStringLiteral(token, token2, i, z);
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refToken(Token token, Token token2, Token token3, Token token4, boolean z, int i, boolean z2) {
        _refToken(token, token2, token3, token4, z, i, z2);
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void refTokenRange(Token token, Token token2, Token token3, int i, boolean z) {
        if (token.getText().charAt(0) == '\"') {
            refStringLiteral(token, null, 1, z);
        } else {
            _refToken(null, token, null, null, false, 1, z);
        }
        if (token2.getText().charAt(0) == '\"') {
            _refStringLiteral(token2, null, 1, z);
        } else {
            _refToken(null, token2, null, null, false, 1, z);
        }
    }

    public void reset() {
        this.grammar = null;
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void setCharVocabulary(BitSet bitSet) {
        ((LexerGrammar) this.grammar).setCharVocabulary(bitSet);
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void setFileOption(Token token, Token token2, String str) {
        if (token.getText().equals("language")) {
            if (token2.getType() == 6) {
                this.language = StringUtils.stripBack(StringUtils.stripFront(token2.getText(), (char) Typography.quote), (char) Typography.quote);
            } else if (token2.getType() == 24 || token2.getType() == 28) {
                this.language = token2.getText();
            } else {
                this.tool.error("language option must be string or identifier", str, token2.getLine(), token2.getColumn());
            }
        } else if (token.getText().equals("mangleLiteralPrefix")) {
            if (token2.getType() == 6) {
                Tool.literalsPrefix = StringUtils.stripFrontBack(token2.getText(), "\"", "\"");
            } else {
                this.tool.error("mangleLiteralPrefix option must be string", str, token2.getLine(), token2.getColumn());
            }
        } else if (token.getText().equals("upperCaseMangledLiterals")) {
            if (token2.getText().equals("true")) {
                Tool.upperCaseMangledLiterals = true;
            } else if (token2.getText().equals("false")) {
                Tool.upperCaseMangledLiterals = false;
            } else {
                this.grammar.antlrTool.error("Value for upperCaseMangledLiterals must be true or false", str, token.getLine(), token.getColumn());
            }
        } else if (token.getText().equals("namespaceStd") || token.getText().equals("namespaceAntlr") || token.getText().equals("genHashLines")) {
            if (!this.language.equals("Cpp")) {
                this.tool.error(new StringBuffer().append(token.getText()).append(" option only valid for C++").toString(), str, token.getLine(), token.getColumn());
            } else if (token.getText().equals("noConstructors")) {
                if (!token2.getText().equals("true") && !token2.getText().equals("false")) {
                    this.tool.error("noConstructors option must be true or false", str, token2.getLine(), token2.getColumn());
                }
                this.tool.noConstructors = token2.getText().equals("true");
            } else if (token.getText().equals("genHashLines")) {
                if (!token2.getText().equals("true") && !token2.getText().equals("false")) {
                    this.tool.error("genHashLines option must be true or false", str, token2.getLine(), token2.getColumn());
                }
                this.tool.genHashLines = token2.getText().equals("true");
            } else if (token2.getType() != 6) {
                this.tool.error(new StringBuffer().append(token.getText()).append(" option must be a string").toString(), str, token2.getLine(), token2.getColumn());
            } else if (token.getText().equals("namespaceStd")) {
                this.tool.namespaceStd = token2.getText();
            } else if (token.getText().equals("namespaceAntlr")) {
                this.tool.namespaceAntlr = token2.getText();
            }
        } else if (token.getText().equals("namespace")) {
            if (!this.language.equals("Cpp") && !this.language.equals("CSharp")) {
                this.tool.error(new StringBuffer().append(token.getText()).append(" option only valid for C++ and C# (a.k.a CSharp)").toString(), str, token.getLine(), token.getColumn());
            } else if (token2.getType() != 6) {
                this.tool.error(new StringBuffer().append(token.getText()).append(" option must be a string").toString(), str, token2.getLine(), token2.getColumn());
            } else if (token.getText().equals("namespace")) {
                this.tool.setNameSpace(token2.getText());
            }
        } else {
            this.tool.error(new StringBuffer("Invalid file-level option: ").append(token.getText()).toString(), str, token.getLine(), token2.getColumn());
        }
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void setGrammarOption(Token token, Token token2) {
        if (token.getText().equals("tokdef") || token.getText().equals("tokenVocabulary")) {
            this.tool.error("tokdef/tokenVocabulary options are invalid >= ANTLR 2.6.0.\n  Use importVocab/exportVocab instead.  Please see the documentation.\n  The previous options were so heinous that Terence changed the whole\n  vocabulary mechanism; it was better to change the names rather than\n  subtly change the functionality of the known options.  Sorry!", this.grammar.getFilename(), token2.getLine(), token2.getColumn());
            return;
        }
        if (token.getText().equals("literal")) {
            Grammar grammar = this.grammar;
            if (grammar instanceof LexerGrammar) {
                this.tool.error("the literal option is invalid >= ANTLR 2.6.0.\n  Use the \"tokens {...}\" mechanism instead.", grammar.getFilename(), token2.getLine(), token2.getColumn());
                return;
            }
        }
        if (token.getText().equals("exportVocab")) {
            if (token2.getType() == 28 || token2.getType() == 24) {
                this.grammar.exportVocab = token2.getText();
                return;
            }
            this.tool.error("exportVocab must be an identifier", this.grammar.getFilename(), token2.getLine(), token2.getColumn());
        } else if (token.getText().equals("importVocab")) {
            if (token2.getType() == 28 || token2.getType() == 24) {
                this.grammar.importVocab = token2.getText();
                return;
            }
            this.tool.error("importVocab must be an identifier", this.grammar.getFilename(), token2.getLine(), token2.getColumn());
        } else {
            this.grammar.setOption(token.getText(), token2);
        }
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void startLexer(String str, Token token, String str2, String str3) {
        if (this.numLexers > 0) {
            this.tool.panic(new StringBuffer("You may only have one lexer per grammar file: class ").append(token.getText()).toString());
        }
        this.numLexers++;
        reset();
        Grammar grammar = (Grammar) this.grammars.get(token);
        if (grammar != null) {
            if (!(grammar instanceof LexerGrammar)) {
                this.tool.panic(new StringBuffer("'").append(token.getText()).append("' is already defined as a non-lexer").toString());
                return;
            } else {
                this.tool.panic(new StringBuffer("Lexer '").append(token.getText()).append("' is already defined").toString());
                return;
            }
        }
        LexerGrammar lexerGrammar = new LexerGrammar(token.getText(), this.tool, str2);
        lexerGrammar.comment = str3;
        lexerGrammar.processArguments(this.args);
        lexerGrammar.setFilename(str);
        this.grammars.put(lexerGrammar.getClassName(), lexerGrammar);
        lexerGrammar.preambleAction = this.thePreambleAction;
        this.thePreambleAction = new CommonToken(0, "");
        this.grammar = lexerGrammar;
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void startParser(String str, Token token, String str2, String str3) {
        if (this.numParsers > 0) {
            this.tool.panic(new StringBuffer("You may only have one parser per grammar file: class ").append(token.getText()).toString());
        }
        this.numParsers++;
        reset();
        Grammar grammar = (Grammar) this.grammars.get(token);
        if (grammar != null) {
            if (!(grammar instanceof ParserGrammar)) {
                this.tool.panic(new StringBuffer("'").append(token.getText()).append("' is already defined as a non-parser").toString());
                return;
            } else {
                this.tool.panic(new StringBuffer("Parser '").append(token.getText()).append("' is already defined").toString());
                return;
            }
        }
        ParserGrammar parserGrammar = new ParserGrammar(token.getText(), this.tool, str2);
        this.grammar = parserGrammar;
        parserGrammar.comment = str3;
        this.grammar.processArguments(this.args);
        this.grammar.setFilename(str);
        this.grammars.put(this.grammar.getClassName(), this.grammar);
        this.grammar.preambleAction = this.thePreambleAction;
        this.thePreambleAction = new CommonToken(0, "");
    }

    @Override // antlr.ANTLRGrammarParseBehavior
    public void startTreeWalker(String str, Token token, String str2, String str3) {
        if (this.numTreeParsers > 0) {
            this.tool.panic(new StringBuffer("You may only have one tree parser per grammar file: class ").append(token.getText()).toString());
        }
        this.numTreeParsers++;
        reset();
        Grammar grammar = (Grammar) this.grammars.get(token);
        if (grammar != null) {
            if (!(grammar instanceof TreeWalkerGrammar)) {
                this.tool.panic(new StringBuffer("'").append(token.getText()).append("' is already defined as a non-tree-walker").toString());
                return;
            } else {
                this.tool.panic(new StringBuffer("Tree-walker '").append(token.getText()).append("' is already defined").toString());
                return;
            }
        }
        TreeWalkerGrammar treeWalkerGrammar = new TreeWalkerGrammar(token.getText(), this.tool, str2);
        this.grammar = treeWalkerGrammar;
        treeWalkerGrammar.comment = str3;
        this.grammar.processArguments(this.args);
        this.grammar.setFilename(str);
        this.grammars.put(this.grammar.getClassName(), this.grammar);
        this.grammar.preambleAction = this.thePreambleAction;
        this.thePreambleAction = new CommonToken(0, "");
    }
}
