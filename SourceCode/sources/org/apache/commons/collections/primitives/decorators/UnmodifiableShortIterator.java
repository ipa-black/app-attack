package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ShortIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableShortIterator extends ProxyShortIterator {
    private ShortIterator proxied;

    UnmodifiableShortIterator(ShortIterator shortIterator) {
        this.proxied = shortIterator;
    }

    @Override // org.apache.commons.collections.primitives.ShortIterator
    public void remove() {
        throw new UnsupportedOperationException("This ShortIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyShortIterator
    protected ShortIterator getIterator() {
        return this.proxied;
    }

    public static final ShortIterator wrap(ShortIterator shortIterator) {
        if (shortIterator == null) {
            return null;
        }
        return shortIterator instanceof UnmodifiableShortIterator ? shortIterator : new UnmodifiableShortIterator(shortIterator);
    }
}
