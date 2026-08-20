package com.applovin.exoplayer2.c;

import com.applovin.exoplayer2.v;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final String f1683a;

    /* renamed from: b  reason: collision with root package name */
    public final v f1684b;

    /* renamed from: c  reason: collision with root package name */
    public final v f1685c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1686d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1687e;

    public h(String str, v vVar, v vVar2, int i, int i2) {
        com.applovin.exoplayer2.l.a.a(i == 0 || i2 == 0);
        this.f1683a = com.applovin.exoplayer2.l.a.a(str);
        this.f1684b = (v) com.applovin.exoplayer2.l.a.b(vVar);
        this.f1685c = (v) com.applovin.exoplayer2.l.a.b(vVar2);
        this.f1686d = i;
        this.f1687e = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.f1686d == hVar.f1686d && this.f1687e == hVar.f1687e && this.f1683a.equals(hVar.f1683a) && this.f1684b.equals(hVar.f1684b) && this.f1685c.equals(hVar.f1685c);
    }

    public int hashCode() {
        return ((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f1686d) * 31) + this.f1687e) * 31) + this.f1683a.hashCode()) * 31) + this.f1684b.hashCode()) * 31) + this.f1685c.hashCode();
    }
}
