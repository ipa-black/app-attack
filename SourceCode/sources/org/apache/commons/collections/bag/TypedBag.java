package org.apache.commons.collections.bag;

import org.apache.commons.collections.Bag;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedBag {
    public static Bag decorate(Bag bag, Class cls) {
        return new PredicatedBag(bag, PredicateUtils.instanceofPredicate(cls));
    }

    protected TypedBag() {
    }
}
