package antlr.debug;
/* loaded from: classes.dex */
public abstract class GuessingEvent extends Event {
    private int guessing;

    public GuessingEvent(Object obj) {
        super(obj);
    }

    public GuessingEvent(Object obj, int i) {
        super(obj, i);
    }

    public int getGuessing() {
        return this.guessing;
    }

    void setGuessing(int i) {
        this.guessing = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i, int i2) {
        super.setValues(i);
        setGuessing(i2);
    }
}
