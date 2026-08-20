package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RuleRefElement extends AlternativeElement {
    protected String args;
    protected String idAssign;
    protected String label;
    protected String targetRule;

    public RuleRefElement(Grammar grammar, Token token, int i) {
        super(grammar, token, i);
        this.args = null;
        this.idAssign = null;
        this.targetRule = token.getText();
        if (token.type == 24) {
            this.targetRule = CodeGenerator.encodeLexerRuleName(this.targetRule);
        }
    }

    @Override // antlr.GrammarElement
    public void generate() {
        this.grammar.generator.gen(this);
    }

    public String getArgs() {
        return this.args;
    }

    public String getIdAssign() {
        return this.idAssign;
    }

    @Override // antlr.AlternativeElement
    public String getLabel() {
        return this.label;
    }

    @Override // antlr.GrammarElement
    public Lookahead look(int i) {
        return this.grammar.theLLkAnalyzer.look(i, this);
    }

    public void setArgs(String str) {
        this.args = str;
    }

    public void setIdAssign(String str) {
        this.idAssign = str;
    }

    @Override // antlr.AlternativeElement
    public void setLabel(String str) {
        this.label = str;
    }

    @Override // antlr.GrammarElement
    public String toString() {
        if (this.args != null) {
            return new StringBuffer(" ").append(this.targetRule).append(this.args).toString();
        }
        return new StringBuffer(" ").append(this.targetRule).toString();
    }
}
