package com.ironsource.mediationsdk.adunit.c;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.List;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    IronSource.AD_UNIT f10995a;

    /* renamed from: b  reason: collision with root package name */
    String f10996b;

    /* renamed from: c  reason: collision with root package name */
    List<NetworkSettings> f10997c;

    /* renamed from: d  reason: collision with root package name */
    com.ironsource.mediationsdk.utils.c f10998d;

    /* renamed from: e  reason: collision with root package name */
    int f10999e;

    /* renamed from: f  reason: collision with root package name */
    int f11000f;

    /* renamed from: g  reason: collision with root package name */
    int f11001g;

    /* renamed from: h  reason: collision with root package name */
    com.ironsource.mediationsdk.adunit.c.b.a f11002h;
    int i;

    public a(IronSource.AD_UNIT ad_unit, String str, List<NetworkSettings> list, com.ironsource.mediationsdk.utils.c cVar, int i, int i2, int i3, int i4, com.ironsource.mediationsdk.adunit.c.b.a aVar) {
        this.f10995a = ad_unit;
        this.f10996b = str;
        this.f10997c = list;
        this.f10998d = cVar;
        this.f10999e = i;
        this.f11001g = i2;
        this.f11000f = i3;
        this.f11002h = aVar;
        this.i = i4;
    }

    public final NetworkSettings a(String str) {
        for (NetworkSettings networkSettings : this.f10997c) {
            if (networkSettings.getProviderInstanceName().equals(str)) {
                return networkSettings;
            }
        }
        return null;
    }

    public final boolean a() {
        return this.f10998d.f11408e > 0;
    }
}
