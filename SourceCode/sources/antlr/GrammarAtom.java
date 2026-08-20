package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class GrammarAtom extends AlternativeElement {
    protected String ASTNodeType;
    protected String atomText;
    protected String label;
    protected boolean not;
    protected int tokenType;

    public GrammarAtom(Grammar grammar, Token token, int i) {
        super(grammar, token, i);
        this.tokenType = 0;
        this.not = false;
        this.ASTNodeType = null;
        this.atomText = token.getText();
    }

    @Override // antlr.AlternativeElement
    public String getLabel() {
        return this.label;
    }

    public String getText() {
        return this.atomText;
    }

    public int getType() {
        return this.tokenType;
    }

    @Override // antlr.AlternativeElement
    public void setLabel(String str) {
        this.label = str;
    }

    public String getASTNodeType() {
        return this.ASTNodeType;
    }

    public void setASTNodeType(String str) {
        this.ASTNodeType = str;
    }

    public void setOption(Token token, Token token2) {
        if (token.getText().equals("AST")) {
            setASTNodeType(token2.getText());
        } else {
            this.grammar.antlrTool.error(new StringBuffer("Invalid element option:").append(token.getText()).toString(), this.grammar.getFilename(), token.getLine(), token.getColumn());
        }
    }

    @Override // antlr.GrammarElement
    public String toString() {
        String stringBuffer = this.label != null ? new StringBuffer(" ").append(this.label).append(":").toString() : " ";
        if (this.not) {
            stringBuffer = new StringBuffer().append(stringBuffer).append("~").toString();
        }
        return new StringBuffer().append(stringBuffer).append(this.atomText).toString();
    }
}
