package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteIterator;
import org.apache.commons.collections.primitives.ByteListIterator;
/* loaded from: classes5.dex */
abstract class ProxyByteListIterator extends ProxyByteIterator implements ByteListIterator {
    protected abstract ByteListIterator getListIterator();

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public boolean hasPrevious() {
        return getListIterator().hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public int nextIndex() {
        return getListIterator().nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public byte previous() {
        return getListIterator().previous();
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public int previousIndex() {
        return getListIterator().previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyByteIterator
    protected final ByteIterator getIterator() {
        return getListIterator();
    }
}
