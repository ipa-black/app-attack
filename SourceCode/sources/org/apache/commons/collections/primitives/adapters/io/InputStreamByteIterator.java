package org.apache.commons.collections.primitives.adapters.io;

import java.io.IOException;
import java.io.InputStream;
import java.util.NoSuchElementException;
import org.apache.commons.collections.primitives.ByteIterator;
/* loaded from: classes5.dex */
public class InputStreamByteIterator implements ByteIterator {
    private int next;
    private boolean nextAvailable = false;
    private InputStream stream;

    public InputStreamByteIterator(InputStream inputStream) {
        this.stream = inputStream;
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public boolean hasNext() {
        ensureNextAvailable();
        return -1 != this.next;
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public byte next() {
        if (!hasNext()) {
            throw new NoSuchElementException("No next element");
        }
        this.nextAvailable = false;
        return (byte) this.next;
    }

    @Override // org.apache.commons.collections.primitives.ByteIterator
    public void remove() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("remove() is not supported here");
    }

    public static ByteIterator adapt(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        return new InputStreamByteIterator(inputStream);
    }

    private void ensureNextAvailable() {
        if (this.nextAvailable) {
            return;
        }
        readNext();
    }

    private void readNext() {
        try {
            this.next = this.stream.read();
            this.nextAvailable = true;
        } catch (IOException e2) {
            throw new RuntimeException(e2.toString());
        }
    }
}
