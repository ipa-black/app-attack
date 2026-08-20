package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.model.AdUnit;
import java.util.concurrent.Future;
/* compiled from: DummyCriteo.java */
/* loaded from: classes2.dex */
public class t extends Criteo {
    @Override // com.criteo.publisher.Criteo
    public void enrichAdObjectWithBid(Object obj, Bid bid) {
    }

    @Override // com.criteo.publisher.Criteo
    public void setMopubConsent(String str) {
    }

    @Override // com.criteo.publisher.Criteo
    public void setUsPrivacyOptOut(boolean z) {
    }

    @Override // com.criteo.publisher.Criteo
    public void setUserData(UserData userData) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public void getBidForAdUnit(AdUnit adUnit, ContextData contextData, d dVar) {
        dVar.a();
    }

    @Override // com.criteo.publisher.Criteo
    public void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        bidResponseListener.onResponse(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public com.criteo.publisher.model.u getDeviceInfo() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public com.criteo.publisher.model.t getConfig() {
        return new com.criteo.publisher.model.t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public com.criteo.publisher.j0.a getInterstitialActivityHelper() {
        return new c();
    }

    @Override // com.criteo.publisher.Criteo
    public l createBannerController(CriteoBannerView criteoBannerView) {
        return new l(criteoBannerView, this, s.c().i1(), s.c().c1());
    }

    /* compiled from: DummyCriteo.java */
    /* loaded from: classes2.dex */
    private static class b extends com.criteo.publisher.model.u {
        @Override // com.criteo.publisher.model.u
        public void d() {
        }

        private b() {
            super(null, new com.criteo.publisher.e0.c());
        }

        @Override // com.criteo.publisher.model.u
        public Future<String> b() {
            return com.criteo.publisher.n0.h.b("");
        }
    }

    /* compiled from: DummyCriteo.java */
    /* loaded from: classes2.dex */
    private static class c extends com.criteo.publisher.j0.a {
        @Override // com.criteo.publisher.j0.a
        public void a(String str, com.criteo.publisher.m0.d dVar) {
        }

        @Override // com.criteo.publisher.j0.a
        public boolean b() {
            return false;
        }

        c() {
            super(null, null);
        }
    }
}
