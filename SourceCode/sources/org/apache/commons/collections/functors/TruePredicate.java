package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Predicate;
/* loaded from: classes5.dex */
public final class TruePredicate implements Predicate, Serializable {
    public static final Predicate INSTANCE = new TruePredicate();
    static final long serialVersionUID = 3374767158756189740L;

    @Override // org.apache.commons.collections.Predicate
    public boolean evaluate(Object obj) {
        return true;
    }

    private TruePredicate() {
    }
}
