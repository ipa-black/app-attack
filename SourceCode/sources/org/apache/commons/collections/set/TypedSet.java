package org.apache.commons.collections.set;

import java.util.Set;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedSet {
    public static Set decorate(Set set, Class cls) {
        return new PredicatedSet(set, PredicateUtils.instanceofPredicate(cls));
    }

    protected TypedSet() {
    }
}
