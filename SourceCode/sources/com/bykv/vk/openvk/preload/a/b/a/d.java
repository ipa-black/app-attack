package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.q;
import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
/* compiled from: JsonAdapterAnnotationTypeAdapterFactory.java */
/* loaded from: classes2.dex */
public final class d implements u {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.c f8174a;

    public d(com.bykv.vk.openvk.preload.a.b.c cVar) {
        this.f8174a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t<?> a(com.bykv.vk.openvk.preload.a.b.c cVar, com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<?> aVar, com.bykv.vk.openvk.preload.a.a.b bVar) {
        t<?> lVar;
        Object a2 = cVar.a(com.bykv.vk.openvk.preload.a.c.a.a((Class) bVar.a())).a();
        if (a2 instanceof t) {
            lVar = (t) a2;
        } else if (a2 instanceof u) {
            lVar = ((u) a2).a(fVar, aVar);
        } else {
            boolean z = a2 instanceof q;
            if (z || (a2 instanceof com.bykv.vk.openvk.preload.a.j)) {
                lVar = new l<>(z ? (q) a2 : null, a2 instanceof com.bykv.vk.openvk.preload.a.j ? (com.bykv.vk.openvk.preload.a.j) a2 : null, fVar, aVar);
            } else {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a2.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
        }
        return (lVar == null || !bVar.b()) ? lVar : lVar.a();
    }

    @Override // com.bykv.vk.openvk.preload.a.u
    public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        com.bykv.vk.openvk.preload.a.a.b bVar = (com.bykv.vk.openvk.preload.a.a.b) aVar.f8337b.getAnnotation(com.bykv.vk.openvk.preload.a.a.b.class);
        if (bVar == null) {
            return null;
        }
        return (t<T>) a(this.f8174a, fVar, aVar, bVar);
    }
}
