package com.criteo.publisher.advancednative;

import java.lang.ref.WeakReference;
/* compiled from: NativeAdMapper.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final q f8671a;

    /* renamed from: b  reason: collision with root package name */
    private final i f8672b;

    /* renamed from: c  reason: collision with root package name */
    private final e f8673c;

    /* renamed from: d  reason: collision with root package name */
    private final f f8674d;

    /* renamed from: e  reason: collision with root package name */
    private final b f8675e;

    /* renamed from: f  reason: collision with root package name */
    private final RendererHelper f8676f;

    public l(q qVar, i iVar, e eVar, f fVar, b bVar, RendererHelper rendererHelper) {
        this.f8671a = qVar;
        this.f8672b = iVar;
        this.f8673c = eVar;
        this.f8674d = fVar;
        this.f8675e = bVar;
        this.f8676f = rendererHelper;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CriteoNativeAd a(com.criteo.publisher.model.b0.n nVar, WeakReference<CriteoNativeAdListener> weakReference, CriteoNativeRenderer criteoNativeRenderer) {
        j jVar = new j(nVar.g(), weakReference, this.f8672b);
        c cVar = new c(nVar.n().b(), weakReference, this.f8674d);
        a aVar = new a(nVar.l(), weakReference, this.f8674d);
        this.f8676f.preloadMedia(nVar.n().e());
        this.f8676f.preloadMedia(nVar.f());
        this.f8676f.preloadMedia(nVar.m());
        return new CriteoNativeAd(nVar, this.f8671a, jVar, this.f8673c, cVar, aVar, this.f8675e, criteoNativeRenderer, this.f8676f);
    }
}
