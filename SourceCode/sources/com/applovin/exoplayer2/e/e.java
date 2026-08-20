package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.l.ai;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class e implements i {

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.g f2159b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2160c;

    /* renamed from: d  reason: collision with root package name */
    private long f2161d;

    /* renamed from: f  reason: collision with root package name */
    private int f2163f;

    /* renamed from: g  reason: collision with root package name */
    private int f2164g;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f2162e = new byte[65536];

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f2158a = new byte[4096];

    public e(com.applovin.exoplayer2.k.g gVar, long j, long j2) {
        this.f2159b = gVar;
        this.f2161d = j;
        this.f2160c = j2;
    }

    private int a(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int a2 = this.f2159b.a(bArr, i + i3, i2 - i3);
        if (a2 == -1) {
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        return i3 + a2;
    }

    private void d(int i) {
        int i2 = this.f2163f + i;
        byte[] bArr = this.f2162e;
        if (i2 > bArr.length) {
            this.f2162e = Arrays.copyOf(this.f2162e, ai.a(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    private int e(int i) {
        int min = Math.min(this.f2164g, i);
        f(min);
        return min;
    }

    private int e(byte[] bArr, int i, int i2) {
        int i3 = this.f2164g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f2162e, 0, bArr, i, min);
        f(min);
        return min;
    }

    private void f(int i) {
        int i2 = this.f2164g - i;
        this.f2164g = i2;
        this.f2163f = 0;
        byte[] bArr = this.f2162e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f2162e = bArr2;
    }

    private void g(int i) {
        if (i != -1) {
            this.f2161d += i;
        }
    }

    @Override // com.applovin.exoplayer2.e.i
    public int a(int i) throws IOException {
        int e2 = e(i);
        if (e2 == 0) {
            byte[] bArr = this.f2158a;
            e2 = a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        g(e2);
        return e2;
    }

    @Override // com.applovin.exoplayer2.e.i, com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws IOException {
        int e2 = e(bArr, i, i2);
        if (e2 == 0) {
            e2 = a(bArr, i, i2, 0, true);
        }
        g(e2);
        return e2;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void a() {
        this.f2163f = 0;
    }

    public boolean a(int i, boolean z) throws IOException {
        int e2 = e(i);
        while (e2 < i && e2 != -1) {
            e2 = a(this.f2158a, -e2, Math.min(i, this.f2158a.length + e2), e2, z);
        }
        g(e2);
        return e2 != -1;
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int e2 = e(bArr, i, i2);
        while (e2 < i2 && e2 != -1) {
            e2 = a(bArr, i, i2, e2, z);
        }
        g(e2);
        return e2 != -1;
    }

    @Override // com.applovin.exoplayer2.e.i
    public long b() {
        return this.f2161d + this.f2163f;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void b(int i) throws IOException {
        a(i, false);
    }

    @Override // com.applovin.exoplayer2.e.i
    public void b(byte[] bArr, int i, int i2) throws IOException {
        a(bArr, i, i2, false);
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean b(int i, boolean z) throws IOException {
        d(i);
        int i2 = this.f2164g - this.f2163f;
        while (i2 < i) {
            i2 = a(this.f2162e, this.f2163f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f2164g = this.f2163f + i2;
        }
        this.f2163f += i;
        return true;
    }

    @Override // com.applovin.exoplayer2.e.i
    public boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (b(i2, z)) {
            System.arraycopy(this.f2162e, this.f2163f - i2, bArr, i, i2);
            return true;
        }
        return false;
    }

    @Override // com.applovin.exoplayer2.e.i
    public int c(byte[] bArr, int i, int i2) throws IOException {
        int min;
        d(i2);
        int i3 = this.f2164g;
        int i4 = this.f2163f;
        int i5 = i3 - i4;
        if (i5 == 0) {
            min = a(this.f2162e, i4, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            this.f2164g += min;
        } else {
            min = Math.min(i2, i5);
        }
        System.arraycopy(this.f2162e, this.f2163f, bArr, i, min);
        this.f2163f += min;
        return min;
    }

    @Override // com.applovin.exoplayer2.e.i
    public long c() {
        return this.f2161d;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void c(int i) throws IOException {
        b(i, false);
    }

    @Override // com.applovin.exoplayer2.e.i
    public long d() {
        return this.f2160c;
    }

    @Override // com.applovin.exoplayer2.e.i
    public void d(byte[] bArr, int i, int i2) throws IOException {
        b(bArr, i, i2, false);
    }
}
