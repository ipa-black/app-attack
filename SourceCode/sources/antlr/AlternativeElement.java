package antlr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class AlternativeElement extends GrammarElement {
    protected int autoGenType;
    protected String enclosingRuleName;
    AlternativeElement next;

    public String getLabel() {
        return null;
    }

    public void setLabel(String str) {
    }

    public AlternativeElement(Grammar grammar) {
        super(grammar);
        this.autoGenType = 1;
    }

    public AlternativeElement(Grammar grammar, Token token) {
        super(grammar, token);
        this.autoGenType = 1;
    }

    public AlternativeElement(Grammar grammar, Token token, int i) {
        super(grammar, token);
        this.autoGenType = i;
    }

    public int getAutoGenType() {
        return this.autoGenType;
    }

    public void setAutoGenType(int i) {
        this.autoGenType = i;
    }
}
