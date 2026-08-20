package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.C1787pf;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.ad  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1411ad {
    public C1787pf.b a(Hc hc) {
        int i;
        C1787pf.b bVar = new C1787pf.b();
        Location c2 = hc.c();
        bVar.f15385a = hc.b() == null ? bVar.f15385a : hc.b().longValue();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bVar.f15387c = timeUnit.toSeconds(c2.getTime());
        bVar.k = J1.a(hc.f13039a);
        bVar.f15386b = timeUnit.toSeconds(hc.e());
        bVar.l = timeUnit.toSeconds(hc.d());
        bVar.f15388d = c2.getLatitude();
        bVar.f15389e = c2.getLongitude();
        bVar.f15390f = Math.round(c2.getAccuracy());
        bVar.f15391g = Math.round(c2.getBearing());
        bVar.f15392h = Math.round(c2.getSpeed());
        bVar.i = (int) Math.round(c2.getAltitude());
        String provider = c2.getProvider();
        if ("gps".equals(provider)) {
            i = 1;
        } else if ("network".equals(provider)) {
            i = 2;
        } else {
            i = "fused".equals(provider) ? 3 : 0;
        }
        bVar.j = i;
        bVar.m = J1.a(hc.a());
        return bVar;
    }
}
