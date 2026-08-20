package org.apache.commons.collections.map;

import java.util.SortedMap;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedSortedMap {
    public static SortedMap decorate(SortedMap sortedMap, Class cls, Class cls2) {
        return new PredicatedSortedMap(sortedMap, PredicateUtils.instanceofPredicate(cls), PredicateUtils.instanceofPredicate(cls2));
    }

    protected TypedSortedMap() {
    }
}
