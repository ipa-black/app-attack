package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* compiled from: Excluder.java */
/* loaded from: classes2.dex */
public final class d implements u, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final d f8288a = new d();

    /* renamed from: e  reason: collision with root package name */
    public boolean f8292e;

    /* renamed from: b  reason: collision with root package name */
    public double f8289b = -1.0d;

    /* renamed from: c  reason: collision with root package name */
    public int f8290c = 136;

    /* renamed from: d  reason: collision with root package name */
    public boolean f8291d = true;

    /* renamed from: f  reason: collision with root package name */
    public List<com.bykv.vk.openvk.preload.a.b> f8293f = Collections.emptyList();

    /* renamed from: g  reason: collision with root package name */
    public List<com.bykv.vk.openvk.preload.a.b> f8294g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean a(Class<?> cls) {
        if (this.f8289b == -1.0d || a((com.bykv.vk.openvk.preload.a.a.d) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class), (com.bykv.vk.openvk.preload.a.a.e) cls.getAnnotation(com.bykv.vk.openvk.preload.a.a.e.class))) {
            return (!this.f8291d && c(cls)) || b(cls);
        }
        return true;
    }

    public final boolean a(boolean z) {
        for (com.bykv.vk.openvk.preload.a.b bVar : z ? this.f8293f : this.f8294g) {
            if (bVar.b()) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(Class<?> cls) {
        if (Enum.class.isAssignableFrom(cls)) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    public static boolean c(Class<?> cls) {
        return cls.isMemberClass() && !d(cls);
    }

    private static boolean d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public final boolean a(com.bykv.vk.openvk.preload.a.a.d dVar, com.bykv.vk.openvk.preload.a.a.e eVar) {
        return a(dVar) && a(eVar);
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.d dVar) {
        return dVar == null || dVar.a() <= this.f8289b;
    }

    private boolean a(com.bykv.vk.openvk.preload.a.a.e eVar) {
        return eVar == null || eVar.a() > this.f8289b;
    }

    @Override // com.bykv.vk.openvk.preload.a.u
    public final <T> t<T> a(final com.bykv.vk.openvk.preload.a.f fVar, final com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        boolean a2 = a(aVar.f8337b);
        final boolean z = a2 || a(true);
        final boolean z2 = a2 || a(false);
        if (z || z2) {
            return new t<T>() { // from class: com.bykv.vk.openvk.preload.a.b.d.1

                /* renamed from: f  reason: collision with root package name */
                private t<T> f8300f;

                @Override // com.bykv.vk.openvk.preload.a.t
                public final T a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                    if (z2) {
                        aVar2.o();
                        return null;
                    }
                    return b().a(aVar2);
                }

                @Override // com.bykv.vk.openvk.preload.a.t
                public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t) throws IOException {
                    if (z) {
                        cVar.e();
                    } else {
                        b().a(cVar, t);
                    }
                }

                private t<T> b() {
                    t<T> tVar = this.f8300f;
                    if (tVar != null) {
                        return tVar;
                    }
                    t<T> a3 = fVar.a(d.this, aVar);
                    this.f8300f = a3;
                    return a3;
                }
            };
        }
        return null;
    }
}
