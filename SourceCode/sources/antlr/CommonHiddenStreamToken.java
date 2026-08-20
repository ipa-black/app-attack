package antlr;
/* loaded from: classes.dex */
public class CommonHiddenStreamToken extends CommonToken {
    protected CommonHiddenStreamToken hiddenAfter;
    protected CommonHiddenStreamToken hiddenBefore;

    public CommonHiddenStreamToken() {
    }

    public CommonHiddenStreamToken(int i, String str) {
        super(i, str);
    }

    public CommonHiddenStreamToken(String str) {
        super(str);
    }

    public CommonHiddenStreamToken getHiddenAfter() {
        return this.hiddenAfter;
    }

    public CommonHiddenStreamToken getHiddenBefore() {
        return this.hiddenBefore;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHiddenAfter(CommonHiddenStreamToken commonHiddenStreamToken) {
        this.hiddenAfter = commonHiddenStreamToken;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHiddenBefore(CommonHiddenStreamToken commonHiddenStreamToken) {
        this.hiddenBefore = commonHiddenStreamToken;
    }
}
