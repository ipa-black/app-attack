package com.criteo.publisher.advancednative;

import java.lang.ref.Reference;
import java.net.URI;
/* compiled from: AdChoiceClickHandler.java */
/* loaded from: classes2.dex */
class a implements n {

    /* renamed from: a  reason: collision with root package name */
    private final URI f8631a;

    /* renamed from: b  reason: collision with root package name */
    private final Reference<CriteoNativeAdListener> f8632b;

    /* renamed from: c  reason: collision with root package name */
    private final f f8633c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(URI uri, Reference<CriteoNativeAdListener> reference, f fVar) {
        this.f8631a = uri;
        this.f8632b = reference;
        this.f8633c = fVar;
    }

    /* compiled from: AdChoiceClickHandler.java */
    /* renamed from: com.criteo.publisher.advancednative.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0243a implements com.criteo.publisher.b0.c {
        C0243a() {
        }

        @Override // com.criteo.publisher.b0.c
        public void b() {
            a.this.f8633c.c((CriteoNativeAdListener) a.this.f8632b.get());
        }

        @Override // com.criteo.publisher.b0.c
        public void a() {
            a.this.f8633c.b((CriteoNativeAdListener) a.this.f8632b.get());
        }
    }

    @Override // com.criteo.publisher.advancednative.n
    public void a() {
        this.f8633c.a(this.f8631a, new C0243a());
    }
}
