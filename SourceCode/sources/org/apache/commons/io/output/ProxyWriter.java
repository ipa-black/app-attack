package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes5.dex */
public class ProxyWriter extends FilterWriter {
    private Writer proxy;

    public ProxyWriter(Writer writer) {
        super(writer);
        this.proxy = writer;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) throws IOException {
        this.proxy.write(i);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.proxy.write(cArr);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.proxy.write(cArr, i, i2);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.proxy.write(str);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.proxy.write(str, i, i2);
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.proxy.flush();
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.proxy.close();
    }
}
