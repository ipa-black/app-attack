package org.apache.commons.collections.map;

import java.util.Map;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedMap {
    public static Map decorate(Map map, Class cls, Class cls2) {
        return new PredicatedMap(map, PredicateUtils.instanceofPredicate(cls), PredicateUtils.instanceofPredicate(cls2));
    }

    protected TypedMap() {
    }
}
