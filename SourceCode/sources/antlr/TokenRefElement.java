package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TokenRefElement extends GrammarAtom {
    public TokenRefElement(Grammar grammar, Token token, boolean z, int i) {
        super(grammar, token, i);
        this.not = z;
        TokenSymbol tokenSymbol = this.grammar.tokenManager.getTokenSymbol(this.atomText);
        if (tokenSymbol == null) {
            grammar.antlrTool.error(new StringBuffer("Undefined token symbol: ").append(this.atomText).toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
        } else {
            this.tokenType = tokenSymbol.getTokenType();
            setASTNodeType(tokenSymbol.getASTNodeType());
        }
        this.line = token.getLine();
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
