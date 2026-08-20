package com.applovin.exoplayer2.k;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class k extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final i f3620a;

    /* renamed from: b  reason: collision with root package name */
    private final l f3621b;

    /* renamed from: f  reason: collision with root package name */
    private long f3625f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3623d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3624e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f3622c = new byte[1];

    public k(i iVar, l lVar) {
        this.f3620a = iVar;
        this.f3621b = lVar;
    }

    private void a() throws IOException {
        if (this.f3623d) {
            return;
        }
        this.f3620a.a(this.f3621b);
        this.f3623d = true;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f3624e) {
            return;
        }
        this.f3620a.c();
        this.f3624e = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f3622c) == -1) {
            return -1;
        }
        return this.f3622c[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        com.applovin.exoplayer2.l.a.b(!this.f3624e);
        a();
        int a2 = this.f3620a.a(bArr, i, i2);
        if (a2 == -1) {
            return -1;
        }
        this.f3625f += a2;
        return a2;
    }
}
