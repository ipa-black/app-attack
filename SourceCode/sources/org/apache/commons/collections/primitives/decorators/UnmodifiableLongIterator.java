package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableLongIterator extends ProxyLongIterator {
    private LongIterator proxied;

    UnmodifiableLongIterator(LongIterator longIterator) {
        this.proxied = longIterator;
    }

    @Override // org.apache.commons.collections.primitives.LongIterator
    public void remove() {
        throw new UnsupportedOperationException("This LongIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyLongIterator
    protected LongIterator getIterator() {
        return this.proxied;
    }

    public static final LongIterator wrap(LongIterator longIterator) {
        if (longIterator == null) {
            return null;
        }
        return longIterator instanceof UnmodifiableLongIterator ? longIterator : new UnmodifiableLongIterator(longIterator);
    }
}
