package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.a0;
/* compiled from: CriteoInterstitialEventController.java */
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final a0 f9190a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.model.u f9191b;

    /* renamed from: c  reason: collision with root package name */
    private final Criteo f9192c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.j0.a f9193d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.m0.d f9194e;

    public n(a0 a0Var, com.criteo.publisher.j0.a aVar, Criteo criteo, com.criteo.publisher.m0.d dVar) {
        this.f9190a = a0Var;
        this.f9193d = aVar;
        this.f9192c = criteo;
        this.f9191b = criteo.getDeviceInfo();
        this.f9194e = dVar;
    }

    public boolean a() {
        return this.f9190a.e();
    }

    public void a(AdUnit adUnit, ContextData contextData) {
        if (!this.f9193d.b()) {
            b();
        } else if (this.f9190a.f()) {
        } else {
            this.f9190a.b();
            this.f9192c.getBidForAdUnit(adUnit, contextData, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CriteoInterstitialEventController.java */
    /* loaded from: classes2.dex */
    public class a implements d {
        a() {
        }

        @Override // com.criteo.publisher.d
        public void a(com.criteo.publisher.model.s sVar) {
            n.this.a(sVar.d());
        }

        @Override // com.criteo.publisher.d
        public void a() {
            n.this.b();
            n.this.f9190a.a();
        }
    }

    public void a(Bid bid) {
        if (!this.f9193d.b()) {
            b();
            return;
        }
        String a2 = bid == null ? null : bid.a(com.criteo.publisher.n0.a.CRITEO_INTERSTITIAL);
        if (a2 == null) {
            b();
        } else {
            a(a2);
        }
    }

    void b() {
        this.f9194e.a(p.INVALID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f9190a.a(str, this.f9191b, this.f9194e);
    }

    public void c() {
        if (a()) {
            this.f9193d.a(this.f9190a.d(), this.f9194e);
            this.f9194e.a(p.OPEN);
            this.f9190a.g();
        }
    }
}
