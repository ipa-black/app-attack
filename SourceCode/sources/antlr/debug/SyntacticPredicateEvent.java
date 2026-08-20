package antlr.debug;
/* loaded from: classes.dex */
public class SyntacticPredicateEvent extends GuessingEvent {
    public SyntacticPredicateEvent(Object obj) {
        super(obj);
    }

    public SyntacticPredicateEvent(Object obj, int i) {
        super(obj, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // antlr.debug.GuessingEvent
    public void setValues(int i, int i2) {
        super.setValues(i, i2);
    }

    @Override // java.util.EventObject
    public String toString() {
        return new StringBuffer("SyntacticPredicateEvent [").append(getGuessing()).append("]").toString();
    }
}
