package antlr.debug;
/* loaded from: classes.dex */
public class InputBufferEvent extends Event {
    public static final int CONSUME = 0;
    public static final int LA = 1;
    public static final int MARK = 2;
    public static final int REWIND = 3;

    /* renamed from: c  reason: collision with root package name */
    char f13c;
    int lookaheadAmount;

    public InputBufferEvent(Object obj) {
        super(obj);
    }

    public InputBufferEvent(Object obj, int i, char c2, int i2) {
        super(obj);
        setValues(i, c2, i2);
    }

    public char getChar() {
        return this.f13c;
    }

    public int getLookaheadAmount() {
        return this.lookaheadAmount;
    }

    void setChar(char c2) {
        this.f13c = c2;
    }

    void setLookaheadAmount(int i) {
        this.lookaheadAmount = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i, char c2, int i2) {
        super.setValues(i);
        setChar(c2);
        setLookaheadAmount(i2);
    }

    @Override // java.util.EventObject
    public String toString() {
        return new StringBuffer("CharBufferEvent [").append(getType() == 0 ? "CONSUME, " : "LA, ").append(getChar()).append(",").append(getLookaheadAmount()).append("]").toString();
    }
}
