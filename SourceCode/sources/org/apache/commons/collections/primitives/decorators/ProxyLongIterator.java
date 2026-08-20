package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongIterator;
/* loaded from: classes5.dex */
abstract class ProxyLongIterator implements LongIterator {
    protected abstract LongIterator getIterator();

    @Override // org.apache.commons.collections.primitives.LongIterator
    public boolean hasNext() {
        return getIterator().hasNext();
    }

    @Override // org.apache.commons.collections.primitives.LongIterator
    public long next() {
        return getIterator().next();
    }
}
