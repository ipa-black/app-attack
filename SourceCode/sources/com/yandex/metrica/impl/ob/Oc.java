package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes5.dex */
public class Oc {

    /* renamed from: a  reason: collision with root package name */
    private final LocationManager f13582a;

    /* renamed from: b  reason: collision with root package name */
    private final H2 f13583b;

    /* renamed from: c  reason: collision with root package name */
    private final Xj f13584c = F0.g().v();

    public Oc(Context context) {
        this.f13582a = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        this.f13583b = H2.a(context);
    }

    public LocationManager a() {
        return this.f13582a;
    }

    public Xj b() {
        return this.f13584c;
    }

    public H2 c() {
        return this.f13583b;
    }
}
