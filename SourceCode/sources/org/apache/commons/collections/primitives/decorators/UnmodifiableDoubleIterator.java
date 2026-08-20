package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.DoubleIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableDoubleIterator extends ProxyDoubleIterator {
    private DoubleIterator proxied;

    UnmodifiableDoubleIterator(DoubleIterator doubleIterator) {
        this.proxied = doubleIterator;
    }

    @Override // org.apache.commons.collections.primitives.DoubleIterator
    public void remove() {
        throw new UnsupportedOperationException("This DoubleIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyDoubleIterator
    protected DoubleIterator getIterator() {
        return this.proxied;
    }

    public static final DoubleIterator wrap(DoubleIterator doubleIterator) {
        if (doubleIterator == null) {
            return null;
        }
        return doubleIterator instanceof UnmodifiableDoubleIterator ? doubleIterator : new UnmodifiableDoubleIterator(doubleIterator);
    }
}
