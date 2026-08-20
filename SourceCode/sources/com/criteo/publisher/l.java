package com.criteo.publisher;

import android.webkit.WebViewClient;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AdUnit;
import java.lang.ref.WeakReference;
/* compiled from: CriteoBannerEventController.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<CriteoBannerView> f8918a;

    /* renamed from: b  reason: collision with root package name */
    private final CriteoBannerAdListener f8919b;

    /* renamed from: c  reason: collision with root package name */
    private final Criteo f8920c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.a0.b f8921d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.e0.c f8922e;

    public l(CriteoBannerView criteoBannerView, Criteo criteo, com.criteo.publisher.a0.b bVar, com.criteo.publisher.e0.c cVar) {
        this.f8918a = new WeakReference<>(criteoBannerView);
        this.f8919b = criteoBannerView.getCriteoBannerAdListener();
        this.f8920c = criteo;
        this.f8921d = bVar;
        this.f8922e = cVar;
    }

    /* compiled from: CriteoBannerEventController.java */
    /* loaded from: classes2.dex */
    class a implements d {
        a() {
        }

        @Override // com.criteo.publisher.d
        public void a(com.criteo.publisher.model.s sVar) {
            l.this.a(p.VALID);
            l.this.a(sVar.d());
        }

        @Override // com.criteo.publisher.d
        public void a() {
            l.this.a(p.INVALID);
        }
    }

    public void a(AdUnit adUnit, ContextData contextData) {
        this.f8920c.getBidForAdUnit(adUnit, contextData, new a());
    }

    public void a(Bid bid) {
        String a2 = bid == null ? null : bid.a(com.criteo.publisher.n0.a.CRITEO_BANNER);
        if (a2 == null) {
            a(p.INVALID);
            return;
        }
        a(p.VALID);
        a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(p pVar) {
        this.f8922e.a(new com.criteo.publisher.m0.a(this.f8919b, this.f8918a, pVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f8922e.a(new com.criteo.publisher.m0.b(this.f8918a, a(), this.f8920c.getConfig(), str));
    }

    WebViewClient a() {
        return new com.criteo.publisher.b0.a(new b(), this.f8921d.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CriteoBannerEventController.java */
    /* loaded from: classes2.dex */
    public class b implements com.criteo.publisher.b0.c {
        @Override // com.criteo.publisher.b0.c
        public void a() {
        }

        b() {
        }

        @Override // com.criteo.publisher.b0.c
        public void b() {
            l.this.a(p.CLICK);
        }
    }
}
