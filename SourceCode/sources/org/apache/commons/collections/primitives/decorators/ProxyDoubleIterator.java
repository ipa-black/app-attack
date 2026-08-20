package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleIterator;
/* loaded from: classes5.dex */
abstract class ProxyDoubleIterator implements DoubleIterator {
    protected abstract DoubleIterator getIterator();

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    public boolean hasNext() {
        return getIterator().hasNext();
    }

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    public double next() {
        return getIterator().next();
    }
}
