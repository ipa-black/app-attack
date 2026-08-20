package antlr;
/* loaded from: classes.dex */
abstract class GrammarSymbol {
    protected String id;

    public GrammarSymbol() {
    }

    public GrammarSymbol(String str) {
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }
}
