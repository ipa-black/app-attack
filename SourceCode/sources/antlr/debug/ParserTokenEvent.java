package antlr.debug;
/* loaded from: classes.dex */
public class ParserTokenEvent extends Event {
    public static int CONSUME = 1;
    public static int LA;
    private int amount;
    private int value;

    public ParserTokenEvent(Object obj) {
        super(obj);
    }

    public ParserTokenEvent(Object obj, int i, int i2, int i3) {
        super(obj);
        setValues(i, i2, i3);
    }

    public int getAmount() {
        return this.amount;
    }

    public int getValue() {
        return this.value;
    }

    void setAmount(int i) {
        this.amount = i;
    }

    void setValue(int i) {
        this.value = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i, int i2, int i3) {
        super.setValues(i);
        setAmount(i2);
        setValue(i3);
    }

    @Override // java.util.EventObject
    public String toString() {
        if (getType() == LA) {
            return new StringBuffer("ParserTokenEvent [LA,").append(getAmount()).append(",").append(getValue()).append("]").toString();
        }
        return new StringBuffer("ParserTokenEvent [consume,1,").append(getValue()).append("]").toString();
    }
}
