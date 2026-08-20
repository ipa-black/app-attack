package org.apache.commons.collections.set;

import java.util.Set;
import org.apache.commons.collections.collection.SynchronizedCollection;
/* loaded from: classes5.dex */
public class SynchronizedSet extends SynchronizedCollection implements Set {
    public static Set decorate(Set set) {
        return new SynchronizedSet(set);
    }

    protected SynchronizedSet(Set set) {
        super(set);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SynchronizedSet(Set set, Object obj) {
        super(set, obj);
    }

    protected Set getSet() {
        return (Set) this.collection;
    }
}
