package com.applovin.impl.a.a.a;

import com.applovin.impl.sdk.ad.e;
import com.appodeal.ads.modules.common.internal.LogConstants;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final long f4222a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f4223b;

    /* renamed from: c  reason: collision with root package name */
    private String f4224c;

    /* renamed from: d  reason: collision with root package name */
    private String f4225d;

    public a(Object obj, long j) {
        String networkName;
        this.f4223b = obj;
        this.f4222a = j;
        if (obj instanceof e) {
            e eVar = (e) obj;
            this.f4224c = eVar.getAdZone().b() != null ? eVar.getAdZone().b().getLabel() : null;
            networkName = "AppLovin";
        } else if (!(obj instanceof com.applovin.impl.mediation.a.a)) {
            return;
        } else {
            com.applovin.impl.mediation.a.a aVar = (com.applovin.impl.mediation.a.a) obj;
            this.f4224c = aVar.getFormat() != null ? aVar.getFormat().getLabel() : null;
            networkName = aVar.getNetworkName();
        }
        this.f4225d = networkName;
    }

    public String a() {
        String str = this.f4224c;
        return str != null ? str : LogConstants.KEY_UNKNOWN;
    }

    public String b() {
        String str = this.f4225d;
        return str != null ? str : LogConstants.KEY_UNKNOWN;
    }

    public Object c() {
        return this.f4223b;
    }

    public long d() {
        return this.f4222a;
    }
}
