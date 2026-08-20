package antlr;
/* loaded from: classes.dex */
public class CommonToken extends Token {
    protected int col;
    protected int line;
    protected String text;

    public CommonToken() {
        this.text = null;
    }

    public CommonToken(int i, String str) {
        this.text = null;
        this.type = i;
        setText(str);
    }

    public CommonToken(String str) {
        this.text = str;
    }

    @Override // antlr.Token
    public int getLine() {
        return this.line;
    }

    @Override // antlr.Token
    public String getText() {
        return this.text;
    }

    @Override // antlr.Token
    public void setLine(int i) {
        this.line = i;
    }

    @Override // antlr.Token
    public void setText(String str) {
        this.text = str;
    }

    @Override // antlr.Token
    public String toString() {
        return new StringBuffer("[\"").append(getText()).append("\",<").append(this.type).append(">,line=").append(this.line).append(",col=").append(this.col).append("]").toString();
    }

    @Override // antlr.Token
    public int getColumn() {
        return this.col;
    }

    @Override // antlr.Token
    public void setColumn(int i) {
        this.col = i;
    }
}
