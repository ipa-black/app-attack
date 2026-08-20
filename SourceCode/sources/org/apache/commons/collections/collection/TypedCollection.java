package org.apache.commons.collections.collection;

import java.util.Collection;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedCollection {
    public static Collection decorate(Collection collection, Class cls) {
        return new PredicatedCollection(collection, PredicateUtils.instanceofPredicate(cls));
    }

    protected TypedCollection() {
    }
}
