package antlr.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Option {
    protected Grammar enclosingGrammar;
    protected String name;
    protected String rhs;

    public Option(String str, String str2, Grammar grammar) {
        this.name = str;
        this.rhs = str2;
        setEnclosingGrammar(grammar);
    }

    public Grammar getEnclosingGrammar() {
        return this.enclosingGrammar;
    }

    public String getName() {
        return this.name;
    }

    public String getRHS() {
        return this.rhs;
    }

    public void setEnclosingGrammar(Grammar grammar) {
        this.enclosingGrammar = grammar;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRHS(String str) {
        this.rhs = str;
    }

    public String toString() {
        return new StringBuffer("\t").append(this.name).append("=").append(this.rhs).toString();
    }
}
