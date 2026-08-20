package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatIterator;
/* loaded from: classes5.dex */
abstract class ProxyFloatIterator implements FloatIterator {
    protected abstract FloatIterator getIterator();

    @Override // org.apache.commons.collections.primitives.FloatIterator
    public boolean hasNext() {
        return getIterator().hasNext();
    }

    @Override // org.apache.commons.collections.primitives.FloatIterator
    public float next() {
        return getIterator().next();
    }
}
