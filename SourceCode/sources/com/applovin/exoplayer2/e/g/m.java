package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.l.y;
import java.io.IOException;
/* loaded from: classes.dex */
final class m {

    /* renamed from: a  reason: collision with root package name */
    public c f2332a;

    /* renamed from: b  reason: collision with root package name */
    public long f2333b;

    /* renamed from: c  reason: collision with root package name */
    public long f2334c;

    /* renamed from: d  reason: collision with root package name */
    public long f2335d;

    /* renamed from: e  reason: collision with root package name */
    public int f2336e;

    /* renamed from: f  reason: collision with root package name */
    public int f2337f;
    public boolean m;
    public l o;
    public boolean q;
    public long r;
    public boolean s;

    /* renamed from: g  reason: collision with root package name */
    public long[] f2338g = new long[0];

    /* renamed from: h  reason: collision with root package name */
    public int[] f2339h = new int[0];
    public int[] i = new int[0];
    public int[] j = new int[0];
    public long[] k = new long[0];
    public boolean[] l = new boolean[0];
    public boolean[] n = new boolean[0];
    public final y p = new y();

    public void a() {
        this.f2336e = 0;
        this.r = 0L;
        this.s = false;
        this.m = false;
        this.q = false;
        this.o = null;
    }

    public void a(int i) {
        this.p.a(i);
        this.m = true;
        this.q = true;
    }

    public void a(int i, int i2) {
        this.f2336e = i;
        this.f2337f = i2;
        if (this.f2339h.length < i) {
            this.f2338g = new long[i];
            this.f2339h = new int[i];
        }
        if (this.i.length < i2) {
            int i3 = (i2 * 125) / 100;
            this.i = new int[i3];
            this.j = new int[i3];
            this.k = new long[i3];
            this.l = new boolean[i3];
            this.n = new boolean[i3];
        }
    }

    public void a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        iVar.b(this.p.d(), 0, this.p.b());
        this.p.d(0);
        this.q = false;
    }

    public void a(y yVar) {
        yVar.a(this.p.d(), 0, this.p.b());
        this.p.d(0);
        this.q = false;
    }

    public long b(int i) {
        return this.k[i] + this.j[i];
    }

    public boolean c(int i) {
        return this.m && this.n[i];
    }
}
