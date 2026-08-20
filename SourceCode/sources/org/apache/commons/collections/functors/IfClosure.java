package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Closure;
import org.apache.commons.collections.Predicate;
/* loaded from: classes5.dex */
public class IfClosure implements Closure, Serializable {
    static final long serialVersionUID = 3518477308466486130L;
    private final Closure iFalseClosure;
    private final Predicate iPredicate;
    private final Closure iTrueClosure;

    public static Closure getInstance(Predicate predicate, Closure closure, Closure closure2) {
        if (predicate != null) {
            if (closure == null || closure2 == null) {
                throw new IllegalArgumentException("Closures must not be null");
            }
            return new IfClosure(predicate, closure, closure2);
        }
        throw new IllegalArgumentException("Predicate must not be null");
    }

    public IfClosure(Predicate predicate, Closure closure, Closure closure2) {
        this.iPredicate = predicate;
        this.iTrueClosure = closure;
        this.iFalseClosure = closure2;
    }

    @Override // org.apache.commons.collections.Closure
    public void execute(Object obj) {
        if (this.iPredicate.evaluate(obj)) {
            this.iTrueClosure.execute(obj);
        } else {
            this.iFalseClosure.execute(obj);
        }
    }
}
