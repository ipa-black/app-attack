package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class StringLiteralElement extends GrammarAtom {
    protected String processedAtomText;

    public StringLiteralElement(Grammar grammar, Token token, int i) {
        super(grammar, token, i);
        int i2;
        boolean z = grammar instanceof LexerGrammar;
        if (!z) {
            TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(this.atomText);
            if (tokenSymbol == null) {
                grammar.antlrTool.error(new StringBuffer("Undefined literal: ").append(this.atomText).toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
            } else {
                this.tokenType = tokenSymbol.getTokenType();
            }
        }
        this.line = token.getLine();
        this.processedAtomText = new String();
        int i3 = 1;
        while (i3 < this.atomText.length() - 1) {
            char charAt = this.atomText.charAt(i3);
            if (charAt == '\\' && (i2 = i3 + 1) < this.atomText.length() - 1) {
                charAt = this.atomText.charAt(i2);
                if (charAt == 'n') {
                    charAt = '\n';
                } else if (charAt == 'r') {
                    charAt = '\r';
                } else if (charAt == 't') {
                    charAt = '\t';
                }
                i3 = i2;
            }
            if (z) {
                ((LexerGrammar) grammar).charVocabulary.add(charAt);
            }
            this.processedAtomText = new StringBuffer().append(this.processedAtomText).append(charAt).toString();
            i3++;
        }
    }

    @Override // antlr.GrammarElement
    public void generate() {
        this.grammar.generator.gen(this);
    }

    @Override // antlr.GrammarElement
    public Lookahead look(int i) {
        return this.grammar.theLLkAnalyzer.look(i, this);
    }
}
