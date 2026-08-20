package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: MapTypeAdapterFactory.java */
/* loaded from: classes2.dex */
public final class g implements u {

    /* renamed from: a  reason: collision with root package name */
    final boolean f8186a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.c f8187b;

    public g(com.bykv.vk.openvk.preload.a.b.c cVar, boolean z) {
        this.f8187b = cVar;
        this.f8186a = z;
    }

    /* compiled from: MapTypeAdapterFactory.java */
    /* loaded from: classes2.dex */
    final class a<K, V> extends t<Map<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private final t<K> f8189b;

        /* renamed from: c  reason: collision with root package name */
        private final t<V> f8190c;

        /* renamed from: d  reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.i<? extends Map<K, V>> f8191d;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                cVar.e();
            } else if (!g.this.f8186a) {
                cVar.c();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.a(String.valueOf(entry.getKey()));
                    this.f8190c.a(cVar, entry.getValue());
                }
                cVar.d();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                int i = 0;
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    com.bykv.vk.openvk.preload.a.k a2 = this.f8189b.a((t<K>) entry2.getKey());
                    arrayList.add(a2);
                    arrayList2.add(entry2.getValue());
                    z |= (a2 instanceof com.bykv.vk.openvk.preload.a.i) || (a2 instanceof com.bykv.vk.openvk.preload.a.n);
                }
                if (z) {
                    cVar.a();
                    int size = arrayList.size();
                    while (i < size) {
                        cVar.a();
                        com.bykv.vk.openvk.preload.a.b.k.a((com.bykv.vk.openvk.preload.a.k) arrayList.get(i), cVar);
                        this.f8190c.a(cVar, arrayList2.get(i));
                        cVar.b();
                        i++;
                    }
                    cVar.b();
                    return;
                }
                cVar.c();
                int size2 = arrayList.size();
                while (i < size2) {
                    com.bykv.vk.openvk.preload.a.k kVar = (com.bykv.vk.openvk.preload.a.k) arrayList.get(i);
                    if (kVar instanceof p) {
                        p g2 = kVar.g();
                        if (g2.f8395a instanceof Number) {
                            str = String.valueOf(g2.a());
                        } else if (g2.f8395a instanceof Boolean) {
                            str = Boolean.toString(g2.f());
                        } else if (g2.f8395a instanceof String) {
                            str = g2.b();
                        } else {
                            throw new AssertionError();
                        }
                    } else if (kVar instanceof com.bykv.vk.openvk.preload.a.m) {
                        str = "null";
                    } else {
                        throw new AssertionError();
                    }
                    cVar.a(str);
                    this.f8190c.a(cVar, arrayList2.get(i));
                    i++;
                }
                cVar.d();
            }
        }

        public a(com.bykv.vk.openvk.preload.a.f fVar, Type type, t<K> tVar, Type type2, t<V> tVar2, com.bykv.vk.openvk.preload.a.b.i<? extends Map<K, V>> iVar) {
            this.f8189b = new m(fVar, tVar, type);
            this.f8190c = new m(fVar, tVar2, type2);
            this.f8191d = iVar;
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            com.bykv.vk.openvk.preload.a.d.b f2 = aVar.f();
            if (f2 == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.k();
                return null;
            }
            Map<K, V> a2 = this.f8191d.a();
            if (f2 == com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K a3 = this.f8189b.a(aVar);
                    if (a2.put(a3, this.f8190c.a(aVar)) != null) {
                        throw new r("duplicate key: ".concat(String.valueOf(a3)));
                    }
                    aVar.b();
                }
                aVar.b();
            } else {
                aVar.c();
                while (aVar.e()) {
                    com.bykv.vk.openvk.preload.a.b.f.f8302a.a(aVar);
                    K a4 = this.f8189b.a(aVar);
                    if (a2.put(a4, this.f8190c.a(aVar)) != null) {
                        throw new r("duplicate key: ".concat(String.valueOf(a4)));
                    }
                }
                aVar.d();
            }
            return a2;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.u
    public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        t<Boolean> tVar;
        Type type = aVar.f8338c;
        if (Map.class.isAssignableFrom(aVar.f8337b)) {
            Type[] b2 = com.bykv.vk.openvk.preload.a.b.b.b(type, com.bykv.vk.openvk.preload.a.b.b.b(type));
            Type type2 = b2[0];
            if (type2 == Boolean.TYPE || type2 == Boolean.class) {
                tVar = n.f8230f;
            } else {
                tVar = fVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type2));
            }
            t<T> a2 = fVar.a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(b2[1]));
            com.bykv.vk.openvk.preload.a.b.i<T> a3 = this.f8187b.a(aVar);
            return new a(fVar, b2[0], tVar, b2[1], a2, a3);
        }
        return null;
    }
}
