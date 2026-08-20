package antlr;
/* loaded from: classes.dex */
class JavaBlockFinishingInfo {
    boolean generatedAnIf;
    boolean generatedSwitch;
    boolean needAnErrorClause;
    String postscript;

    public JavaBlockFinishingInfo() {
        this.postscript = null;
        this.generatedSwitch = false;
        this.needAnErrorClause = true;
    }

    public JavaBlockFinishingInfo(String str, boolean z, boolean z2, boolean z3) {
        this.postscript = str;
        this.generatedSwitch = z;
        this.generatedAnIf = z2;
        this.needAnErrorClause = z3;
    }
}
