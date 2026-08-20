package antlr;

import antlr.collections.AST;
import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class MismatchedTokenException extends RecognitionException {
    public static final int NOT_RANGE = 4;
    public static final int NOT_SET = 6;
    public static final int NOT_TOKEN = 2;
    public static final int RANGE = 3;
    public static final int SET = 5;
    public static final int TOKEN = 1;
    public int expecting;
    public int mismatchType;
    public AST node;
    public BitSet set;
    public Token token;
    String[] tokenNames;
    String tokenText;
    public int upper;

    public MismatchedTokenException() {
        super("Mismatched Token: expecting any AST node", "<AST>", -1, -1);
        this.tokenText = null;
    }

    public MismatchedTokenException(String[] strArr, AST ast, int i, int i2, boolean z) {
        super("Mismatched Token", "<AST>", -1, -1);
        this.tokenText = null;
        this.tokenNames = strArr;
        this.node = ast;
        if (ast == null) {
            this.tokenText = "<empty tree>";
        } else {
            this.tokenText = ast.toString();
        }
        this.mismatchType = z ? 4 : 3;
        this.expecting = i;
        this.upper = i2;
    }

    public MismatchedTokenException(String[] strArr, AST ast, int i, boolean z) {
        super("Mismatched Token", "<AST>", -1, -1);
        this.tokenText = null;
        this.tokenNames = strArr;
        this.node = ast;
        if (ast == null) {
            this.tokenText = "<empty tree>";
        } else {
            this.tokenText = ast.toString();
        }
        this.mismatchType = z ? 2 : 1;
        this.expecting = i;
    }

    public MismatchedTokenException(String[] strArr, AST ast, BitSet bitSet, boolean z) {
        super("Mismatched Token", "<AST>", -1, -1);
        this.tokenText = null;
        this.tokenNames = strArr;
        this.node = ast;
        if (ast == null) {
            this.tokenText = "<empty tree>";
        } else {
            this.tokenText = ast.toString();
        }
        this.mismatchType = z ? 6 : 5;
        this.set = bitSet;
    }

    public MismatchedTokenException(String[] strArr, Token token, int i, int i2, boolean z, String str) {
        super("Mismatched Token", str, token.getLine(), token.getColumn());
        this.tokenText = null;
        this.tokenNames = strArr;
        this.token = token;
        this.tokenText = token.getText();
        this.mismatchType = z ? 4 : 3;
        this.expecting = i;
        this.upper = i2;
    }

    public MismatchedTokenException(String[] strArr, Token token, int i, boolean z, String str) {
        super("Mismatched Token", str, token.getLine(), token.getColumn());
        this.tokenText = null;
        this.tokenNames = strArr;
        this.token = token;
        this.tokenText = token.getText();
        this.mismatchType = z ? 2 : 1;
        this.expecting = i;
    }

    public MismatchedTokenException(String[] strArr, Token token, BitSet bitSet, boolean z, String str) {
        super("Mismatched Token", str, token.getLine(), token.getColumn());
        this.tokenText = null;
        this.tokenNames = strArr;
        this.token = token;
        this.tokenText = token.getText();
        this.mismatchType = z ? 6 : 5;
        this.set = bitSet;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuffer stringBuffer = new StringBuffer();
        switch (this.mismatchType) {
            case 1:
                stringBuffer.append(new StringBuffer("expecting ").append(tokenName(this.expecting)).append(", found '").append(this.tokenText).append("'").toString());
                break;
            case 2:
                stringBuffer.append(new StringBuffer("expecting anything but ").append(tokenName(this.expecting)).append("; got it anyway").toString());
                break;
            case 3:
                stringBuffer.append(new StringBuffer("expecting token in range: ").append(tokenName(this.expecting)).append("..").append(tokenName(this.upper)).append(", found '").append(this.tokenText).append("'").toString());
                break;
            case 4:
                stringBuffer.append(new StringBuffer("expecting token NOT in range: ").append(tokenName(this.expecting)).append("..").append(tokenName(this.upper)).append(", found '").append(this.tokenText).append("'").toString());
                break;
            case 5:
            case 6:
                stringBuffer.append(new StringBuffer("expecting ").append(this.mismatchType == 6 ? "NOT " : "").append("one of (").toString());
                for (int i : this.set.toArray()) {
                    stringBuffer.append(" ");
                    stringBuffer.append(tokenName(i));
                }
                stringBuffer.append(new StringBuffer("), found '").append(this.tokenText).append("'").toString());
                break;
            default:
                stringBuffer.append(super.getMessage());
                break;
        }
        return stringBuffer.toString();
    }

    private String tokenName(int i) {
        if (i == 0) {
            return "<Set of tokens>";
        }
        if (i >= 0) {
            String[] strArr = this.tokenNames;
            if (i < strArr.length) {
                return strArr[i];
            }
        }
        return new StringBuffer("<").append(String.valueOf(i)).append(">").toString();
    }
}
