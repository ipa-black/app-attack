package com.applovin.exoplayer2.h;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class i implements com.applovin.exoplayer2.k.i {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.i f3045a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3046b;

    /* renamed from: c  reason: collision with root package name */
    private final a f3047c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f3048d;

    /* renamed from: e  reason: collision with root package name */
    private int f3049e;

    /* loaded from: classes.dex */
    public interface a {
        void a(com.applovin.exoplayer2.l.y yVar);
    }

    public i(com.applovin.exoplayer2.k.i iVar, int i, a aVar) {
        com.applovin.exoplayer2.l.a.a(i > 0);
        this.f3045a = iVar;
        this.f3046b = i;
        this.f3047c = aVar;
        this.f3048d = new byte[1];
        this.f3049e = i;
    }

    private boolean d() throws IOException {
        if (this.f3045a.a(this.f3048d, 0, 1) == -1) {
            return false;
        }
        int i = (this.f3048d[0] & 255) << 4;
        if (i == 0) {
            return true;
        }
        byte[] bArr = new byte[i];
        int i2 = i;
        int i3 = 0;
        while (i2 > 0) {
            int a2 = this.f3045a.a(bArr, i3, i2);
            if (a2 == -1) {
                return false;
            }
            i3 += a2;
            i2 -= a2;
        }
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        if (i > 0) {
            this.f3047c.a(new com.applovin.exoplayer2.l.y(bArr, i));
        }
        return true;
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws IOException {
        if (this.f3049e == 0) {
            if (!d()) {
                return -1;
            }
            this.f3049e = this.f3046b;
        }
        int a2 = this.f3045a.a(bArr, i, Math.min(this.f3049e, i2));
        if (a2 != -1) {
            this.f3049e -= a2;
        }
        return a2;
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(com.applovin.exoplayer2.k.l lVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        return this.f3045a.a();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void a(com.applovin.exoplayer2.k.aa aaVar) {
        com.applovin.exoplayer2.l.a.b(aaVar);
        this.f3045a.a(aaVar);
    }

    @Override // com.applovin.exoplayer2.k.i
    public Map<String, List<String>> b() {
        return this.f3045a.b();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() {
        throw new UnsupportedOperationException();
    }
}
