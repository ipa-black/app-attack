package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CharRangeElement extends AlternativeElement {
    protected char begin;
    protected String beginText;
    protected char end;
    protected String endText;
    String label;

    public CharRangeElement(LexerGrammar lexerGrammar, Token token, Token token2, int i) {
        super(lexerGrammar);
        this.begin = (char) 0;
        this.end = (char) 0;
        this.begin = (char) ANTLRLexer.tokenTypeForCharLiteral(token.getText());
        this.beginText = token.getText();
        this.end = (char) ANTLRLexer.tokenTypeForCharLiteral(token2.getText());
        this.endText = token2.getText();
        this.line = token.getLine();
        for (int i2 = this.begin; i2 <= this.end; i2++) {
            lexerGrammar.charVocabulary.add(i2);
        }
        this.autoGenType = i;
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
