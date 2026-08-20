package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharIterator;
import org.apache.commons.collections.primitives.CharListIterator;
/* loaded from: classes5.dex */
abstract class ProxyCharListIterator extends ProxyCharIterator implements CharListIterator {
    protected abstract CharListIterator getListIterator();

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public boolean hasPrevious() {
        return getListIterator().hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public int nextIndex() {
        return getListIterator().nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public char previous() {
        return getListIterator().previous();
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public int previousIndex() {
        return getListIterator().previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyCharIterator
    protected final CharIterator getIterator() {
        return getListIterator();
    }
}
