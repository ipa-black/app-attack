package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableFloatIterator extends ProxyFloatIterator {
    private FloatIterator proxied;

    UnmodifiableFloatIterator(FloatIterator floatIterator) {
        this.proxied = floatIterator;
    }

    @Override // org.apache.commons.collections.primitives.FloatIterator
    public void remove() {
        throw new UnsupportedOperationException("This FloatIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyFloatIterator
    protected FloatIterator getIterator() {
        return this.proxied;
    }

    public static final FloatIterator wrap(FloatIterator floatIterator) {
        if (floatIterator == null) {
            return null;
        }
        return floatIterator instanceof UnmodifiableFloatIterator ? floatIterator : new UnmodifiableFloatIterator(floatIterator);
    }
}
