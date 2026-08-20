package antlr.debug;
/* loaded from: classes.dex */
public class TraceEvent extends GuessingEvent {
    public static int DONE_PARSING = 2;
    public static int ENTER = 0;
    public static int EXIT = 1;
    private int data;
    private int ruleNum;

    public TraceEvent(Object obj) {
        super(obj);
    }

    public TraceEvent(Object obj, int i, int i2, int i3, int i4) {
        super(obj);
        setValues(i, i2, i3, i4);
    }

    public int getData() {
        return this.data;
    }

    public int getRuleNum() {
        return this.ruleNum;
    }

    void setData(int i) {
        this.data = i;
    }

    void setRuleNum(int i) {
        this.ruleNum = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i, int i2, int i3, int i4) {
        super.setValues(i, i3);
        setRuleNum(i2);
        setData(i4);
    }

    @Override // java.util.EventObject
    public String toString() {
        return new StringBuffer("ParserTraceEvent [").append(getType() == ENTER ? "enter," : "exit,").append(getRuleNum()).append(",").append(getGuessing()).append("]").toString();
    }
}
