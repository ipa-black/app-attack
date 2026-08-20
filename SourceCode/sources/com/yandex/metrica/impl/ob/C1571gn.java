package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Vm;
/* renamed from: com.yandex.metrica.impl.ob.gn  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1571gn<V, M extends Vm> implements Vm {

    /* renamed from: a  reason: collision with root package name */
    public final V f14820a;

    /* renamed from: b  reason: collision with root package name */
    public final M f14821b;

    public C1571gn(V v, M m) {
        this.f14820a = v;
        this.f14821b = m;
    }

    @Override // com.yandex.metrica.impl.ob.Vm
    public int a() {
        return this.f14821b.a();
    }

    public String toString() {
        return "TrimmingResult{value=" + this.f14820a + ", metaInfo=" + this.f14821b + '}';
    }
}
