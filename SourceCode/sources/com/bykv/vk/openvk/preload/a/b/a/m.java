package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.b.a.i;
import com.bykv.vk.openvk.preload.a.t;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* loaded from: classes2.dex */
public final class m<T> extends t<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.f f8222a;

    /* renamed from: b  reason: collision with root package name */
    private final t<T> f8223b;

    /* renamed from: c  reason: collision with root package name */
    private final Type f8224c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(com.bykv.vk.openvk.preload.a.f fVar, t<T> tVar, Type type) {
        this.f8222a = fVar;
        this.f8223b = tVar;
        this.f8224c = type;
    }

    @Override // com.bykv.vk.openvk.preload.a.t
    public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        return this.f8223b.a(aVar);
    }

    @Override // com.bykv.vk.openvk.preload.a.t
    public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t) throws IOException {
        t<T> tVar = this.f8223b;
        Type type = this.f8224c;
        if (t != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t.getClass();
        }
        if (type != this.f8224c) {
            tVar = this.f8222a.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type));
            if (tVar instanceof i.a) {
                t<T> tVar2 = this.f8223b;
                if (!(tVar2 instanceof i.a)) {
                    tVar = tVar2;
                }
            }
        }
        tVar.a(cVar, t);
    }
}
