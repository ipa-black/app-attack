package antlr;
/* loaded from: classes.dex */
public class CharQueue {
    protected char[] buffer;
    protected int nbrEntries;
    private int offset;
    private int sizeLessOne;

    public CharQueue(int i) {
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

    public final void append(char c2) {
        if (this.nbrEntries == this.buffer.length) {
            expand();
        }
        char[] cArr = this.buffer;
        int i = this.offset;
        int i2 = this.nbrEntries;
        cArr[(i + i2) & this.sizeLessOne] = c2;
        this.nbrEntries = i2 + 1;
    }

    public final char elementAt(int i) {
        return this.buffer[this.sizeLessOne & (this.offset + i)];
    }

    private final void expand() {
        char[] cArr = new char[this.buffer.length * 2];
        for (int i = 0; i < this.buffer.length; i++) {
            cArr[i] = elementAt(i);
        }
        this.buffer = cArr;
        this.sizeLessOne = cArr.length - 1;
        this.offset = 0;
    }

    public void init(int i) {
        this.buffer = new char[i];
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
