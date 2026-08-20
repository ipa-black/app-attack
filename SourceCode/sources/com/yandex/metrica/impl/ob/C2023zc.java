package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.zc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2023zc implements LocationListener {

    /* renamed from: a  reason: collision with root package name */
    private final Pc f16157a;

    public C2023zc(Pc pc) {
        this.f16157a = pc;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (location != null) {
            this.f16157a.a(location);
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
