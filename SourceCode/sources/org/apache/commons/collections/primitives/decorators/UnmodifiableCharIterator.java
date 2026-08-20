package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableCharIterator extends ProxyCharIterator {
    private CharIterator proxied;

    UnmodifiableCharIterator(CharIterator charIterator) {
        this.proxied = charIterator;
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public void remove() {
        throw new UnsupportedOperationException("This CharIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyCharIterator
    protected CharIterator getIterator() {
        return this.proxied;
    }

    public static final CharIterator wrap(CharIterator charIterator) {
        if (charIterator == null) {
            return null;
        }
        return charIterator instanceof UnmodifiableCharIterator ? charIterator : new UnmodifiableCharIterator(charIterator);
    }
}
