package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
abstract class ProxyByteIterator implements ByteIterator {
    protected abstract ByteIterator getIterator();

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public boolean hasNext() {
        return getIterator().hasNext();
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public byte next() {
        return getIterator().next();
    }
}
