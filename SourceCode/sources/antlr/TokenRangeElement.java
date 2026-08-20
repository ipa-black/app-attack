package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TokenRangeElement extends AlternativeElement {
    protected int begin;
    protected String beginText;
    protected int end;
    protected String endText;
    String label;

    public TokenRangeElement(Grammar grammar, Token token, Token token2, int i) {
        super(grammar, token, i);
        this.begin = 0;
        this.end = 0;
        this.begin = this.grammar.tokenManager.getTokenSymbol(token.getText()).getTokenType();
        this.beginText = token.getText();
        this.end = this.grammar.tokenManager.getTokenSymbol(token2.getText()).getTokenType();
        this.endText = token2.getText();
        this.line = token.getLine();
    }

    @Override // antlr.GrammarElement
    public void generate() {
        this.grammar.generator.gen(this);
    }

    @Override // antlr.AlternativeElement
    public String getLabel() {
        return this.label;
    }

    @Override // antlr.GrammarElement
    public Lookahead look(int i) {
        return this.grammar.theLLkAnalyzer.look(i, this);
    }

    @Override // antlr.AlternativeElement
    public void setLabel(String str) {
        this.label = str;
    }

    @Override // antlr.GrammarElement
    public String toString() {
        if (this.label != null) {
            return new StringBuffer(" ").append(this.label).append(":").append(this.beginText).append("..").append(this.endText).toString();
        }
        return new StringBuffer(" ").append(this.beginText).append("..").append(this.endText).toString();
    }
}
