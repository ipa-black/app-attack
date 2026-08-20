package com.ironsource.sdk.f;

import com.ironsource.mediationsdk.model.c;
import com.ironsource.mediationsdk.model.d;
import com.ironsource.mediationsdk.model.p;
import com.ironsource.mediationsdk.utils.j;
import com.ironsource.sdk.controller.u;
import com.ironsource.sdk.g.d;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private d f11997a;

    /* renamed from: b  reason: collision with root package name */
    private p f11998b;

    /* renamed from: c  reason: collision with root package name */
    private com.ironsource.mediationsdk.utils.p f11999c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f12000d;

    /* renamed from: e  reason: collision with root package name */
    private u f12001e;

    /* renamed from: f  reason: collision with root package name */
    private com.ironsource.mediationsdk.utils.b f12002f;

    /* renamed from: g  reason: collision with root package name */
    private c f12003g;

    /* renamed from: h  reason: collision with root package name */
    private j f12004h;
    private com.ironsource.mediationsdk.model.b i;

    /* renamed from: com.ironsource.sdk.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0327a {

        /* renamed from: a  reason: collision with root package name */
        public String f12005a;

        /* renamed from: b  reason: collision with root package name */
        public String f12006b;

        /* renamed from: c  reason: collision with root package name */
        public String f12007c;

        public static C0327a a(d.e eVar) {
            String str;
            C0327a c0327a = new C0327a();
            if (eVar == d.e.RewardedVideo) {
                c0327a.f12005a = "showRewardedVideo";
                c0327a.f12006b = "onShowRewardedVideoSuccess";
                str = "onShowRewardedVideoFail";
            } else if (eVar != d.e.Interstitial) {
                if (eVar == d.e.OfferWall) {
                    c0327a.f12005a = "showOfferWall";
                    c0327a.f12006b = "onShowOfferWallSuccess";
                    str = "onInitOfferWallFail";
                }
                return c0327a;
            } else {
                c0327a.f12005a = "showInterstitial";
                c0327a.f12006b = "onShowInterstitialSuccess";
                str = "onShowInterstitialFail";
            }
            c0327a.f12007c = str;
            return c0327a;
        }
    }

    public a() {
        this.f11997a = new com.ironsource.mediationsdk.model.d();
    }

    public a(com.ironsource.mediationsdk.model.d dVar, p pVar, com.ironsource.mediationsdk.utils.p pVar2, boolean z, u uVar, com.ironsource.mediationsdk.utils.b bVar, c cVar, j jVar, com.ironsource.mediationsdk.model.b bVar2) {
        this.f11997a = dVar;
        this.f11998b = pVar;
        this.f11999c = pVar2;
        this.f12000d = z;
        this.f12001e = uVar;
        this.f12002f = bVar;
        this.f12003g = cVar;
        this.f12004h = jVar;
        this.i = bVar2;
    }

    public com.ironsource.mediationsdk.model.d a() {
        return this.f11997a;
    }

    public p b() {
        return this.f11998b;
    }

    public com.ironsource.mediationsdk.utils.p c() {
        return this.f11999c;
    }

    public boolean d() {
        return this.f12000d;
    }

    public u e() {
        return this.f12001e;
    }

    public com.ironsource.mediationsdk.utils.b f() {
        return this.f12002f;
    }

    public c g() {
        return this.f12003g;
    }

    public j h() {
        return this.f12004h;
    }

    public com.ironsource.mediationsdk.model.b i() {
        return this.i;
    }
}
