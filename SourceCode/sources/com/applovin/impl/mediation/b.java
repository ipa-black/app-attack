package com.applovin.impl.mediation;

import com.applovin.impl.mediation.a;
import com.applovin.impl.mediation.c;
import com.applovin.impl.sdk.n;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
public class b implements a.InterfaceC0064a, c.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f4801a;

    /* renamed from: b  reason: collision with root package name */
    private final c f4802b;

    /* renamed from: c  reason: collision with root package name */
    private final MaxAdListener f4803c;

    public b(n nVar, MaxAdListener maxAdListener) {
        this.f4803c = maxAdListener;
        this.f4801a = new a(nVar);
        this.f4802b = new c(nVar, this);
    }

    @Override // com.applovin.impl.mediation.a.InterfaceC0064a
    public void a(final com.applovin.impl.mediation.a.c cVar) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.f4803c.onAdHidden(cVar);
            }
        }, cVar.C());
    }

    public void a(MaxAd maxAd) {
        this.f4802b.a();
        this.f4801a.a();
    }

    public void b(com.applovin.impl.mediation.a.c cVar) {
        long A = cVar.A();
        if (A >= 0) {
            this.f4802b.a(cVar, A);
        }
        if (cVar.B()) {
            this.f4801a.a(cVar, this);
        }
    }

    @Override // com.applovin.impl.mediation.c.a
    public void c(com.applovin.impl.mediation.a.c cVar) {
        this.f4803c.onAdHidden(cVar);
    }
}
