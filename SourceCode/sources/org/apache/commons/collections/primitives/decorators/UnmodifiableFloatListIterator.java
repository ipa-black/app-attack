package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.FloatListIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableFloatListIterator extends ProxyFloatListIterator {
    private FloatListIterator proxied;

    UnmodifiableFloatListIterator(FloatListIterator floatListIterator) {
        this.proxied = floatListIterator;
    }

    @Override // org.apache.commons.collections.primitives.FloatIterator
    public void remove() {
        throw new UnsupportedOperationException("This FloatListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public void add(float f2) {
        throw new UnsupportedOperationException("This FloatListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.FloatListIterator
    public void set(float f2) {
        throw new UnsupportedOperationException("This FloatListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyFloatListIterator
    protected FloatListIterator getListIterator() {
        return this.proxied;
    }

    public static final FloatListIterator wrap(FloatListIterator floatListIterator) {
        if (floatListIterator == null) {
            return null;
        }
        return floatListIterator instanceof UnmodifiableFloatListIterator ? floatListIterator : new UnmodifiableFloatListIterator(floatListIterator);
    }
}
