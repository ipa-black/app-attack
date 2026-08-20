package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Vm;
/* loaded from: classes5.dex */
public class Na<R, M extends Vm> implements Vm {

    /* renamed from: a  reason: collision with root package name */
    public final R f13532a;

    /* renamed from: b  reason: collision with root package name */
    public final M f13533b;

    public Na(R r, M m) {
        this.f13532a = r;
        this.f13533b = m;
    }

    @Override // com.yandex.metrica.impl.ob.Vm
    public int a() {
        return this.f13533b.a();
    }

    public String toString() {
        return "Result{result=" + this.f13532a + ", metaInfo=" + this.f13533b + '}';
    }
}
