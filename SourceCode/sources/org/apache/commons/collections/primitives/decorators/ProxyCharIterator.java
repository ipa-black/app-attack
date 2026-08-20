package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
abstract class ProxyCharIterator implements CharIterator {
    protected abstract CharIterator getIterator();

    @Override // org.apache.commons.collections.primitives.CharIterator
    public boolean hasNext() {
        return getIterator().hasNext();
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public char next() {
        return getIterator().next();
    }
}
