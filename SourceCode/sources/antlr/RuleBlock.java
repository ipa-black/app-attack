package antlr;

import antlr.collections.impl.Vector;
import java.util.Hashtable;
/* loaded from: classes.dex */
public class RuleBlock extends AlternativeBlock {
    protected String argAction;
    protected Lookahead[] cache;
    protected boolean defaultErrorHandler;
    protected RuleEndElement endNode;
    Hashtable exceptionSpecs;
    protected String ignoreRule;
    Vector labeledElements;
    protected boolean[] lock;
    protected String returnAction;
    protected String ruleName;
    protected boolean testLiterals;
    protected String throwsSpec;

    public RuleBlock(Grammar grammar, String str) {
        super(grammar);
        this.argAction = null;
        this.throwsSpec = null;
        this.returnAction = null;
        this.testLiterals = false;
        this.defaultErrorHandler = true;
        this.ignoreRule = null;
        this.ruleName = str;
        this.labeledElements = new Vector();
        this.cache = new Lookahead[grammar.maxk + 1];
        this.exceptionSpecs = new Hashtable();
        setAutoGen(grammar instanceof ParserGrammar);
    }

    public RuleBlock(Grammar grammar, String str, int i, boolean z) {
        this(grammar, str);
        this.line = i;
        setAutoGen(z);
    }

    public void addExceptionSpec(ExceptionSpec exceptionSpec) {
        if (findExceptionSpec(exceptionSpec.label) != null) {
            if (exceptionSpec.label != null) {
                this.grammar.antlrTool.error(new StringBuffer("Rule '").append(this.ruleName).append("' already has an exception handler for label: ").append(exceptionSpec.label).toString());
                return;
            } else {
                this.grammar.antlrTool.error(new StringBuffer("Rule '").append(this.ruleName).append("' already has an exception handler").toString());
                return;
            }
        }
        this.exceptionSpecs.put(exceptionSpec.label == null ? "" : exceptionSpec.label.getText(), exceptionSpec);
    }

    public ExceptionSpec findExceptionSpec(Token token) {
        return (ExceptionSpec) this.exceptionSpecs.get(token == null ? "" : token.getText());
    }

    public ExceptionSpec findExceptionSpec(String str) {
        Hashtable hashtable = this.exceptionSpecs;
        if (str == null) {
            str = "";
        }
        return (ExceptionSpec) hashtable.get(str);
    }

    @Override // antlr.AlternativeBlock, antlr.GrammarElement
    public void generate() {
        this.grammar.generator.gen(this);
    }

    public boolean getDefaultErrorHandler() {
        return this.defaultErrorHandler;
    }

    public RuleEndElement getEndElement() {
        return this.endNode;
    }

    public String getIgnoreRule() {
        return this.ignoreRule;
    }

    public String getRuleName() {
        return this.ruleName;
    }

    public boolean getTestLiterals() {
        return this.testLiterals;
    }

    public boolean isLexerAutoGenRule() {
        return this.ruleName.equals("nextToken");
    }

    @Override // antlr.AlternativeBlock, antlr.GrammarElement
    public Lookahead look(int i) {
        return this.grammar.theLLkAnalyzer.look(i, this);
    }

    @Override // antlr.AlternativeBlock
    public void prepareForAnalysis() {
        super.prepareForAnalysis();
        this.lock = new boolean[this.grammar.maxk + 1];
    }

    public void setDefaultErrorHandler(boolean z) {
        this.defaultErrorHandler = z;
    }

    public void setEndElement(RuleEndElement ruleEndElement) {
        this.endNode = ruleEndElement;
    }

    @Override // antlr.AlternativeBlock
    public void setOption(Token token, Token token2) {
        if (token.getText().equals("defaultErrorHandler")) {
            if (token2.getText().equals("true")) {
                this.defaultErrorHandler = true;
            } else if (token2.getText().equals("false")) {
                this.defaultErrorHandler = false;
            } else {
                this.grammar.antlrTool.error("Value for defaultErrorHandler must be true or false", this.grammar.getFilename(), token.getLine(), token.getColumn());
            }
        } else if (token.getText().equals("testLiterals")) {
            if (!(this.grammar instanceof LexerGrammar)) {
                this.grammar.antlrTool.error("testLiterals option only valid for lexer rules", this.grammar.getFilename(), token.getLine(), token.getColumn());
            } else if (token2.getText().equals("true")) {
                this.testLiterals = true;
            } else if (token2.getText().equals("false")) {
                this.testLiterals = false;
            } else {
                this.grammar.antlrTool.error("Value for testLiterals must be true or false", this.grammar.getFilename(), token.getLine(), token.getColumn());
            }
        } else if (token.getText().equals("ignore")) {
            if (!(this.grammar instanceof LexerGrammar)) {
                this.grammar.antlrTool.error("ignore option only valid for lexer rules", this.grammar.getFilename(), token.getLine(), token.getColumn());
            } else {
                this.ignoreRule = token2.getText();
            }
        } else if (token.getText().equals("paraphrase")) {
            if (!(this.grammar instanceof LexerGrammar)) {
                this.grammar.antlrTool.error("paraphrase option only valid for lexer rules", this.grammar.getFilename(), token.getLine(), token.getColumn());
                return;
            }
            TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(this.ruleName);
            if (tokenSymbol == null) {
                this.grammar.antlrTool.panic(new StringBuffer("cannot find token associated with rule ").append(this.ruleName).toString());
            }
            tokenSymbol.setParaphrase(token2.getText());
        } else if (token.equals("generateAmbigWarnings")) {
            if (token2.getText().equals("true")) {
                this.generateAmbigWarnings = true;
            } else if (token2.getText().equals("false")) {
                this.generateAmbigWarnings = false;
            } else {
                this.grammar.antlrTool.error("Value for generateAmbigWarnings must be true or false", this.grammar.getFilename(), token.getLine(), token.getColumn());
            }
        } else {
            this.grammar.antlrTool.error(new StringBuffer("Invalid rule option: ").append(token.getText()).toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
        }
    }

    @Override // antlr.AlternativeBlock, antlr.GrammarElement
    public String toString() {
        Lookahead[] lookaheadArr = this.endNode.cache;
        int i = this.grammar.maxk;
        String str = " FOLLOW={";
        boolean z = true;
        for (int i2 = 1; i2 <= i; i2++) {
            if (lookaheadArr[i2] != null) {
                str = new StringBuffer().append(str).append(lookaheadArr[i2].toString(",", this.grammar.tokenManager.getVocabulary())).toString();
                z = false;
                if (i2 < i && lookaheadArr[i2 + 1] != null) {
                    str = new StringBuffer().append(str).append(";").toString();
                }
            }
        }
        String stringBuffer = new StringBuffer().append(str).append("}").toString();
        if (z) {
            stringBuffer = "";
        }
        return new StringBuffer().append(this.ruleName).append(": ").append(super.toString()).append(" ;").append(stringBuffer).toString();
    }
}
