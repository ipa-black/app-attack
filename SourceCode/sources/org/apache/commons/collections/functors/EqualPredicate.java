package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Predicate;
/* loaded from: classes5.dex */
public final class EqualPredicate implements Predicate, Serializable {
    static final long serialVersionUID = 5633766978029907089L;
    private final Object iValue;

    public static Predicate getInstance(Object obj) {
        if (obj == null) {
            return NullPredicate.INSTANCE;
        }
        return new EqualPredicate(obj);
    }

    public EqualPredicate(Object obj) {
        this.iValue = obj;
    }

    @Override // org.apache.commons.collections.Predicate
    public boolean evaluate(Object obj) {
        return this.iValue.equals(obj);
    }
}
