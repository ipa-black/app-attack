package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Looper;
/* loaded from: classes5.dex */
class Tc extends Dc<Xb> {

    /* renamed from: f  reason: collision with root package name */
    private final LocationManager f13950f;

    /* renamed from: g  reason: collision with root package name */
    private final String f13951g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tc(Context context, Looper looper, LocationManager locationManager, InterfaceC2024zd interfaceC2024zd, String str, LocationListener locationListener) {
        super(context, locationListener, interfaceC2024zd, looper);
        this.f13950f = locationManager;
        this.f13951g = str;
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public void b() {
        Location lastKnownLocation;
        if (this.f12803b.a(this.f12802a)) {
            LocationManager locationManager = this.f13950f;
            String str = "getting last known location for provider " + this.f13951g;
            if (locationManager != null) {
                try {
                    lastKnownLocation = locationManager.getLastKnownLocation(this.f13951g);
                } catch (Throwable unused) {
                }
                this.f12804c.onLocationChanged(lastKnownLocation);
            }
            lastKnownLocation = null;
            this.f12804c.onLocationChanged(lastKnownLocation);
        }
    }

    public boolean c() {
        if (this.f12803b.a(this.f12802a)) {
            String str = this.f13951g;
            long j = Dc.f12801e;
            LocationListener locationListener = this.f12804c;
            Looper looper = this.f12805d;
            LocationManager locationManager = this.f13950f;
            if (locationManager != null) {
                try {
                    locationManager.requestLocationUpdates(str, j, 0.0f, locationListener, looper);
                    return true;
                } catch (Throwable unused) {
                    return false;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public /* bridge */ /* synthetic */ boolean a(Xb xb) {
        return c();
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public void a() {
        LocationManager locationManager = this.f13950f;
        if (locationManager != null) {
            try {
                locationManager.removeUpdates(this.f12804c);
            } catch (Throwable unused) {
            }
        }
    }
}
