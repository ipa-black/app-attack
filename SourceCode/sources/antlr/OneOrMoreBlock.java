package antlr;

import org.slf4j.Marker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class OneOrMoreBlock extends BlockWithImpliedExitPath {
    public OneOrMoreBlock(Grammar grammar) {
        super(grammar);
    }

    public OneOrMoreBlock(Grammar grammar, Token token) {
        super(grammar, token);
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
        return new StringBuffer().append(super.toString()).append(Marker.ANY_NON_NULL_MARKER).toString();
    }
}
