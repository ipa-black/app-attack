package com.applovin.impl.sdk.e;

import com.applovin.impl.b.a;
import com.applovin.impl.sdk.e.o;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdType;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.util.HashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t extends a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.b.e f5762a;

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinAdLoadListener f5763e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskRenderVastAd", nVar);
        this.f5763e = appLovinAdLoadListener;
        this.f5762a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Rendering VAST ad...");
        }
        int size = this.f5762a.b().size();
        HashSet hashSet = new HashSet(size);
        HashSet hashSet2 = new HashSet(size);
        String str = "";
        com.applovin.impl.b.j jVar = null;
        com.applovin.impl.b.n nVar = null;
        com.applovin.impl.b.d dVar = null;
        com.applovin.impl.b.c cVar = null;
        String str2 = "";
        for (com.applovin.impl.sdk.utils.s sVar : this.f5762a.b()) {
            com.applovin.impl.sdk.utils.s c2 = sVar.c(com.applovin.impl.b.m.a(sVar) ? "Wrapper" : "InLine");
            if (c2 != null) {
                com.applovin.impl.sdk.utils.s c3 = c2.c("AdSystem");
                if (c3 != null) {
                    jVar = com.applovin.impl.b.j.a(c3, jVar, this.f5674b);
                }
                str = com.applovin.impl.b.m.a(c2, "AdTitle", str);
                str2 = com.applovin.impl.b.m.a(c2, "Description", str2);
                com.applovin.impl.b.m.a(c2.a("Impression"), hashSet, this.f5762a, this.f5674b);
                com.applovin.impl.sdk.utils.s b2 = c2.b("ViewableImpression");
                if (b2 != null) {
                    com.applovin.impl.b.m.a(b2.a("Viewable"), hashSet, this.f5762a, this.f5674b);
                }
                com.applovin.impl.sdk.utils.s c4 = c2.c("AdVerifications");
                if (c4 != null) {
                    cVar = com.applovin.impl.b.c.a(c4, cVar, this.f5762a, this.f5674b);
                }
                com.applovin.impl.b.m.a(c2.a(LogConstants.EVENT_ERROR), hashSet2, this.f5762a, this.f5674b);
                com.applovin.impl.sdk.utils.s b3 = c2.b("Creatives");
                if (b3 != null) {
                    for (com.applovin.impl.sdk.utils.s sVar2 : b3.d()) {
                        com.applovin.impl.sdk.utils.s b4 = sVar2.b("Linear");
                        if (b4 != null) {
                            nVar = com.applovin.impl.b.n.a(b4, nVar, this.f5762a, this.f5674b);
                        } else {
                            com.applovin.impl.sdk.utils.s c5 = sVar2.c("CompanionAds");
                            if (c5 != null) {
                                com.applovin.impl.sdk.utils.s c6 = c5.c("Companion");
                                if (c6 != null) {
                                    dVar = com.applovin.impl.b.d.a(c6, dVar, this.f5762a, this.f5674b);
                                }
                            } else {
                                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                                if (com.applovin.impl.sdk.v.a()) {
                                    this.f5676d.e(this.f5675c, "Received and will skip rendering for an unidentified creative: " + sVar2);
                                }
                            }
                        }
                    }
                }
            } else {
                com.applovin.impl.sdk.v vVar3 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Did not find wrapper or inline response for node: " + sVar);
                }
            }
        }
        com.applovin.impl.b.a a2 = new a.C0063a().a(this.f5674b).a(this.f5762a.c()).b(this.f5762a.d()).a(this.f5762a.e()).a(this.f5762a.f()).a(str).b(str2).a(jVar).a(nVar).a(dVar).a(cVar).a(hashSet).a(cVar).b(hashSet2).a();
        com.applovin.impl.b.f a3 = com.applovin.impl.b.m.a(a2);
        if (a3 != null) {
            com.applovin.impl.b.m.a(this.f5762a, this.f5763e, a3, -6, this.f5674b);
            return;
        }
        com.applovin.impl.sdk.v vVar4 = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Finished rendering VAST ad: " + a2);
        }
        a2.o().b();
        e eVar = new e(a2, this.f5674b, this.f5763e);
        o.a aVar = o.a.CACHING_OTHER;
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.br)).booleanValue()) {
            if (a2.getType() == AppLovinAdType.REGULAR) {
                aVar = o.a.CACHING_INTERSTITIAL;
            } else if (a2.getType() == AppLovinAdType.INCENTIVIZED) {
                aVar = o.a.CACHING_INCENTIVIZED;
            }
        }
        this.f5674b.V().a(eVar, aVar);
    }
}
