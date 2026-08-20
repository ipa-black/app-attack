package com.bykv.vk.openvk.preload.geckox.buffer.stream;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: BufferInputStream.java */
/* loaded from: classes2.dex */
public final class a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.buffer.a f8492a;

    /* renamed from: b  reason: collision with root package name */
    private long f8493b;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    public a(com.bykv.vk.openvk.preload.geckox.buffer.a aVar) {
        this.f8492a = aVar;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return this.f8492a.b(bArr);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f8492a.b(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        return this.f8492a.a(j);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        long b2 = this.f8492a.b() - this.f8492a.c();
        if (b2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) b2;
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i) {
        this.f8493b = i;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.f8492a.b(this.f8493b);
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return this.f8492a.d();
    }
}
