package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntListIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableIntListIterator extends ProxyIntListIterator {
    private IntListIterator proxied;

    UnmodifiableIntListIterator(IntListIterator intListIterator) {
        this.proxied = intListIterator;
    }

    @Override // org.apache.commons.collections.primitives.IntIterator
    public void remove() {
        throw new UnsupportedOperationException("This IntListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public void add(int i) {
        throw new UnsupportedOperationException("This IntListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.IntListIterator
    public void set(int i) {
        throw new UnsupportedOperationException("This IntListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyIntListIterator
    protected IntListIterator getListIterator() {
        return this.proxied;
    }

    public static final IntListIterator wrap(IntListIterator intListIterator) {
        if (intListIterator == null) {
            return null;
        }
        return intListIterator instanceof UnmodifiableIntListIterator ? intListIterator : new UnmodifiableIntListIterator(intListIterator);
    }
}
