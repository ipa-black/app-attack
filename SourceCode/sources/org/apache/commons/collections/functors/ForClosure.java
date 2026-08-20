package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Closure;
/* loaded from: classes5.dex */
public class ForClosure implements Closure, Serializable {
    static final long serialVersionUID = -1190120533393621674L;
    private final Closure iClosure;
    private final int iCount;

    public static Closure getInstance(int i, Closure closure) {
        if (i <= 0 || closure == null) {
            return NOPClosure.INSTANCE;
        }
        return i == 1 ? closure : new ForClosure(i, closure);
    }

    public ForClosure(int i, Closure closure) {
        this.iCount = i;
        this.iClosure = closure;
    }

    @Override // org.apache.commons.collections.Closure
    public void execute(Object obj) {
        for (int i = 0; i < this.iCount; i++) {
            this.iClosure.execute(obj);
        }
    }
}
