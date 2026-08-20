package org.apache.commons.collections.set;

import java.util.SortedSet;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedSortedSet {
    public static SortedSet decorate(SortedSet sortedSet, Class cls) {
        return new PredicatedSortedSet(sortedSet, PredicateUtils.instanceofPredicate(cls));
    }

    protected TypedSortedSet() {
    }
}
