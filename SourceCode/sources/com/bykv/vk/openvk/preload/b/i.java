package com.bykv.vk.openvk.preload.b;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealInterceptorChain.java */
/* loaded from: classes2.dex */
public final class i implements b {

    /* renamed from: a  reason: collision with root package name */
    protected e f8421a;

    /* renamed from: b  reason: collision with root package name */
    private int f8422b;

    /* renamed from: c  reason: collision with root package name */
    private List<h> f8423c;

    /* renamed from: d  reason: collision with root package name */
    private d f8424d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(List<h> list, int i, e eVar, d dVar) {
        this.f8423c = list;
        this.f8422b = i;
        this.f8421a = eVar;
        this.f8424d = dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Object obj) throws Exception {
        d dVar = this.f8424d;
        if (dVar != null) {
            dVar.f8405c = obj;
            d dVar2 = this.f8424d;
            if (dVar2.f8406d != null) {
                dVar2.f8406d.b(dVar2.f8407e, dVar2);
            }
        }
        if (this.f8422b >= this.f8423c.size()) {
            return obj;
        }
        h hVar = this.f8423c.get(this.f8422b);
        Class<? extends d> cls = hVar.f8415a;
        d dVar3 = (d) this.f8421a.a(cls);
        if (dVar3 == null) {
            throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + cls);
        }
        com.bykv.vk.openvk.preload.b.b.a aVar = hVar.f8416b;
        i iVar = new i(this.f8423c, this.f8422b + 1, this.f8421a, dVar3);
        dVar3.a(iVar, this.f8424d, obj, aVar, hVar.f8417c);
        if (dVar3.f8406d != null) {
            dVar3.f8406d.a(dVar3.f8407e, dVar3);
        }
        try {
            Object a2 = dVar3.a(iVar, obj);
            if (dVar3.f8406d != null) {
                dVar3.f8406d.c(dVar3.f8407e, dVar3);
            }
            return a2;
        } catch (a e2) {
            Throwable cause = e2.getCause();
            if (dVar3.f8406d != null) {
                dVar3.f8406d.b(dVar3.f8407e, dVar3, cause);
            }
            throw e2;
        } catch (Throwable th) {
            if (dVar3.f8406d != null) {
                dVar3.f8406d.a(dVar3.f8407e, dVar3, th);
            }
            throw new a(th);
        }
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(Class cls) {
        d c2 = c(cls);
        if (c2 == null) {
            throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
        }
        return c2.f8404b;
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object b(Class cls) {
        d c2 = c(cls);
        if (c2 == null) {
            throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
        }
        return c2.f8405c;
    }

    private d c(Class cls) {
        d dVar = this.f8424d;
        while (dVar != null && dVar.getClass() != cls) {
            dVar = dVar.f8403a;
        }
        return dVar;
    }

    /* compiled from: RealInterceptorChain.java */
    /* loaded from: classes2.dex */
    static final class a extends Exception {
        a(Throwable th) {
            super(th);
        }
    }
}
