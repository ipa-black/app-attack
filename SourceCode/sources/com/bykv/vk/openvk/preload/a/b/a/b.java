package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* compiled from: CollectionTypeAdapterFactory.java */
/* loaded from: classes2.dex */
public final class b implements u {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.c f8169a;

    public b(com.bykv.vk.openvk.preload.a.b.c cVar) {
        this.f8169a = cVar;
    }

    /* compiled from: CollectionTypeAdapterFactory.java */
    /* loaded from: classes2.dex */
    static final class a<E> extends t<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final t<E> f8170a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.i<? extends Collection<E>> f8171b;

        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                cVar.e();
                return;
            }
            cVar.a();
            for (E e2 : collection) {
                this.f8170a.a(cVar, e2);
            }
            cVar.b();
        }

        public a(com.bykv.vk.openvk.preload.a.f fVar, Type type, t<E> tVar, com.bykv.vk.openvk.preload.a.b.i<? extends Collection<E>> iVar) {
            this.f8170a = new m(fVar, tVar, type);
            this.f8171b = iVar;
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.k();
                return null;
            }
            Collection<E> a2 = this.f8171b.a();
            aVar.a();
            while (aVar.e()) {
                a2.add(this.f8170a.a(aVar));
            }
            aVar.b();
            return a2;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.u
    public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Type type = aVar.f8338c;
        Class<? super T> cls = aVar.f8337b;
        if (Collection.class.isAssignableFrom(cls)) {
            Type a2 = com.bykv.vk.openvk.preload.a.b.b.a(type, (Class<?>) cls);
            return new a(fVar, a2, fVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(a2)), this.f8169a.a(aVar));
        }
        return null;
    }
}
