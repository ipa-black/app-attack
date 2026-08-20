package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.P3;
/* loaded from: classes5.dex */
public class F4<T, C extends P3> {

    /* renamed from: a  reason: collision with root package name */
    private final K4<T> f12931a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public interface a<T> {
        boolean a(T t, C1448c0 c1448c0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public F4(K4<T> k4, C c2) {
        this.f12931a = k4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(C1448c0 c1448c0, a<T> aVar) {
        for (T t : this.f12931a.a(c1448c0.o()).a()) {
            if (aVar.a(t, c1448c0)) {
                return true;
            }
        }
        return false;
    }
}
