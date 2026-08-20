package org.apache.commons.collections.primitives.adapters.io;

import java.io.Reader;
import org.apache.commons.collections.primitives.CharIterator;
/* loaded from: classes5.dex */
public class CharIteratorReader extends Reader {
    private CharIterator iterator;

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public CharIteratorReader(CharIterator charIterator) {
        this.iterator = charIterator;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        if (this.iterator.hasNext()) {
            int i3 = 0;
            while (this.iterator.hasNext() && i3 < i2) {
                cArr[i + i3] = this.iterator.next();
                i3++;
            }
            return i3;
        }
        return -1;
    }

    public static Reader adapt(CharIterator charIterator) {
        if (charIterator == null) {
            return null;
        }
        return new CharIteratorReader(charIterator);
    }
}
