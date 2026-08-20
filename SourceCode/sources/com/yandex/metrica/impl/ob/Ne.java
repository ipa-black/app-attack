package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1930vf;
/* loaded from: classes5.dex */
public abstract class Ne<T> extends Se {

    /* renamed from: f  reason: collision with root package name */
    private final T f13542f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ne(int i, String str, T t, Kn<String> kn, Ke ke) {
        super(i, str, kn, ke);
        this.f13542f = t;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1438bf
    public void a(C1413af c1413af) {
        C1930vf.a a2;
        if (!e() || (a2 = b().a(c1413af, c1413af.a(d(), c()), this)) == null) {
            return;
        }
        a(a2);
    }

    protected abstract void a(C1930vf.a aVar);

    public T f() {
        return this.f13542f;
    }
}
