package antlr.debug;
/* loaded from: classes.dex */
public class SemanticPredicateEvent extends GuessingEvent {
    public static final int PREDICTING = 1;
    public static final int VALIDATING = 0;
    private int condition;
    private boolean result;

    public SemanticPredicateEvent(Object obj) {
        super(obj);
    }

    public SemanticPredicateEvent(Object obj, int i) {
        super(obj, i);
    }

    public int getCondition() {
        return this.condition;
    }

    public boolean getResult() {
        return this.result;
    }

    void setCondition(int i) {
        this.condition = i;
    }

    void setResult(boolean z) {
        this.result = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i, int i2, boolean z, int i3) {
        super.setValues(i, i3);
        setCondition(i2);
        setResult(z);
    }

    @Override // java.util.EventObject
    public String toString() {
        return new StringBuffer("SemanticPredicateEvent [").append(getCondition()).append(",").append(getResult()).append(",").append(getGuessing()).append("]").toString();
    }
}
