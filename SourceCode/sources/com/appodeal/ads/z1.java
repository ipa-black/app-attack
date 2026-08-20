package com.appodeal.ads;

import android.location.Location;
/* loaded from: classes.dex */
public final class z1 implements LocationData {

    /* renamed from: d  reason: collision with root package name */
    public static Location f8001d;

    /* renamed from: a  reason: collision with root package name */
    public final RestrictedData f8002a;

    /* renamed from: b  reason: collision with root package name */
    public final Location f8003b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f8004c;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public z1(android.content.Context r1, com.appodeal.ads.RestrictedData r2) {
        /*
            r0 = this;
            r0.<init>()
            r0.f8002a = r2
            if (r1 == 0) goto L1d
            com.appodeal.ads.q4 r2 = com.appodeal.ads.q4.f7303a
            r2.getClass()
            boolean r2 = com.appodeal.ads.q4.p()
            if (r2 != 0) goto L1d
            android.location.Location r1 = com.appodeal.ads.f1.i(r1)
            r0.f8003b = r1
            if (r1 == 0) goto L21
            com.appodeal.ads.z1.f8001d = r1
            goto L21
        L1d:
            android.location.Location r1 = com.appodeal.ads.z1.f8001d
            r0.f8003b = r1
        L21:
            android.location.Location r1 = r0.f8003b
            if (r1 != 0) goto L27
            r1 = 0
            goto L28
        L27:
            r1 = 1
        L28:
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.f8004c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.z1.<init>(android.content.Context, com.appodeal.ads.RestrictedData):void");
    }

    @Override // com.appodeal.ads.LocationData
    public final Location getDeviceLocation() {
        if (this.f8002a.canSendLocation()) {
            return this.f8003b;
        }
        return null;
    }

    @Override // com.appodeal.ads.LocationData
    public final Integer getDeviceLocationType() {
        if (this.f8002a.canSendLocationType()) {
            return this.f8004c;
        }
        return null;
    }

    @Override // com.appodeal.ads.LocationData
    public final Float obtainLatitude() {
        if (this.f8002a.canSendLocation()) {
            Location location = this.f8003b;
            return location != null ? Float.valueOf(Double.valueOf(location.getLatitude()).floatValue()) : l5.a().f6852h;
        }
        return null;
    }

    @Override // com.appodeal.ads.LocationData
    public final Location obtainLocation() {
        Float obtainLatitude;
        Float obtainLongitude;
        if (!this.f8002a.canSendLocation() || (obtainLatitude = obtainLatitude()) == null || (obtainLongitude = obtainLongitude()) == null) {
            return null;
        }
        Location location = new Location("unknown");
        location.setLatitude(obtainLatitude.floatValue());
        location.setLongitude(obtainLongitude.floatValue());
        return location;
    }

    @Override // com.appodeal.ads.LocationData
    public final Float obtainLongitude() {
        if (this.f8002a.canSendLocation()) {
            Location location = this.f8003b;
            return location != null ? Float.valueOf(Double.valueOf(location.getLongitude()).floatValue()) : l5.a().i;
        }
        return null;
    }
}
