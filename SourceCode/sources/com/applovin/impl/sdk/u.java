package com.applovin.impl.sdk;

import android.location.Location;
import android.location.LocationManager;
import android.provider.Settings;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private final n f6045a;

    /* renamed from: b  reason: collision with root package name */
    private final LocationManager f6046b;

    /* renamed from: c  reason: collision with root package name */
    private double f6047c;

    /* renamed from: d  reason: collision with root package name */
    private double f6048d;

    /* renamed from: e  reason: collision with root package name */
    private long f6049e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(n nVar) {
        this.f6045a = nVar;
        this.f6046b = (LocationManager) nVar.P().getSystemService(FirebaseAnalytics.Param.LOCATION);
    }

    private Location a(String str, String str2) {
        v D;
        StringBuilder append;
        String str3;
        if (com.applovin.impl.sdk.utils.h.a(str2, this.f6045a.P())) {
            try {
                return this.f6046b.getLastKnownLocation(str);
            } catch (IllegalArgumentException e2) {
                e = e2;
                this.f6045a.D();
                if (v.a()) {
                    D = this.f6045a.D();
                    append = new StringBuilder("Failed to retrieve location from ").append(str);
                    str3 = ": device does not support this location provider.";
                    D.b("LocationManager", append.append(str3).toString(), e);
                }
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                this.f6045a.D();
                if (v.a()) {
                    D = this.f6045a.D();
                    append = new StringBuilder("Failed to retrieve location from ").append(str);
                    str3 = ": location provider is not available.";
                    D.b("LocationManager", append.append(str3).toString(), e);
                }
                return null;
            } catch (SecurityException e4) {
                e = e4;
                this.f6045a.D();
                if (v.a()) {
                    D = this.f6045a.D();
                    append = new StringBuilder("Failed to retrieve location from ").append(str);
                    str3 = ": access denied.";
                    D.b("LocationManager", append.append(str3).toString(), e);
                }
                return null;
            } catch (Throwable th) {
                e = th;
                this.f6045a.D();
                if (v.a()) {
                    D = this.f6045a.D();
                    append = new StringBuilder("Failed to retrieve location from ").append(str);
                    str3 = ".";
                    D.b("LocationManager", append.append(str3).toString(), e);
                }
                return null;
            }
        }
        return null;
    }

    private boolean f() {
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.f6045a.a(com.applovin.impl.sdk.c.b.eg)).longValue());
        if (this.f6049e == 0 || System.currentTimeMillis() - this.f6049e >= millis) {
            Location a2 = a("gps", "android.permission.ACCESS_FINE_LOCATION");
            if (a2 == null) {
                a2 = a("network", "android.permission.ACCESS_COARSE_LOCATION");
            }
            if (a2 == null) {
                return false;
            }
            this.f6047c = a2.getLatitude();
            this.f6048d = a2.getLongitude();
            this.f6049e = System.currentTimeMillis();
            return true;
        }
        return false;
    }

    public boolean a() {
        return com.applovin.impl.sdk.utils.h.a("android.permission.ACCESS_COARSE_LOCATION", this.f6045a.P());
    }

    public boolean b() {
        return com.applovin.impl.sdk.utils.h.h() ? this.f6046b.isLocationEnabled() : (com.applovin.impl.sdk.utils.h.c() && Settings.Secure.getInt(this.f6045a.P().getContentResolver(), "location_mode", 0) == 0) ? false : true;
    }

    public boolean c() {
        if (this.f6045a.q().isLocationCollectionEnabled() && ((Boolean) this.f6045a.a(com.applovin.impl.sdk.c.b.ef)).booleanValue() && a()) {
            return f() || this.f6049e != 0;
        }
        return false;
    }

    public double d() {
        return this.f6047c;
    }

    public double e() {
        return this.f6048d;
    }
}
