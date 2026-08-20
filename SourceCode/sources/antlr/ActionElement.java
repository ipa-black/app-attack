package antlr;
/* loaded from: classes.dex */
class ActionElement extends AlternativeElement {
    protected String actionText;
    protected boolean isSemPred;

    public ActionElement(Grammar grammar, Token token) {
        super(grammar);
        this.isSemPred = false;
        this.actionText = token.getText();
        this.line = token.getLine();
        this.column = token.getColumn();
    }

    @Override // antlr.GrammarElement
    public void generate() {
        this.grammar.generator.gen(this);
    }

    @Override // antlr.GrammarElement
    public Lookahead look(int i) {
        return this.grammar.theLLkAnalyzer.look(i, this);
    }

    @Override // antlr.GrammarElement
    public String toString() {
        return new StringBuffer(" ").append(this.actionText).append(this.isSemPred ? "?" : "").toString();
    }
}
