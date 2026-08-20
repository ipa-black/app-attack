package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleListIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableDoubleListIterator extends ProxyDoubleListIterator {
    private DoubleListIterator proxied;

    UnmodifiableDoubleListIterator(DoubleListIterator doubleListIterator) {
        this.proxied = doubleListIterator;
    }

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    public void remove() {
        throw new UnsupportedOperationException("This DoubleListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public void add(double d2) {
        throw new UnsupportedOperationException("This DoubleListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.DoubleListIterator
    public void set(double d2) {
        throw new UnsupportedOperationException("This DoubleListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyDoubleListIterator
    protected DoubleListIterator getListIterator() {
        return this.proxied;
    }

    public static final DoubleListIterator wrap(DoubleListIterator doubleListIterator) {
        if (doubleListIterator == null) {
            return null;
        }
        return doubleListIterator instanceof UnmodifiableDoubleListIterator ? doubleListIterator : new UnmodifiableDoubleListIterator(doubleListIterator);
    }
}
