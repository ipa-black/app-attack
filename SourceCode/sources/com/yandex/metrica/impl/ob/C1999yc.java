package com.yandex.metrica.impl.ob;

import android.location.Location;
/* renamed from: com.yandex.metrica.impl.ob.yc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1999yc {

    /* renamed from: a  reason: collision with root package name */
    private C1709mc f16082a;

    /* renamed from: b  reason: collision with root package name */
    private V<Location> f16083b;

    /* renamed from: c  reason: collision with root package name */
    private Location f16084c = null;

    /* renamed from: d  reason: collision with root package name */
    private long f16085d;

    /* renamed from: e  reason: collision with root package name */
    private C1965x2 f16086e;

    /* renamed from: f  reason: collision with root package name */
    private Sc f16087f;

    /* renamed from: g  reason: collision with root package name */
    private Rb f16088g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1999yc(C1709mc c1709mc, V<Location> v, Location location, long j, C1965x2 c1965x2, Sc sc, Rb rb) {
        this.f16082a = c1709mc;
        this.f16083b = v;
        this.f16085d = j;
        this.f16086e = c1965x2;
        this.f16087f = sc;
        this.f16088g = rb;
    }

    private boolean b(Location location) {
        C1709mc c1709mc;
        if (location == null || (c1709mc = this.f16082a) == null) {
            return false;
        }
        if (this.f16084c != null) {
            boolean a2 = this.f16086e.a(this.f16085d, c1709mc.f15143a, "isSavedLocationOutdated");
            boolean z = location.distanceTo(this.f16084c) > this.f16082a.f15144b;
            boolean z2 = this.f16084c == null || location.getTime() - this.f16084c.getTime() >= 0;
            if ((!a2 && !z) || !z2) {
                return false;
            }
        }
        return true;
    }

    public void a(Location location) {
        if (b(location)) {
            this.f16084c = location;
            this.f16085d = System.currentTimeMillis();
            this.f16083b.a(location);
            this.f16087f.a();
            this.f16088g.a();
        }
    }

    public void a(C1709mc c1709mc) {
        this.f16082a = c1709mc;
    }
}
