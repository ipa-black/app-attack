package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.CharListIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableCharListIterator extends ProxyCharListIterator {
    private CharListIterator proxied;

    UnmodifiableCharListIterator(CharListIterator charListIterator) {
        this.proxied = charListIterator;
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public void remove() {
        throw new UnsupportedOperationException("This CharListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public void add(char c2) {
        throw new UnsupportedOperationException("This CharListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.CharListIterator
    public void set(char c2) {
        throw new UnsupportedOperationException("This CharListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyCharListIterator
    protected CharListIterator getListIterator() {
        return this.proxied;
    }

    public static final CharListIterator wrap(CharListIterator charListIterator) {
        if (charListIterator == null) {
            return null;
        }
        return charListIterator instanceof UnmodifiableCharListIterator ? charListIterator : new UnmodifiableCharListIterator(charListIterator);
    }
}
