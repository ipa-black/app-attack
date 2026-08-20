package antlr;

import antlr.collections.impl.BitSet;
/* loaded from: classes.dex */
public class MismatchedCharException extends RecognitionException {
    public static final int CHAR = 1;
    public static final int NOT_CHAR = 2;
    public static final int NOT_RANGE = 4;
    public static final int NOT_SET = 6;
    public static final int RANGE = 3;
    public static final int SET = 5;
    public int expecting;
    public int foundChar;
    public int mismatchType;
    public CharScanner scanner;
    public BitSet set;
    public int upper;

    public MismatchedCharException() {
        super("Mismatched char");
    }

    public MismatchedCharException(char c2, char c3, char c4, boolean z, CharScanner charScanner) {
        super("Mismatched char", charScanner.getFilename(), charScanner.getLine(), charScanner.getColumn());
        this.mismatchType = z ? 4 : 3;
        this.foundChar = c2;
        this.expecting = c3;
        this.upper = c4;
        this.scanner = charScanner;
    }

    public MismatchedCharException(char c2, char c3, boolean z, CharScanner charScanner) {
        super("Mismatched char", charScanner.getFilename(), charScanner.getLine(), charScanner.getColumn());
        this.mismatchType = z ? 2 : 1;
        this.foundChar = c2;
        this.expecting = c3;
        this.scanner = charScanner;
    }

    public MismatchedCharException(char c2, BitSet bitSet, boolean z, CharScanner charScanner) {
        super("Mismatched char", charScanner.getFilename(), charScanner.getLine(), charScanner.getColumn());
        this.mismatchType = z ? 6 : 5;
        this.foundChar = c2;
        this.set = bitSet;
        this.scanner = charScanner;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuffer stringBuffer = new StringBuffer();
        switch (this.mismatchType) {
            case 1:
                stringBuffer.append("expecting ");
                appendCharName(stringBuffer, this.expecting);
                stringBuffer.append(", found ");
                appendCharName(stringBuffer, this.foundChar);
                break;
            case 2:
                stringBuffer.append("expecting anything but '");
                appendCharName(stringBuffer, this.expecting);
                stringBuffer.append("'; got it anyway");
                break;
            case 3:
            case 4:
                stringBuffer.append("expecting token ");
                if (this.mismatchType == 4) {
                    stringBuffer.append("NOT ");
                }
                stringBuffer.append("in range: ");
                appendCharName(stringBuffer, this.expecting);
                stringBuffer.append("..");
                appendCharName(stringBuffer, this.upper);
                stringBuffer.append(", found ");
                appendCharName(stringBuffer, this.foundChar);
                break;
            case 5:
            case 6:
                stringBuffer.append(new StringBuffer("expecting ").append(this.mismatchType != 6 ? "" : "NOT ").append("one of (").toString());
                for (int i : this.set.toArray()) {
                    appendCharName(stringBuffer, i);
                }
                stringBuffer.append("), found ");
                appendCharName(stringBuffer, this.foundChar);
                break;
            default:
                stringBuffer.append(super.getMessage());
                break;
        }
        return stringBuffer.toString();
    }

    private void appendCharName(StringBuffer stringBuffer, int i) {
        if (i == 9) {
            stringBuffer.append("'\\t'");
        } else if (i == 10) {
            stringBuffer.append("'\\n'");
        } else if (i == 13) {
            stringBuffer.append("'\\r'");
        } else if (i == 65535) {
            stringBuffer.append("'<EOF>'");
        } else {
            stringBuffer.append('\'');
            stringBuffer.append((char) i);
            stringBuffer.append('\'');
        }
    }
}
