package org.apache.commons.collections.primitives.adapters.io;

import java.io.IOException;
import java.io.Reader;
import java.util.NoSuchElementException;
import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
public class ReaderCharIterator implements CharIterator {
    private int next;
    private boolean nextAvailable = false;
    private Reader reader;

    public ReaderCharIterator(Reader reader) {
        this.reader = reader;
    }

    public static CharIterator adapt(Reader reader) {
        if (reader == null) {
            return null;
        }
        return new ReaderCharIterator(reader);
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public boolean hasNext() {
        ensureNextAvailable();
        return -1 != this.next;
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public char next() {
        if (!hasNext()) {
            throw new NoSuchElementException("No next element");
        }
        this.nextAvailable = false;
        return (char) this.next;
    }

    @Override // org.apache.commons.collections.primitives.CharIterator
    public void remove() throws UnsupportedOperationException {
        throw new UnsupportedOperationException("remove() is not supported here");
    }

    private void ensureNextAvailable() {
        if (this.nextAvailable) {
            return;
        }
        readNext();
    }

    private void readNext() {
        try {
            this.next = this.reader.read();
            this.nextAvailable = true;
        } catch (IOException e2) {
            throw new RuntimeException(e2.toString());
        }
    }
}
