package com.criteo.publisher.advancednative;

import com.criteo.publisher.x;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.concurrent.Executor;
/* compiled from: ImpressionHelper.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.k0.g f8658a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f8659b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.e0.c f8660c;

    public i(com.criteo.publisher.k0.g gVar, Executor executor, com.criteo.publisher.e0.c cVar) {
        this.f8658a = gVar;
        this.f8659b = executor;
        this.f8660c = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Iterable<URL> iterable) {
        for (URL url : iterable) {
            this.f8659b.execute(new b(url, this.f8658a, null));
        }
    }

    /* compiled from: ImpressionHelper.java */
    /* loaded from: classes2.dex */
    class a extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CriteoNativeAdListener f8661c;

        a(i iVar, CriteoNativeAdListener criteoNativeAdListener) {
            this.f8661c = criteoNativeAdListener;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            this.f8661c.onAdImpression();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CriteoNativeAdListener criteoNativeAdListener) {
        this.f8660c.a(new a(this, criteoNativeAdListener));
    }

    /* compiled from: ImpressionHelper.java */
    /* loaded from: classes2.dex */
    private static class b extends x {

        /* renamed from: c  reason: collision with root package name */
        private final URL f8662c;

        /* renamed from: d  reason: collision with root package name */
        private final com.criteo.publisher.k0.g f8663d;

        /* synthetic */ b(URL url, com.criteo.publisher.k0.g gVar, a aVar) {
            this(url, gVar);
        }

        private b(URL url, com.criteo.publisher.k0.g gVar) {
            this.f8662c = url;
            this.f8663d = gVar;
        }

        @Override // com.criteo.publisher.x
        public void a() throws IOException {
            InputStream a2 = this.f8663d.a(this.f8662c);
            if (a2 != null) {
                a2.close();
            }
        }
    }
}
