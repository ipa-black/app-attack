package com.bykv.vk.openvk.preload.a;
/* compiled from: JsonObject.java */
/* loaded from: classes2.dex */
public final class n extends k {

    /* renamed from: a  reason: collision with root package name */
    public final com.bykv.vk.openvk.preload.a.b.h<String, k> f8394a = new com.bykv.vk.openvk.preload.a.b.h<>();

    public final void a(String str, k kVar) {
        com.bykv.vk.openvk.preload.a.b.h<String, k> hVar = this.f8394a;
        if (kVar == null) {
            kVar = m.f8393a;
        }
        hVar.put(str, kVar);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof n) && ((n) obj).f8394a.equals(this.f8394a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f8394a.hashCode();
    }
}
