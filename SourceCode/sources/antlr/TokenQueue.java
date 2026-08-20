package antlr;
/* loaded from: classes.dex */
class TokenQueue {
    private Token[] buffer;
    protected int nbrEntries;
    private int offset;
    private int sizeLessOne;

    public TokenQueue(int i) {
        if (i < 0) {
            init(16);
        } else if (i >= 1073741823) {
            init(Integer.MAX_VALUE);
        } else {
            int i2 = 2;
            while (i2 < i) {
                i2 *= 2;
            }
            init(i2);
        }
    }

    public final void append(Token token) {
        if (this.nbrEntries == this.buffer.length) {
            expand();
        }
        Token[] tokenArr = this.buffer;
        int i = this.offset;
        int i2 = this.nbrEntries;
        tokenArr[(i + i2) & this.sizeLessOne] = token;
        this.nbrEntries = i2 + 1;
    }

    public final Token elementAt(int i) {
        return this.buffer[this.sizeLessOne & (this.offset + i)];
    }

    private final void expand() {
        Token[] tokenArr = new Token[this.buffer.length * 2];
        for (int i = 0; i < this.buffer.length; i++) {
            tokenArr[i] = elementAt(i);
        }
        this.buffer = tokenArr;
        this.sizeLessOne = tokenArr.length - 1;
        this.offset = 0;
    }

    private final void init(int i) {
        this.buffer = new Token[i];
        this.sizeLessOne = i - 1;
        this.offset = 0;
        this.nbrEntries = 0;
    }

    public final void reset() {
        this.offset = 0;
        this.nbrEntries = 0;
    }

    public final void removeFirst() {
        this.offset = (this.offset + 1) & this.sizeLessOne;
        this.nbrEntries--;
    }
}
