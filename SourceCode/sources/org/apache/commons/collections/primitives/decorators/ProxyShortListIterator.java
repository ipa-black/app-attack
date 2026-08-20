package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortIterator;
import org.apache.commons.collections.primitives.ShortListIterator;
/* loaded from: classes5.dex */
abstract class ProxyShortListIterator extends ProxyShortIterator implements ShortListIterator {
    protected abstract ShortListIterator getListIterator();

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public boolean hasPrevious() {
        return getListIterator().hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public int nextIndex() {
        return getListIterator().nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public short previous() {
        return getListIterator().previous();
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public int previousIndex() {
        return getListIterator().previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyShortIterator
    protected final ShortIterator getIterator() {
        return getListIterator();
    }
}
