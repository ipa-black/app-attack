package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.LongListIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableLongListIterator extends ProxyLongListIterator {
    private LongListIterator proxied;

    UnmodifiableLongListIterator(LongListIterator longListIterator) {
        this.proxied = longListIterator;
    }

    @Override // org.apache.commons.collections.primitives.LongIterator
    public void remove() {
        throw new UnsupportedOperationException("This LongListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public void add(long j) {
        throw new UnsupportedOperationException("This LongListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.LongListIterator
    public void set(long j) {
        throw new UnsupportedOperationException("This LongListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyLongListIterator
    protected LongListIterator getListIterator() {
        return this.proxied;
    }

    public static final LongListIterator wrap(LongListIterator longListIterator) {
        if (longListIterator == null) {
            return null;
        }
        return longListIterator instanceof UnmodifiableLongListIterator ? longListIterator : new UnmodifiableLongListIterator(longListIterator);
    }
}
