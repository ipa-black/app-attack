package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortIterator;
/* loaded from: classes5.dex */
abstract class ProxyShortIterator implements ShortIterator {
    protected abstract ShortIterator getIterator();

    @Override // org.apache.commons.collections.primitives.ShortIterator
    public boolean hasNext() {
        return getIterator().hasNext();
    }

    @Override // org.apache.commons.collections.primitives.ShortIterator
    public short next() {
        return getIterator().next();
    }
}
