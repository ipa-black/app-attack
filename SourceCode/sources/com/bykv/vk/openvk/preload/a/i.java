package com.bykv.vk.openvk.preload.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: JsonArray.java */
/* loaded from: classes2.dex */
public final class i extends k implements Iterable<k> {

    /* renamed from: a  reason: collision with root package name */
    private final List<k> f8392a = new ArrayList();

    public final void a(k kVar) {
        if (kVar == null) {
            kVar = m.f8393a;
        }
        this.f8392a.add(kVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<k> iterator() {
        return this.f8392a.iterator();
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final Number a() {
        if (this.f8392a.size() == 1) {
            return this.f8392a.get(0).a();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final String b() {
        if (this.f8392a.size() == 1) {
            return this.f8392a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final double c() {
        if (this.f8392a.size() == 1) {
            return this.f8392a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final long d() {
        if (this.f8392a.size() == 1) {
            return this.f8392a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final int e() {
        if (this.f8392a.size() == 1) {
            return this.f8392a.get(0).e();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.k
    public final boolean f() {
        if (this.f8392a.size() == 1) {
            return this.f8392a.get(0).f();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof i) && ((i) obj).f8392a.equals(this.f8392a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f8392a.hashCode();
    }
}
