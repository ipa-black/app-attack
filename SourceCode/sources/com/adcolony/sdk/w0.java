package com.adcolony.sdk;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
class w0 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    InputStream f634a;

    /* renamed from: b  reason: collision with root package name */
    int f635b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(InputStream inputStream, int i, int i2) throws IOException {
        this.f634a = inputStream;
        while (i > 0) {
            i -= (int) inputStream.skip(i);
        }
        this.f635b = i2;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int available = this.f634a.available();
        int i = this.f635b;
        return available <= i ? available : i;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f634a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.f635b;
        if (i == 0) {
            return -1;
        }
        this.f635b = i - 1;
        return this.f634a.read();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        int i = (int) j;
        if (i <= 0) {
            return 0L;
        }
        int i2 = this.f635b;
        if (i > i2) {
            i = i2;
        }
        this.f635b = i2 - i;
        while (i > 0) {
            i -= (int) this.f634a.skip(j);
        }
        return j;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f635b;
        if (i3 == 0) {
            return -1;
        }
        if (i2 > i3) {
            i2 = i3;
        }
        int read = this.f634a.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.f635b -= read;
        return read;
    }
}
