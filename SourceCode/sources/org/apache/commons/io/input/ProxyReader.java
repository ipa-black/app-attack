package org.apache.commons.io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes5.dex */
public abstract class ProxyReader extends FilterReader {
    private Reader proxy;

    public ProxyReader(Reader reader) {
        super(reader);
        this.proxy = reader;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        return this.proxy.read();
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        return this.proxy.read(cArr);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        return this.proxy.read(cArr, i, i2);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j) throws IOException {
        return this.proxy.skip(j);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() throws IOException {
        return this.proxy.ready();
    }

    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.proxy.close();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void mark(int i) throws IOException {
        this.proxy.mark(i);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void reset() throws IOException {
        this.proxy.reset();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean markSupported() {
        return this.proxy.markSupported();
    }
}
