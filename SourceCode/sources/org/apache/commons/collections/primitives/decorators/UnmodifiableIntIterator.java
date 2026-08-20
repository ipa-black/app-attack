package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.IntIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableIntIterator extends ProxyIntIterator {
    private IntIterator proxied;

    UnmodifiableIntIterator(IntIterator intIterator) {
        this.proxied = intIterator;
    }

    @Override // org.apache.commons.collections.primitives.IntIterator
    public void remove() {
        throw new UnsupportedOperationException("This IntIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyIntIterator
    protected IntIterator getIterator() {
        return this.proxied;
    }

    public static final IntIterator wrap(IntIterator intIterator) {
        if (intIterator == null) {
            return null;
        }
        return intIterator instanceof UnmodifiableIntIterator ? intIterator : new UnmodifiableIntIterator(intIterator);
    }
}
