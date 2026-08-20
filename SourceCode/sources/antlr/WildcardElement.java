package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WildcardElement extends GrammarAtom {
    protected String label;

    public WildcardElement(Grammar grammar, Token token, int i) {
        super(grammar, token, i);
        this.line = token.getLine();
    }

    @Override // antlr.GrammarElement
    public void generate() {
        this.grammar.generator.gen(this);
    }

    @Override // antlr.GrammarAtom, antlr.AlternativeElement
    public String getLabel() {
        return this.label;
    }

    @Override // antlr.GrammarElement
    public Lookahead look(int i) {
        return this.grammar.theLLkAnalyzer.look(i, this);
    }

    @Override // antlr.GrammarAtom, antlr.AlternativeElement
    public void setLabel(String str) {
        this.label = str;
    }

    @Override // antlr.GrammarAtom, antlr.GrammarElement
    public String toString() {
        return new StringBuffer().append(this.label != null ? new StringBuffer(" ").append(this.label).append(":").toString() : " ").append(".").toString();
    }
}
