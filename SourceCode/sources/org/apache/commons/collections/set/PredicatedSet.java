package org.apache.commons.collections.set;

import java.util.Set;
import org.apache.commons.collections.Predicate;
import org.apache.commons.collections.collection.PredicatedCollection;
/* loaded from: classes5.dex */
public class PredicatedSet extends PredicatedCollection implements Set {
    public static Set decorate(Set set, Predicate predicate) {
        return new PredicatedSet(set, predicate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PredicatedSet(Set set, Predicate predicate) {
        super(set, predicate);
    }

    protected Set getSet() {
        return (Set) getCollection();
    }
}
