package antlr;
/* loaded from: classes.dex */
public class ANTLRHashString {
    private static final int prime = 151;
    private char[] buf;
    private int len;
    private CharScanner lexer;
    private String s;

    public ANTLRHashString(char[] cArr, int i, CharScanner charScanner) {
        this.lexer = charScanner;
        setBuffer(cArr, i);
    }

    public ANTLRHashString(CharScanner charScanner) {
        this.lexer = charScanner;
    }

    public ANTLRHashString(String str, CharScanner charScanner) {
        this.lexer = charScanner;
        setString(str);
    }

    private final char charAt(int i) {
        String str = this.s;
        return str != null ? str.charAt(i) : this.buf[i];
    }

    public boolean equals(Object obj) {
        ANTLRHashString aNTLRHashString;
        if ((obj instanceof ANTLRHashString) || (obj instanceof String)) {
            if (obj instanceof String) {
                aNTLRHashString = new ANTLRHashString((String) obj, this.lexer);
            } else {
                aNTLRHashString = (ANTLRHashString) obj;
            }
            int length = length();
            if (aNTLRHashString.length() != length) {
                return false;
            }
            if (this.lexer.getCaseSensitiveLiterals()) {
                for (int i = 0; i < length; i++) {
                    if (charAt(i) != aNTLRHashString.charAt(i)) {
                        return false;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < length; i2++) {
                if (this.lexer.toLower(charAt(i2)) != this.lexer.toLower(aNTLRHashString.charAt(i2))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int length = length();
        int i2 = 0;
        if (this.lexer.getCaseSensitiveLiterals()) {
            i = 0;
            while (i2 < length) {
                i = (i * prime) + charAt(i2);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < length) {
                i = (i * prime) + this.lexer.toLower(charAt(i2));
                i2++;
            }
        }
        return i;
    }

    private final int length() {
        String str = this.s;
        return str != null ? str.length() : this.len;
    }

    public void setBuffer(char[] cArr, int i) {
        this.buf = cArr;
        this.len = i;
        this.s = null;
    }

    public void setString(String str) {
        this.s = str;
        this.buf = null;
    }
}
