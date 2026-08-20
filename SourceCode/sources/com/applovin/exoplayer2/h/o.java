package com.applovin.exoplayer2.h;

import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public final Object f3085a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3086b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3087c;

    /* renamed from: d  reason: collision with root package name */
    public final long f3088d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3089e;

    /* JADX INFO: Access modifiers changed from: protected */
    public o(o oVar) {
        this.f3085a = oVar.f3085a;
        this.f3086b = oVar.f3086b;
        this.f3087c = oVar.f3087c;
        this.f3088d = oVar.f3088d;
        this.f3089e = oVar.f3089e;
    }

    public o(Object obj) {
        this(obj, -1L);
    }

    public o(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    private o(Object obj, int i, int i2, long j, int i3) {
        this.f3085a = obj;
        this.f3086b = i;
        this.f3087c = i2;
        this.f3088d = j;
        this.f3089e = i3;
    }

    public o(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public o(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    public o a(Object obj) {
        return this.f3085a.equals(obj) ? this : new o(obj, this.f3086b, this.f3087c, this.f3088d, this.f3089e);
    }

    public boolean a() {
        return this.f3086b != -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.f3085a.equals(oVar.f3085a) && this.f3086b == oVar.f3086b && this.f3087c == oVar.f3087c && this.f3088d == oVar.f3088d && this.f3089e == oVar.f3089e;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f3085a.hashCode()) * 31) + this.f3086b) * 31) + this.f3087c) * 31) + ((int) this.f3088d)) * 31) + this.f3089e;
    }
}
