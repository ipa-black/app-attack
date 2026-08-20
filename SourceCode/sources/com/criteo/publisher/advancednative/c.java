package com.criteo.publisher.advancednative;

import java.lang.ref.Reference;
import java.net.URI;
/* compiled from: AdViewClickHandler.java */
/* loaded from: classes2.dex */
class c implements n {

    /* renamed from: a  reason: collision with root package name */
    private final URI f8638a;

    /* renamed from: b  reason: collision with root package name */
    private final Reference<CriteoNativeAdListener> f8639b;

    /* renamed from: c  reason: collision with root package name */
    private final f f8640c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(URI uri, Reference<CriteoNativeAdListener> reference, f fVar) {
        this.f8638a = uri;
        this.f8639b = reference;
        this.f8640c = fVar;
    }

    @Override // com.criteo.publisher.advancednative.n
    public void a() {
        this.f8640c.a(this.f8639b.get());
        this.f8640c.a(this.f8638a, new a());
    }

    /* compiled from: AdViewClickHandler.java */
    /* loaded from: classes2.dex */
    class a implements com.criteo.publisher.b0.c {
        a() {
        }

        @Override // com.criteo.publisher.b0.c
        public void b() {
            c.this.f8640c.c((CriteoNativeAdListener) c.this.f8639b.get());
        }

        @Override // com.criteo.publisher.b0.c
        public void a() {
            c.this.f8640c.b((CriteoNativeAdListener) c.this.f8639b.get());
        }
    }
}
