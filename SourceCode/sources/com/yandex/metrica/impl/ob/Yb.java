package com.yandex.metrica.impl.ob;

import android.location.Location;
/* loaded from: classes5.dex */
public class Yb extends V<Location> {

    /* renamed from: b  reason: collision with root package name */
    private final C1975xc f14312b;

    public Yb(V<Location> v, C1975xc c1975xc) {
        super(v);
        this.f14312b = c1975xc;
    }

    @Override // com.yandex.metrica.impl.ob.V
    public void b(Location location) {
        Location location2 = location;
        if (location2 != null) {
            this.f14312b.b((C1975xc) location2);
        }
    }
}
