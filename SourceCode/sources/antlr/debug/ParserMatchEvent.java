package antlr.debug;
/* loaded from: classes.dex */
public class ParserMatchEvent extends GuessingEvent {
    public static int BITSET = 1;
    public static int CHAR = 2;
    public static int CHAR_BITSET = 3;
    public static int CHAR_RANGE = 5;
    public static int STRING = 4;
    public static int TOKEN;
    private boolean inverse;
    private boolean matched;
    private Object target;
    private String text;
    private int value;

    public ParserMatchEvent(Object obj) {
        super(obj);
    }

    public ParserMatchEvent(Object obj, int i, int i2, Object obj2, String str, int i3, boolean z, boolean z2) {
        super(obj);
        setValues(i, i2, obj2, str, i3, z, z2);
    }

    public Object getTarget() {
        return this.target;
    }

    public String getText() {
        return this.text;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isInverse() {
        return this.inverse;
    }

    public boolean isMatched() {
        return this.matched;
    }

    void setInverse(boolean z) {
        this.inverse = z;
    }

    void setMatched(boolean z) {
        this.matched = z;
    }

    void setTarget(Object obj) {
        this.target = obj;
    }

    void setText(String str) {
        this.text = str;
    }

    void setValue(int i) {
        this.value = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i, int i2, Object obj, String str, int i3, boolean z, boolean z2) {
        super.setValues(i, i3);
        setValue(i2);
        setTarget(obj);
        setInverse(z);
        setMatched(z2);
        setText(str);
    }

    @Override // java.util.EventObject
    public String toString() {
        return new StringBuffer("ParserMatchEvent [").append(isMatched() ? "ok," : "bad,").append(isInverse() ? "NOT " : "").append(getType() == TOKEN ? "token," : "bitset,").append(getValue()).append(",").append(getTarget()).append(",").append(getGuessing()).append("]").toString();
    }
}
