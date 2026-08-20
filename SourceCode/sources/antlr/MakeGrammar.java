package antlr;

import antlr.collections.Stack;
import antlr.collections.impl.LList;
import antlr.collections.impl.Vector;
/* loaded from: classes.dex */
public class MakeGrammar extends DefineGrammarSymbols {
    protected Stack blocks;
    ExceptionSpec currentExceptionSpec;
    protected boolean grammarError;
    protected RuleRefElement lastRuleRef;
    protected int nested;
    protected RuleBlock ruleBlock;
    protected RuleEndElement ruleEnd;

    public MakeGrammar(Tool tool, String[] strArr, LLkAnalyzer lLkAnalyzer) {
        super(tool, strArr, lLkAnalyzer);
        this.blocks = new LList();
        this.nested = 0;
        this.grammarError = false;
        this.currentExceptionSpec = null;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void abortGrammar() {
        String str;
        if (this.grammar == null) {
            str = "unknown grammar";
        } else {
            str = this.grammar.getClassName();
        }
        this.tool.error(new StringBuffer("aborting grammar '").append(str).append("' due to errors").toString());
        super.abortGrammar();
    }

    protected void addElementToCurrentAlt(AlternativeElement alternativeElement) {
        alternativeElement.enclosingRuleName = this.ruleBlock.ruleName;
        context().addAlternativeElement(alternativeElement);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void beginAlt(boolean z) {
        super.beginAlt(z);
        Alternative alternative = new Alternative();
        alternative.setAutoGen(z);
        context().block.addAlternative(alternative);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void beginChildList() {
        super.beginChildList();
        context().block.addAlternative(new Alternative());
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void beginExceptionGroup() {
        super.beginExceptionGroup();
        if (context().block instanceof RuleBlock) {
            return;
        }
        this.tool.panic("beginExceptionGroup called outside of rule block");
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void beginExceptionSpec(Token token) {
        if (token != null) {
            token.setText(StringUtils.stripFront(StringUtils.stripBack(token.getText(), " \n\r\t"), " \n\r\t"));
        }
        super.beginExceptionSpec(token);
        this.currentExceptionSpec = new ExceptionSpec(token);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void beginSubRule(Token token, Token token2, boolean z) {
        super.beginSubRule(token, token2, z);
        this.blocks.push(new BlockContext());
        context().block = new AlternativeBlock(this.grammar, token2, z);
        context().altNum = 0;
        this.nested++;
        context().blockEnd = new BlockEndElement(this.grammar);
        context().blockEnd.block = context().block;
        labelElement(context().block, token);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void beginTree(Token token) throws SemanticException {
        if (!(this.grammar instanceof TreeWalkerGrammar)) {
            this.tool.error("Trees only allowed in TreeParser", this.grammar.getFilename(), token.getLine(), token.getColumn());
            throw new SemanticException("Trees only allowed in TreeParser");
        }
        super.beginTree(token);
        this.blocks.push(new TreeBlockContext());
        context().block = new TreeElement(this.grammar, token);
        context().altNum = 0;
    }

    public BlockContext context() {
        if (this.blocks.height() == 0) {
            return null;
        }
        return (BlockContext) this.blocks.top();
    }

    public static RuleBlock createNextTokenRule(Grammar grammar, Vector vector, String str) {
        RuleBlock ruleBlock = new RuleBlock(grammar, str);
        ruleBlock.setDefaultErrorHandler(grammar.getDefaultErrorHandler());
        RuleEndElement ruleEndElement = new RuleEndElement(grammar);
        ruleBlock.setEndElement(ruleEndElement);
        ruleEndElement.block = ruleBlock;
        for (int i = 0; i < vector.size(); i++) {
            RuleSymbol ruleSymbol = (RuleSymbol) vector.elementAt(i);
            if (!ruleSymbol.isDefined()) {
                grammar.antlrTool.error(new StringBuffer("Lexer rule ").append(ruleSymbol.id.substring(1)).append(" is not defined").toString());
            } else if (ruleSymbol.access.equals("public")) {
                Alternative alternative = new Alternative();
                Vector alternatives = ruleSymbol.getBlock().getAlternatives();
                if (alternatives != null && alternatives.size() == 1) {
                    Alternative alternative2 = (Alternative) alternatives.elementAt(0);
                    if (alternative2.semPred != null) {
                        alternative.semPred = alternative2.semPred;
                    }
                }
                RuleRefElement ruleRefElement = new RuleRefElement(grammar, new CommonToken(28, ruleSymbol.getId()), 1);
                ruleRefElement.setLabel("theRetToken");
                ruleRefElement.enclosingRuleName = "nextToken";
                ruleRefElement.next = ruleEndElement;
                alternative.addElement(ruleRefElement);
                alternative.setAutoGen(true);
                ruleBlock.addAlternative(alternative);
                ruleSymbol.addReference(ruleRefElement);
            }
        }
        ruleBlock.setAutoGen(true);
        ruleBlock.prepareForAnalysis();
        return ruleBlock;
    }

    private AlternativeBlock createOptionalRuleRef(String str, Token token) {
        AlternativeBlock alternativeBlock = new AlternativeBlock(this.grammar, token, false);
        String encodeLexerRuleName = CodeGenerator.encodeLexerRuleName(str);
        if (!this.grammar.isDefined(encodeLexerRuleName)) {
            this.grammar.define(new RuleSymbol(encodeLexerRuleName));
        }
        CommonToken commonToken = new CommonToken(24, str);
        commonToken.setLine(token.getLine());
        commonToken.setLine(token.getColumn());
        RuleRefElement ruleRefElement = new RuleRefElement(this.grammar, commonToken, 1);
        ruleRefElement.enclosingRuleName = this.ruleBlock.ruleName;
        BlockEndElement blockEndElement = new BlockEndElement(this.grammar);
        blockEndElement.block = alternativeBlock;
        Alternative alternative = new Alternative(ruleRefElement);
        alternative.addElement(blockEndElement);
        alternativeBlock.addAlternative(alternative);
        Alternative alternative2 = new Alternative();
        alternative2.addElement(blockEndElement);
        alternativeBlock.addAlternative(alternative2);
        alternativeBlock.prepareForAnalysis();
        return alternativeBlock;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void defineRuleName(Token token, String str, boolean z, String str2) throws SemanticException {
        if (token.type == 24) {
            if (!(this.grammar instanceof LexerGrammar)) {
                this.tool.error(new StringBuffer("Lexical rule ").append(token.getText()).append(" defined outside of lexer").toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
                token.setText(token.getText().toLowerCase());
            }
        } else if (this.grammar instanceof LexerGrammar) {
            this.tool.error(new StringBuffer("Lexical rule names must be upper case, '").append(token.getText()).append("' is not").toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
            token.setText(token.getText().toUpperCase());
        }
        super.defineRuleName(token, str, z, str2);
        String text = token.getText();
        if (token.type == 24) {
            text = CodeGenerator.encodeLexerRuleName(text);
        }
        RuleBlock ruleBlock = new RuleBlock(this.grammar, token.getText(), token.getLine(), z);
        ruleBlock.setDefaultErrorHandler(this.grammar.getDefaultErrorHandler());
        this.ruleBlock = ruleBlock;
        this.blocks.push(new BlockContext());
        context().block = ruleBlock;
        ((RuleSymbol) this.grammar.getSymbol(text)).setBlock(ruleBlock);
        RuleEndElement ruleEndElement = new RuleEndElement(this.grammar);
        this.ruleEnd = ruleEndElement;
        ruleBlock.setEndElement(ruleEndElement);
        this.nested = 0;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endAlt() {
        super.endAlt();
        if (this.nested == 0) {
            addElementToCurrentAlt(this.ruleEnd);
        } else {
            addElementToCurrentAlt(context().blockEnd);
        }
        context().altNum++;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endChildList() {
        super.endChildList();
        BlockEndElement blockEndElement = new BlockEndElement(this.grammar);
        blockEndElement.block = context().block;
        addElementToCurrentAlt(blockEndElement);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endExceptionGroup() {
        super.endExceptionGroup();
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endExceptionSpec() {
        super.endExceptionSpec();
        if (this.currentExceptionSpec == null) {
            this.tool.panic("exception processing internal error -- no active exception spec");
        }
        if (context().block instanceof RuleBlock) {
            ((RuleBlock) context().block).addExceptionSpec(this.currentExceptionSpec);
        } else if (context().currentAlt().exceptionSpec != null) {
            this.tool.error("Alternative already has an exception specification", this.grammar.getFilename(), context().block.getLine(), context().block.getColumn());
        } else {
            context().currentAlt().exceptionSpec = this.currentExceptionSpec;
        }
        this.currentExceptionSpec = null;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endGrammar() {
        if (this.grammarError) {
            abortGrammar();
        } else {
            super.endGrammar();
        }
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endRule(String str) {
        super.endRule(str);
        this.ruleEnd.block = ((BlockContext) this.blocks.pop()).block;
        this.ruleEnd.block.prepareForAnalysis();
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endSubRule() {
        super.endSubRule();
        this.nested--;
        BlockContext blockContext = (BlockContext) this.blocks.pop();
        AlternativeBlock alternativeBlock = blockContext.block;
        if (alternativeBlock.not && !(alternativeBlock instanceof SynPredBlock) && !(alternativeBlock instanceof ZeroOrMoreBlock) && !(alternativeBlock instanceof OneOrMoreBlock) && !this.analyzer.subruleCanBeInverted(alternativeBlock, this.grammar instanceof LexerGrammar)) {
            String property = System.getProperty("line.separator");
            this.tool.error(new StringBuffer("This subrule cannot be inverted.  Only subrules of the form:").append(property).append("    (T1|T2|T3...) or").append(property).append("    ('c1'|'c2'|'c3'...)").append(property).append("may be inverted (ranges are also allowed).").toString(), this.grammar.getFilename(), alternativeBlock.getLine(), alternativeBlock.getColumn());
        }
        if (alternativeBlock instanceof SynPredBlock) {
            SynPredBlock synPredBlock = (SynPredBlock) alternativeBlock;
            context().block.hasASynPred = true;
            context().currentAlt().synPred = synPredBlock;
            this.grammar.hasSyntacticPredicate = true;
            synPredBlock.removeTrackingOfRuleRefs(this.grammar);
        } else {
            addElementToCurrentAlt(alternativeBlock);
        }
        blockContext.blockEnd.block.prepareForAnalysis();
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void endTree() {
        super.endTree();
        addElementToCurrentAlt(((BlockContext) this.blocks.pop()).block);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void hasError() {
        this.grammarError = true;
    }

    private void labelElement(AlternativeElement alternativeElement, Token token) {
        if (token != null) {
            for (int i = 0; i < this.ruleBlock.labeledElements.size(); i++) {
                String label = ((AlternativeElement) this.ruleBlock.labeledElements.elementAt(i)).getLabel();
                if (label != null && label.equals(token.getText())) {
                    this.tool.error(new StringBuffer("Label '").append(token.getText()).append("' has already been defined").toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
                    return;
                }
            }
            alternativeElement.setLabel(token.getText());
            this.ruleBlock.labeledElements.appendElement(alternativeElement);
        }
    }

    public void noAutoGenSubRule() {
        context().block.setAutoGen(false);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void oneOrMoreSubRule() {
        if (context().block.not) {
            this.tool.error("'~' cannot be applied to (...)* subrule", this.grammar.getFilename(), context().block.getLine(), context().block.getColumn());
        }
        OneOrMoreBlock oneOrMoreBlock = new OneOrMoreBlock(this.grammar);
        setBlock(oneOrMoreBlock, context().block);
        this.blocks.push(new BlockContext());
        context().block = oneOrMoreBlock;
        context().blockEnd = ((BlockContext) this.blocks.pop()).blockEnd;
        context().blockEnd.block = oneOrMoreBlock;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void optionalSubRule() {
        if (context().block.not) {
            this.tool.error("'~' cannot be applied to (...)? subrule", this.grammar.getFilename(), context().block.getLine(), context().block.getColumn());
        }
        beginAlt(false);
        endAlt();
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refAction(Token token) {
        super.refAction(token);
        context().block.hasAnAction = true;
        addElementToCurrentAlt(new ActionElement(this.grammar, token));
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void setUserExceptions(String str) {
        ((RuleBlock) context().block).throwsSpec = str;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refArgAction(Token token) {
        ((RuleBlock) context().block).argAction = token.getText();
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refCharLiteral(Token token, Token token2, boolean z, int i, boolean z2) {
        if (!(this.grammar instanceof LexerGrammar)) {
            this.tool.error("Character literal only valid in lexer", this.grammar.getFilename(), token.getLine(), token.getColumn());
            return;
        }
        super.refCharLiteral(token, token2, z, i, z2);
        CharLiteralElement charLiteralElement = new CharLiteralElement((LexerGrammar) this.grammar, token, z, i);
        if (!((LexerGrammar) this.grammar).caseSensitive && charLiteralElement.getType() < 128 && Character.toLowerCase((char) charLiteralElement.getType()) != ((char) charLiteralElement.getType())) {
            this.tool.warning("Character literal must be lowercase when caseSensitive=false", this.grammar.getFilename(), token.getLine(), token.getColumn());
        }
        addElementToCurrentAlt(charLiteralElement);
        labelElement(charLiteralElement, token2);
        String ignoreRule = this.ruleBlock.getIgnoreRule();
        if (z2 || ignoreRule == null) {
            return;
        }
        addElementToCurrentAlt(createOptionalRuleRef(ignoreRule, token));
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refCharRange(Token token, Token token2, Token token3, int i, boolean z) {
        if (!(this.grammar instanceof LexerGrammar)) {
            this.tool.error("Character range only valid in lexer", this.grammar.getFilename(), token.getLine(), token.getColumn());
            return;
        }
        int i2 = ANTLRLexer.tokenTypeForCharLiteral(token.getText());
        int i3 = ANTLRLexer.tokenTypeForCharLiteral(token2.getText());
        if (i3 < i2) {
            this.tool.error("Malformed range.", this.grammar.getFilename(), token.getLine(), token.getColumn());
            return;
        }
        if (!((LexerGrammar) this.grammar).caseSensitive) {
            if (i2 < 128) {
                char c2 = (char) i2;
                if (Character.toLowerCase(c2) != c2) {
                    this.tool.warning("Character literal must be lowercase when caseSensitive=false", this.grammar.getFilename(), token.getLine(), token.getColumn());
                }
            }
            if (i3 < 128) {
                char c3 = (char) i3;
                if (Character.toLowerCase(c3) != c3) {
                    this.tool.warning("Character literal must be lowercase when caseSensitive=false", this.grammar.getFilename(), token2.getLine(), token2.getColumn());
                }
            }
        }
        super.refCharRange(token, token2, token3, i, z);
        CharRangeElement charRangeElement = new CharRangeElement((LexerGrammar) this.grammar, token, token2, i);
        addElementToCurrentAlt(charRangeElement);
        labelElement(charRangeElement, token3);
        String ignoreRule = this.ruleBlock.getIgnoreRule();
        if (z || ignoreRule == null) {
            return;
        }
        addElementToCurrentAlt(createOptionalRuleRef(ignoreRule, token));
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refTokensSpecElementOption(Token token, Token token2, Token token3) {
        TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(token.getText());
        if (tokenSymbol == null) {
            this.tool.panic(new StringBuffer("cannot find ").append(token.getText()).append("in tokens {...}").toString());
        }
        if (token2.getText().equals("AST")) {
            tokenSymbol.setASTNodeType(token3.getText());
        } else {
            this.grammar.antlrTool.error(new StringBuffer("invalid tokens {...} element option:").append(token2.getText()).toString(), this.grammar.getFilename(), token2.getLine(), token2.getColumn());
        }
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refElementOption(Token token, Token token2) {
        AlternativeElement currentElement = context().currentElement();
        if ((currentElement instanceof StringLiteralElement) || (currentElement instanceof TokenRefElement) || (currentElement instanceof WildcardElement)) {
            ((GrammarAtom) currentElement).setOption(token, token2);
        } else {
            this.tool.error(new StringBuffer("cannot use element option (").append(token.getText()).append(") for this kind of element").toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
        }
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refExceptionHandler(Token token, Token token2) {
        super.refExceptionHandler(token, token2);
        if (this.currentExceptionSpec == null) {
            this.tool.panic("exception handler processing internal error");
        }
        this.currentExceptionSpec.addHandler(new ExceptionHandler(token, token2));
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refInitAction(Token token) {
        super.refAction(token);
        context().block.setInitAction(token.getText());
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refMemberAction(Token token) {
        this.grammar.classMemberAction = token;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refPreambleAction(Token token) {
        super.refPreambleAction(token);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refReturnAction(Token token) {
        if (this.grammar instanceof LexerGrammar) {
            if (((RuleSymbol) this.grammar.getSymbol(CodeGenerator.encodeLexerRuleName(((RuleBlock) context().block).getRuleName()))).access.equals("public")) {
                this.tool.warning("public Lexical rules cannot specify return type", this.grammar.getFilename(), token.getLine(), token.getColumn());
                return;
            }
        }
        ((RuleBlock) context().block).returnAction = token.getText();
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refRule(Token token, Token token2, Token token3, Token token4, int i) {
        if (this.grammar instanceof LexerGrammar) {
            if (token2.type != 24) {
                this.tool.error(new StringBuffer("Parser rule ").append(token2.getText()).append(" referenced in lexer").toString());
                return;
            } else if (i == 2) {
                this.tool.error("AST specification ^ not allowed in lexer", this.grammar.getFilename(), token2.getLine(), token2.getColumn());
            }
        }
        super.refRule(token, token2, token3, token4, i);
        RuleRefElement ruleRefElement = new RuleRefElement(this.grammar, token2, i);
        this.lastRuleRef = ruleRefElement;
        if (token4 != null) {
            ruleRefElement.setArgs(token4.getText());
        }
        if (token != null) {
            this.lastRuleRef.setIdAssign(token.getText());
        }
        addElementToCurrentAlt(this.lastRuleRef);
        String text = token2.getText();
        if (token2.type == 24) {
            text = CodeGenerator.encodeLexerRuleName(text);
        }
        ((RuleSymbol) this.grammar.getSymbol(text)).addReference(this.lastRuleRef);
        labelElement(this.lastRuleRef, token3);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refSemPred(Token token) {
        super.refSemPred(token);
        if (context().currentAlt().atStart()) {
            context().currentAlt().semPred = token.getText();
            return;
        }
        ActionElement actionElement = new ActionElement(this.grammar, token);
        actionElement.isSemPred = true;
        addElementToCurrentAlt(actionElement);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refStringLiteral(Token token, Token token2, int i, boolean z) {
        super.refStringLiteral(token, token2, i, z);
        if ((this.grammar instanceof TreeWalkerGrammar) && i == 2) {
            this.tool.error("^ not allowed in here for tree-walker", this.grammar.getFilename(), token.getLine(), token.getColumn());
        }
        StringLiteralElement stringLiteralElement = new StringLiteralElement(this.grammar, token, i);
        if ((this.grammar instanceof LexerGrammar) && !((LexerGrammar) this.grammar).caseSensitive) {
            int i2 = 1;
            while (true) {
                if (i2 >= token.getText().length() - 1) {
                    break;
                }
                char charAt = token.getText().charAt(i2);
                if (charAt < 128 && Character.toLowerCase(charAt) != charAt) {
                    this.tool.warning("Characters of string literal must be lowercase when caseSensitive=false", this.grammar.getFilename(), token.getLine(), token.getColumn());
                    break;
                }
                i2++;
            }
        }
        addElementToCurrentAlt(stringLiteralElement);
        labelElement(stringLiteralElement, token2);
        String ignoreRule = this.ruleBlock.getIgnoreRule();
        if (z || ignoreRule == null) {
            return;
        }
        addElementToCurrentAlt(createOptionalRuleRef(ignoreRule, token));
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refToken(Token token, Token token2, Token token3, Token token4, boolean z, int i, boolean z2) {
        if (this.grammar instanceof LexerGrammar) {
            if (i == 2) {
                this.tool.error("AST specification ^ not allowed in lexer", this.grammar.getFilename(), token2.getLine(), token2.getColumn());
            }
            if (z) {
                this.tool.error("~TOKEN is not allowed in lexer", this.grammar.getFilename(), token2.getLine(), token2.getColumn());
            }
            refRule(token, token2, token3, token4, i);
            String ignoreRule = this.ruleBlock.getIgnoreRule();
            if (z2 || ignoreRule == null) {
                return;
            }
            addElementToCurrentAlt(createOptionalRuleRef(ignoreRule, token2));
            return;
        }
        if (token != null) {
            this.tool.error("Assignment from token reference only allowed in lexer", this.grammar.getFilename(), token.getLine(), token.getColumn());
        }
        if (token4 != null) {
            this.tool.error("Token reference arguments only allowed in lexer", this.grammar.getFilename(), token4.getLine(), token4.getColumn());
        }
        super.refToken(token, token2, token3, token4, z, i, z2);
        TokenRefElement tokenRefElement = new TokenRefElement(this.grammar, token2, z, i);
        addElementToCurrentAlt(tokenRefElement);
        labelElement(tokenRefElement, token3);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refTokenRange(Token token, Token token2, Token token3, int i, boolean z) {
        if (this.grammar instanceof LexerGrammar) {
            this.tool.error("Token range not allowed in lexer", this.grammar.getFilename(), token.getLine(), token.getColumn());
            return;
        }
        super.refTokenRange(token, token2, token3, i, z);
        TokenRangeElement tokenRangeElement = new TokenRangeElement(this.grammar, token, token2, i);
        if (tokenRangeElement.end < tokenRangeElement.begin) {
            this.tool.error("Malformed range.", this.grammar.getFilename(), token.getLine(), token.getColumn());
            return;
        }
        addElementToCurrentAlt(tokenRangeElement);
        labelElement(tokenRangeElement, token3);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refTreeSpecifier(Token token) {
        context().currentAlt().treeSpecifier = token;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void refWildcard(Token token, Token token2, int i) {
        super.refWildcard(token, token2, i);
        WildcardElement wildcardElement = new WildcardElement(this.grammar, token, i);
        addElementToCurrentAlt(wildcardElement);
        labelElement(wildcardElement, token2);
    }

    @Override // antlr.DefineGrammarSymbols
    public void reset() {
        super.reset();
        this.blocks = new LList();
        this.lastRuleRef = null;
        this.ruleEnd = null;
        this.ruleBlock = null;
        this.nested = 0;
        this.currentExceptionSpec = null;
        this.grammarError = false;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void setArgOfRuleRef(Token token) {
        super.setArgOfRuleRef(token);
        this.lastRuleRef.setArgs(token.getText());
    }

    public static void setBlock(AlternativeBlock alternativeBlock, AlternativeBlock alternativeBlock2) {
        alternativeBlock.setAlternatives(alternativeBlock2.getAlternatives());
        alternativeBlock.initAction = alternativeBlock2.initAction;
        alternativeBlock.label = alternativeBlock2.label;
        alternativeBlock.hasASynPred = alternativeBlock2.hasASynPred;
        alternativeBlock.hasAnAction = alternativeBlock2.hasAnAction;
        alternativeBlock.warnWhenFollowAmbig = alternativeBlock2.warnWhenFollowAmbig;
        alternativeBlock.generateAmbigWarnings = alternativeBlock2.generateAmbigWarnings;
        alternativeBlock.line = alternativeBlock2.line;
        alternativeBlock.greedy = alternativeBlock2.greedy;
        alternativeBlock.greedySet = alternativeBlock2.greedySet;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void setRuleOption(Token token, Token token2) {
        this.ruleBlock.setOption(token, token2);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void setSubruleOption(Token token, Token token2) {
        context().block.setOption(token, token2);
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void synPred() {
        if (context().block.not) {
            this.tool.error("'~' cannot be applied to syntactic predicate", this.grammar.getFilename(), context().block.getLine(), context().block.getColumn());
        }
        SynPredBlock synPredBlock = new SynPredBlock(this.grammar);
        setBlock(synPredBlock, context().block);
        this.blocks.push(new BlockContext());
        context().block = synPredBlock;
        context().blockEnd = ((BlockContext) this.blocks.pop()).blockEnd;
        context().blockEnd.block = synPredBlock;
    }

    @Override // antlr.DefineGrammarSymbols, antlr.ANTLRGrammarParseBehavior
    public void zeroOrMoreSubRule() {
        if (context().block.not) {
            this.tool.error("'~' cannot be applied to (...)+ subrule", this.grammar.getFilename(), context().block.getLine(), context().block.getColumn());
        }
        ZeroOrMoreBlock zeroOrMoreBlock = new ZeroOrMoreBlock(this.grammar);
        setBlock(zeroOrMoreBlock, context().block);
        this.blocks.push(new BlockContext());
        context().block = zeroOrMoreBlock;
        context().blockEnd = ((BlockContext) this.blocks.pop()).blockEnd;
        context().blockEnd.block = zeroOrMoreBlock;
    }
}
