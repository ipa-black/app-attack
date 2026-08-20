package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Predicate;
/* loaded from: classes5.dex */
public final class FalsePredicate implements Predicate, Serializable {
    public static final Predicate INSTANCE = new FalsePredicate();
    static final long serialVersionUID = 7533784454832764388L;

    @Override // org.apache.commons.collections.Predicate
    public boolean evaluate(Object obj) {
        return false;
    }

    private FalsePredicate() {
    }
}
