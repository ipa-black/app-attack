package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortListIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableShortListIterator extends ProxyShortListIterator {
    private ShortListIterator proxied;

    UnmodifiableShortListIterator(ShortListIterator shortListIterator) {
        this.proxied = shortListIterator;
    }

    @Override // org.apache.commons.collections.primitives.ShortIterator
    public void remove() {
        throw new UnsupportedOperationException("This ShortListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public void add(short s) {
        throw new UnsupportedOperationException("This ShortListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.ShortListIterator
    public void set(short s) {
        throw new UnsupportedOperationException("This ShortListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyShortListIterator
    protected ShortListIterator getListIterator() {
        return this.proxied;
    }

    public static final ShortListIterator wrap(ShortListIterator shortListIterator) {
        if (shortListIterator == null) {
            return null;
        }
        return shortListIterator instanceof UnmodifiableShortListIterator ? shortListIterator : new UnmodifiableShortListIterator(shortListIterator);
    }
}
