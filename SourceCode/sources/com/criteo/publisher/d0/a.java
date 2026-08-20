package com.criteo.publisher.d0;

import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.s;
import com.criteo.publisher.n0.k;
import java.util.HashMap;
import java.util.Map;
/* compiled from: SdkCache.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Map<n, s> f8711a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final k f8712b;

    public a(k kVar) {
        this.f8712b = kVar;
    }

    public void a(s sVar) {
        n b2 = b(sVar);
        if (b2 != null) {
            this.f8711a.put(b2, sVar);
        }
    }

    public n b(s sVar) {
        String h2 = sVar.h();
        if (h2 == null) {
            return null;
        }
        return new n(new AdSize(sVar.k(), sVar.e()), h2, c(sVar));
    }

    private com.criteo.publisher.n0.a c(s sVar) {
        if (sVar.m()) {
            return com.criteo.publisher.n0.a.CRITEO_CUSTOM_NATIVE;
        }
        if (sVar.n()) {
            return com.criteo.publisher.n0.a.CRITEO_REWARDED;
        }
        AdSize a2 = this.f8712b.a();
        AdSize a3 = a(a2);
        AdSize adSize = new AdSize(sVar.k(), sVar.e());
        if (adSize.equals(a2) || adSize.equals(a3)) {
            return com.criteo.publisher.n0.a.CRITEO_INTERSTITIAL;
        }
        return com.criteo.publisher.n0.a.CRITEO_BANNER;
    }

    private AdSize a(AdSize adSize) {
        return new AdSize(adSize.getHeight(), adSize.getWidth());
    }

    public s a(n nVar) {
        return this.f8711a.get(nVar);
    }

    public void b(n nVar) {
        this.f8711a.remove(nVar);
    }
}
