package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleIterator;
import org.apache.commons.collections.primitives.DoubleListIterator;
/* loaded from: classes5.dex */
abstract class ProxyDoubleListIterator extends ProxyDoubleIterator implements DoubleListIterator {
    protected abstract DoubleListIterator getListIterator();

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public boolean hasPrevious() {
        return getListIterator().hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public int nextIndex() {
        return getListIterator().nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public double previous() {
        return getListIterator().previous();
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public int previousIndex() {
        return getListIterator().previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyDoubleIterator
    protected final DoubleIterator getIterator() {
        return getListIterator();
    }
}
