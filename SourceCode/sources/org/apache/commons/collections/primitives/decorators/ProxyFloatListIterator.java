package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatIterator;
import org.apache.commons.collections.primitives.FloatListIterator;
/* loaded from: classes5.dex */
abstract class ProxyFloatListIterator extends ProxyFloatIterator implements FloatListIterator {
    protected abstract FloatListIterator getListIterator();

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public boolean hasPrevious() {
        return getListIterator().hasPrevious();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public int nextIndex() {
        return getListIterator().nextIndex();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public float previous() {
        return getListIterator().previous();
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public int previousIndex() {
        return getListIterator().previousIndex();
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyFloatIterator
    protected final FloatIterator getIterator() {
        return getListIterator();
    }
}
