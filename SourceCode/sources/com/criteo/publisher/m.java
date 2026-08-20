package com.criteo.publisher;

import android.app.Application;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.model.AdUnit;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CriteoInternal.java */
/* loaded from: classes2.dex */
public class m extends Criteo {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f9003a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final s f9004b;

    /* renamed from: c  reason: collision with root package name */
    private final e f9005c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.model.u f9006d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.model.t f9007e;

    /* renamed from: f  reason: collision with root package name */
    private final com.criteo.publisher.l0.c f9008f;

    /* renamed from: g  reason: collision with root package name */
    private final j f9009g;

    /* renamed from: h  reason: collision with root package name */
    private final com.criteo.publisher.h0.c f9010h;
    private final com.criteo.publisher.j0.a i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Application application, List<AdUnit> list, Boolean bool, String str, s sVar) {
        this.f9004b = sVar;
        sVar.f1();
        com.criteo.publisher.model.u z0 = sVar.z0();
        this.f9006d = z0;
        z0.d();
        sVar.d0().f();
        this.f9007e = sVar.q0();
        this.f9005c = sVar.k0();
        this.f9009g = sVar.u0();
        this.f9010h = sVar.C0();
        this.i = sVar.G0();
        com.criteo.publisher.l0.c l1 = sVar.l1();
        this.f9008f = l1;
        if (bool != null) {
            l1.a(bool.booleanValue());
        }
        if (str != null) {
            l1.a(str);
        }
        application.registerActivityLifecycleCallbacks(sVar.g0());
        sVar.i1().a(application);
        sVar.j0().a();
        a(sVar.c1(), list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CriteoInternal.java */
    /* loaded from: classes2.dex */
    public class a extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f9011c;

        a(List list) {
            this.f9011c = list;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            m.this.f9005c.a(this.f9011c);
        }
    }

    private void a(Executor executor, List<AdUnit> list) {
        executor.execute(new a(list));
    }

    @Override // com.criteo.publisher.Criteo
    public void enrichAdObjectWithBid(Object obj, Bid bid) {
        try {
            a(obj, bid);
        } catch (Throwable th) {
            this.f9003a.a(v.b(th));
        }
    }

    private void a(Object obj, Bid bid) {
        this.f9010h.a(obj, bid);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public void getBidForAdUnit(AdUnit adUnit, ContextData contextData, d dVar) {
        this.f9005c.a(adUnit, contextData, dVar);
    }

    @Override // com.criteo.publisher.Criteo
    public void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        try {
            this.f9009g.a(adUnit, contextData, bidResponseListener);
        } catch (Throwable th) {
            this.f9003a.a(v.b(th));
            bidResponseListener.onResponse(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public com.criteo.publisher.model.u getDeviceInfo() {
        return this.f9006d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public com.criteo.publisher.model.t getConfig() {
        return this.f9007e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public com.criteo.publisher.j0.a getInterstitialActivityHelper() {
        return this.i;
    }

    @Override // com.criteo.publisher.Criteo
    public l createBannerController(CriteoBannerView criteoBannerView) {
        return new l(criteoBannerView, this, this.f9004b.i1(), this.f9004b.c1());
    }

    @Override // com.criteo.publisher.Criteo
    public void setUsPrivacyOptOut(boolean z) {
        this.f9008f.a(z);
    }

    @Override // com.criteo.publisher.Criteo
    public void setMopubConsent(String str) {
        this.f9008f.a(str);
    }

    @Override // com.criteo.publisher.Criteo
    public void setUserData(UserData userData) {
        this.f9004b.k1().a(userData);
    }
}
