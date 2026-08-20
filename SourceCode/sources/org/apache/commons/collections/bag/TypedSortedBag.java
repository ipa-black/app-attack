package org.apache.commons.collections.bag;

import org.apache.commons.collections.PredicateUtils;
import org.apache.commons.collections.SortedBag;
/* loaded from: classes5.dex */
public class TypedSortedBag {
    public static SortedBag decorate(SortedBag sortedBag, Class cls) {
        return new PredicatedSortedBag(sortedBag, PredicateUtils.instanceofPredicate(cls));
    }

    protected TypedSortedBag() {
    }
}
