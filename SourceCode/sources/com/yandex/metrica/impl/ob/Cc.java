package com.yandex.metrica.impl.ob;

import android.location.LocationManager;
/* loaded from: classes5.dex */
public class Cc {

    /* renamed from: a  reason: collision with root package name */
    public final Sb f12750a;

    /* renamed from: b  reason: collision with root package name */
    public final LocationManager f12751b;

    /* renamed from: c  reason: collision with root package name */
    public final C1709mc f12752c;

    Cc(Sb sb, C1790pi c1790pi, C1709mc c1709mc, LocationManager locationManager, Sc sc, Rb rb) {
        this.f12750a = sb;
        this.f12752c = c1709mc;
        this.f12751b = locationManager;
    }

    public static Cc a(Nc nc, Sc sc, Rb rb, LocationManager locationManager) {
        return new Cc(nc.f13534a, nc.f13535b, nc.f13536c, locationManager, sc, rb);
    }
}
