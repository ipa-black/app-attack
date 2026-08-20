package com.applovin.exoplayer2.i.g;

import android.text.Layout;
/* loaded from: classes.dex */
final class g {

    /* renamed from: a  reason: collision with root package name */
    private String f3389a;

    /* renamed from: b  reason: collision with root package name */
    private int f3390b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3391c;

    /* renamed from: d  reason: collision with root package name */
    private int f3392d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3393e;
    private float k;
    private String l;
    private Layout.Alignment o;
    private Layout.Alignment p;
    private b r;

    /* renamed from: f  reason: collision with root package name */
    private int f3394f = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f3395g = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f3396h = -1;
    private int i = -1;
    private int j = -1;
    private int m = -1;
    private int n = -1;
    private int q = -1;
    private float s = Float.MAX_VALUE;

    private g a(g gVar, boolean z) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f3391c && gVar.f3391c) {
                a(gVar.f3390b);
            }
            if (this.f3396h == -1) {
                this.f3396h = gVar.f3396h;
            }
            if (this.i == -1) {
                this.i = gVar.i;
            }
            if (this.f3389a == null && (str = gVar.f3389a) != null) {
                this.f3389a = str;
            }
            if (this.f3394f == -1) {
                this.f3394f = gVar.f3394f;
            }
            if (this.f3395g == -1) {
                this.f3395g = gVar.f3395g;
            }
            if (this.n == -1) {
                this.n = gVar.n;
            }
            if (this.o == null && (alignment2 = gVar.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = gVar.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = gVar.q;
            }
            if (this.j == -1) {
                this.j = gVar.j;
                this.k = gVar.k;
            }
            if (this.r == null) {
                this.r = gVar.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = gVar.s;
            }
            if (z && !this.f3393e && gVar.f3393e) {
                b(gVar.f3392d);
            }
            if (z && this.m == -1 && (i = gVar.m) != -1) {
                this.m = i;
            }
        }
        return this;
    }

    public int a() {
        int i = this.f3396h;
        if (i == -1 && this.i == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.i == 1 ? 2 : 0);
    }

    public g a(float f2) {
        this.s = f2;
        return this;
    }

    public g a(int i) {
        this.f3390b = i;
        this.f3391c = true;
        return this;
    }

    public g a(Layout.Alignment alignment) {
        this.o = alignment;
        return this;
    }

    public g a(b bVar) {
        this.r = bVar;
        return this;
    }

    public g a(g gVar) {
        return a(gVar, true);
    }

    public g a(String str) {
        this.f3389a = str;
        return this;
    }

    public g a(boolean z) {
        this.f3394f = z ? 1 : 0;
        return this;
    }

    public g b(float f2) {
        this.k = f2;
        return this;
    }

    public g b(int i) {
        this.f3392d = i;
        this.f3393e = true;
        return this;
    }

    public g b(Layout.Alignment alignment) {
        this.p = alignment;
        return this;
    }

    public g b(String str) {
        this.l = str;
        return this;
    }

    public g b(boolean z) {
        this.f3395g = z ? 1 : 0;
        return this;
    }

    public boolean b() {
        return this.f3394f == 1;
    }

    public g c(int i) {
        this.m = i;
        return this;
    }

    public g c(boolean z) {
        this.f3396h = z ? 1 : 0;
        return this;
    }

    public boolean c() {
        return this.f3395g == 1;
    }

    public g d(int i) {
        this.n = i;
        return this;
    }

    public g d(boolean z) {
        this.i = z ? 1 : 0;
        return this;
    }

    public String d() {
        return this.f3389a;
    }

    public int e() {
        if (this.f3391c) {
            return this.f3390b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public g e(int i) {
        this.j = i;
        return this;
    }

    public g e(boolean z) {
        this.q = z ? 1 : 0;
        return this;
    }

    public boolean f() {
        return this.f3391c;
    }

    public int g() {
        if (this.f3393e) {
            return this.f3392d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public boolean h() {
        return this.f3393e;
    }

    public float i() {
        return this.s;
    }

    public String j() {
        return this.l;
    }

    public int k() {
        return this.m;
    }

    public int l() {
        return this.n;
    }

    public Layout.Alignment m() {
        return this.o;
    }

    public Layout.Alignment n() {
        return this.p;
    }

    public boolean o() {
        return this.q == 1;
    }

    public b p() {
        return this.r;
    }

    public int q() {
        return this.j;
    }

    public float r() {
        return this.k;
    }
}
