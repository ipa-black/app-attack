package com.applovin.exoplayer2.k;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class z implements i {

    /* renamed from: a  reason: collision with root package name */
    private final i f3749a;

    /* renamed from: b  reason: collision with root package name */
    private long f3750b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f3751c = Uri.EMPTY;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, List<String>> f3752d = Collections.emptyMap();

    public z(i iVar) {
        this.f3749a = (i) com.applovin.exoplayer2.l.a.b(iVar);
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws IOException {
        int a2 = this.f3749a.a(bArr, i, i2);
        if (a2 != -1) {
            this.f3750b += a2;
        }
        return a2;
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws IOException {
        this.f3751c = lVar.f3626a;
        this.f3752d = Collections.emptyMap();
        long a2 = this.f3749a.a(lVar);
        this.f3751c = (Uri) com.applovin.exoplayer2.l.a.b(a());
        this.f3752d = b();
        return a2;
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        return this.f3749a.a();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void a(aa aaVar) {
        com.applovin.exoplayer2.l.a.b(aaVar);
        this.f3749a.a(aaVar);
    }

    @Override // com.applovin.exoplayer2.k.i
    public Map<String, List<String>> b() {
        return this.f3749a.b();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() throws IOException {
        this.f3749a.c();
    }

    public long d() {
        return this.f3750b;
    }

    public Uri e() {
        return this.f3751c;
    }

    public Map<String, List<String>> f() {
        return this.f3752d;
    }
}
