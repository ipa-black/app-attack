package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.q;
import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import java.io.IOException;
/* compiled from: TreeTypeAdapter.java */
/* loaded from: classes2.dex */
public final class l<T> extends t<T> {

    /* renamed from: a  reason: collision with root package name */
    final com.bykv.vk.openvk.preload.a.f f8214a;

    /* renamed from: b  reason: collision with root package name */
    private final q<T> f8215b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.j<T> f8216c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.c.a<T> f8217d;

    /* renamed from: g  reason: collision with root package name */
    private t<T> f8220g;

    /* renamed from: f  reason: collision with root package name */
    private final l<T>.a f8219f = new a(this, (byte) 0);

    /* renamed from: e  reason: collision with root package name */
    private final u f8218e = null;

    public l(q<T> qVar, com.bykv.vk.openvk.preload.a.j<T> jVar, com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        this.f8215b = qVar;
        this.f8216c = jVar;
        this.f8214a = fVar;
        this.f8217d = aVar;
    }

    @Override // com.bykv.vk.openvk.preload.a.t
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (this.f8216c == null) {
            return b().a(aVar);
        }
        if (com.bykv.vk.openvk.preload.a.b.k.a(aVar) instanceof com.bykv.vk.openvk.preload.a.m) {
            return null;
        }
        return this.f8216c.a();
    }

    @Override // com.bykv.vk.openvk.preload.a.t
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t) throws IOException {
        q<T> qVar = this.f8215b;
        if (qVar == null) {
            b().a(cVar, t);
        } else if (t == null) {
            cVar.e();
        } else {
            com.bykv.vk.openvk.preload.a.b.k.a(qVar.a(), cVar);
        }
    }

    private t<T> b() {
        t<T> tVar = this.f8220g;
        if (tVar != null) {
            return tVar;
        }
        t<T> a2 = this.f8214a.a(this.f8218e, this.f8217d);
        this.f8220g = a2;
        return a2;
    }

    /* compiled from: TreeTypeAdapter.java */
    /* loaded from: classes2.dex */
    final class a {
        private a() {
        }

        /* synthetic */ a(l lVar, byte b2) {
            this();
        }
    }
}
