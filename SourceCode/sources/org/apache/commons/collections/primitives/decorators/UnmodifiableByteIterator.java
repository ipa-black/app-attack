package org.apache.commons.collections.primitives.decorators;

import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
public final class UnmodifiableByteIterator extends ProxyByteIterator {
    private ByteIterator proxied;

    UnmodifiableByteIterator(ByteIterator byteIterator) {
        this.proxied = byteIterator;
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public void remove() {
        throw new UnsupportedOperationException("This ByteIterator is not modifiable.");
    }

    @Override // org.apache.commons.collections.primitives.decorators.ProxyByteIterator
    protected ByteIterator getIterator() {
        return this.proxied;
    }

    public static final ByteIterator wrap(ByteIterator byteIterator) {
        if (byteIterator == null) {
            return null;
        }
        return byteIterator instanceof UnmodifiableByteIterator ? byteIterator : new UnmodifiableByteIterator(byteIterator);
    }
}
