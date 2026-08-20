package com.criteo.publisher.advancednative;

import com.criteo.publisher.x;
import java.net.URI;
/* compiled from: ClickHelper.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.b0.b f8644a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.a0.b f8645b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.e0.c f8646c;

    public f(com.criteo.publisher.b0.b bVar, com.criteo.publisher.a0.b bVar2, com.criteo.publisher.e0.c cVar) {
        this.f8644a = bVar;
        this.f8645b = bVar2;
        this.f8646c = cVar;
    }

    /* compiled from: ClickHelper.java */
    /* loaded from: classes2.dex */
    class a extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f8647c;

        a(f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f8647c = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            this.f8647c.onAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener == null) {
            return;
        }
        this.f8646c.a(new a(this, criteoNativeAdListener));
    }

    /* compiled from: ClickHelper.java */
    /* loaded from: classes2.dex */
    class b extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f8648c;

        b(f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f8648c = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            this.f8648c.onAdLeftApplication();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener == null) {
            return;
        }
        this.f8646c.a(new b(this, criteoNativeAdListener));
    }

    /* compiled from: ClickHelper.java */
    /* loaded from: classes2.dex */
    class c extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f8649c;

        c(f fVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f8649c = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            this.f8649c.onAdClosed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(CriteoNativeAdListener criteoNativeAdListener) {
        if (criteoNativeAdListener == null) {
            return;
        }
        this.f8646c.a(new c(this, criteoNativeAdListener));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(URI uri, com.criteo.publisher.b0.c cVar) {
        this.f8644a.a(uri.toString(), this.f8645b.a(), cVar);
    }
}
