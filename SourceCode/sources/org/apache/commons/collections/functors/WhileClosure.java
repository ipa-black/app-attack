package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Closure;
import org.apache.commons.collections.Predicate;
/* loaded from: classes5.dex */
public class WhileClosure implements Closure, Serializable {
    static final long serialVersionUID = -3110538116913760108L;
    private final Closure iClosure;
    private final boolean iDoLoop;
    private final Predicate iPredicate;

    public static Closure getInstance(Predicate predicate, Closure closure, boolean z) {
        if (predicate != null) {
            if (closure == null) {
                throw new IllegalArgumentException("Closure must not be null");
            }
            return new WhileClosure(predicate, closure, z);
        }
        throw new IllegalArgumentException("Predicate must not be null");
    }

    public WhileClosure(Predicate predicate, Closure closure, boolean z) {
        this.iPredicate = predicate;
        this.iClosure = closure;
        this.iDoLoop = z;
    }

    @Override // org.apache.commons.collections.Closure
    public void execute(Object obj) {
        if (this.iDoLoop) {
            this.iClosure.execute(obj);
        }
        while (this.iPredicate.evaluate(obj)) {
            this.iClosure.execute(obj);
        }
    }
}
