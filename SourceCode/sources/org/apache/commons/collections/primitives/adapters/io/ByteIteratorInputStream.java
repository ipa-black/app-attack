package org.apache.commons.collections.primitives.adapters.io;

import java.io.InputStream;
import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
public class ByteIteratorInputStream extends InputStream {
    private ByteIterator iterator;

    public ByteIteratorInputStream(ByteIterator byteIterator) {
        this.iterator = byteIterator;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.iterator.hasNext()) {
            return this.iterator.next() & 255;
        }
        return -1;
    }

    public static InputStream adapt(ByteIterator byteIterator) {
        if (byteIterator == null) {
            return null;
        }
        return new ByteIteratorInputStream(byteIterator);
    }
}
