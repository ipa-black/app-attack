package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntIterator;
/* loaded from: classes5.dex */
abstract class ProxyIntIterator implements IntIterator {
    protected abstract IntIterator getIterator();

    @Override // org.apache.commons.collections.primitives.IntIterator
    public boolean hasNext() {
        return getIterator().hasNext();
    }

    @Override // org.apache.commons.collections.primitives.IntIterator
    public int next() {
        return getIterator().next();
    }
}
