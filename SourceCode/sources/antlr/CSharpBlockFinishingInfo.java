package antlr;
/* loaded from: classes.dex */
class CSharpBlockFinishingInfo {
    boolean generatedAnIf;
    boolean generatedSwitch;
    boolean needAnErrorClause;
    String postscript;

    public CSharpBlockFinishingInfo() {
        this.postscript = null;
        this.generatedSwitch = false;
        this.needAnErrorClause = true;
    }

    public CSharpBlockFinishingInfo(String str, boolean z, boolean z2, boolean z3) {
        this.postscript = str;
        this.generatedSwitch = z;
        this.generatedAnIf = z2;
        this.needAnErrorClause = z3;
    }
}
