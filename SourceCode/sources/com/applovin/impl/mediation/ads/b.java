package com.applovin.impl.mediation.ads;

import android.view.ViewGroup;
import com.applovin.impl.mediation.a.d;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
import com.applovin.impl.sdk.y;
import com.applovin.impl.sdk.z;
/* loaded from: classes.dex */
public class b implements z.a {

    /* renamed from: a  reason: collision with root package name */
    private final n f4796a;

    /* renamed from: b  reason: collision with root package name */
    private final d f4797b;

    /* renamed from: c  reason: collision with root package name */
    private final z f4798c;

    /* renamed from: d  reason: collision with root package name */
    private final y f4799d;

    /* renamed from: e  reason: collision with root package name */
    private final a.InterfaceC0065a f4800e;

    public b(d dVar, ViewGroup viewGroup, a.InterfaceC0065a interfaceC0065a, n nVar) {
        this.f4796a = nVar;
        this.f4797b = dVar;
        this.f4800e = interfaceC0065a;
        this.f4799d = new y(viewGroup, nVar);
        z zVar = new z(viewGroup, nVar, this);
        this.f4798c = zVar;
        zVar.a(dVar);
        nVar.D();
        if (v.a()) {
            nVar.D().b("MaxNativeAdView", "Created new MaxNativeAdView (" + this + ")");
        }
    }

    private void a(long j) {
        if (this.f4797b.F().compareAndSet(false, true)) {
            this.f4796a.D();
            if (v.a()) {
                this.f4796a.D().b("MaxNativeAdView", "Scheduling viewability impression for ad...");
            }
            this.f4796a.H().processViewabilityAdImpressionPostback(this.f4797b, j, this.f4800e);
        }
    }

    public void a() {
        this.f4798c.a();
    }

    public void b() {
        this.f4796a.D();
        if (v.a()) {
            this.f4796a.D().b("MaxNativeAdView", "Handling view attached to window");
        }
        if (this.f4797b.E().compareAndSet(false, true)) {
            this.f4796a.D();
            if (v.a()) {
                this.f4796a.D().b("MaxNativeAdView", "Scheduling impression for ad manually...");
            }
            if (this.f4797b.getNativeAd().isExpired()) {
                v.i("MaxNativeAdView", "Attempting to display an expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
            } else {
                this.f4797b.G();
            }
            this.f4796a.H().processRawAdImpressionPostback(this.f4797b, this.f4800e);
        }
    }

    public d c() {
        return this.f4797b;
    }

    @Override // com.applovin.impl.sdk.z.a
    public void onLogVisibilityImpression() {
        a(this.f4799d.a(this.f4797b));
    }
}
