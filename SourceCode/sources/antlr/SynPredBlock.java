package antlr;
/* loaded from: classes.dex */
class SynPredBlock extends AlternativeBlock {
    public SynPredBlock(Grammar grammar) {
        super(grammar);
    }

    public SynPredBlock(Grammar grammar, Token token) {
        super(grammar, token, false);
    }

    @Override // antlr.AlternativeBlock, antlr.GrammarElement
    public void generate() {
        this.grammar.generator.gen(this);
    }

    @Override // antlr.AlternativeBlock, antlr.GrammarElement
    public Lookahead look(int i) {
        return this.grammar.theLLkAnalyzer.look(i, this);
    }

    @Override // antlr.AlternativeBlock, antlr.GrammarElement
    public String toString() {
        return new StringBuffer().append(super.toString()).append("=>").toString();
    }
}
