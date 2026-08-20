package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongIterator;
import org.apache.commons.collections.primitives.LongListIterator;
/* loaded from: classes5.dex */
abstract class ProxyLongListIterator extends ProxyLongIterator implements LongListIterator {
    protected abstract LongListIterator getListIterator();

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public boolean hasPrevious() {
        return getListIterator().hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public int nextIndex() {
        return getListIterator().nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public long previous() {
        return getListIterator().previous();
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public int previousIndex() {
        return getListIterator().previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyLongIterator
    protected final LongIterator getIterator() {
        return getListIterator();
    }
}
