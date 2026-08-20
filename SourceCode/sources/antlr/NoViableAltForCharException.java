package antlr;
/* loaded from: classes.dex */
public class NoViableAltForCharException extends RecognitionException {
    public char foundChar;

    public NoViableAltForCharException(char c2, CharScanner charScanner) {
        super("NoViableAlt", charScanner.getFilename(), charScanner.getLine(), charScanner.getColumn());
        this.foundChar = c2;
    }

    public NoViableAltForCharException(char c2, String str, int i) {
        this(c2, str, i, -1);
    }

    public NoViableAltForCharException(char c2, String str, int i, int i2) {
        super("NoViableAlt", str, i, i2);
        this.foundChar = c2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String stringBuffer;
        char c2 = this.foundChar;
        if (c2 >= ' ' && c2 <= '~') {
            return new StringBuffer().append(new StringBuffer("unexpected char: '").append(this.foundChar).toString()).append('\'').toString();
        }
        int i = this.foundChar >> 4;
        if (i < 10) {
            stringBuffer = new StringBuffer("unexpected char: 0x").append((char) (i | 48)).toString();
        } else {
            stringBuffer = new StringBuffer("unexpected char: 0x").append((char) (i + 55)).toString();
        }
        int i2 = this.foundChar & 15;
        if (i2 < 10) {
            return new StringBuffer().append(stringBuffer).append((char) (i2 | 48)).toString();
        }
        return new StringBuffer().append(stringBuffer).append((char) (i2 + 55)).toString();
    }
}
