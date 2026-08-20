package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteListIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableByteListIterator extends ProxyByteListIterator {
    private ByteListIterator proxied;

    UnmodifiableByteListIterator(ByteListIterator byteListIterator) {
        this.proxied = byteListIterator;
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public void remove() {
        throw new UnsupportedOperationException("This ByteListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public void add(byte b2) {
        throw new UnsupportedOperationException("This ByteListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.ByteListIterator
    public void set(byte b2) {
        throw new UnsupportedOperationException("This ByteListIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyByteListIterator
    protected ByteListIterator getListIterator() {
        return this.proxied;
    }

    public static final ByteListIterator wrap(ByteListIterator byteListIterator) {
        if (byteListIterator == null) {
            return null;
        }
        return byteListIterator instanceof UnmodifiableByteListIterator ? byteListIterator : new UnmodifiableByteListIterator(byteListIterator);
    }
}
