package antlr.debug;

import java.util.EventObject;
/* loaded from: classes.dex */
public abstract class Event extends EventObject {
    private int type;

    public Event(Object obj) {
        super(obj);
    }

    public Event(Object obj, int i) {
        super(obj);
        setType(i);
    }

    public int getType() {
        return this.type;
    }

    void setType(int i) {
        this.type = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(int i) {
        setType(i);
    }
}
