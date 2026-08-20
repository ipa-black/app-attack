package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntIterator;
import org.apache.commons.collections.primitives.IntListIterator;
/* loaded from: classes5.dex */
abstract class ProxyIntListIterator extends ProxyIntIterator implements IntListIterator {
    protected abstract IntListIterator getListIterator();

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public boolean hasPrevious() {
        return getListIterator().hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public int nextIndex() {
        return getListIterator().nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public int previous() {
        return getListIterator().previous();
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public int previousIndex() {
        return getListIterator().previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyIntIterator
    protected final IntIterator getIterator() {
        return getListIterator();
    }
}
