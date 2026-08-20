package com.yandex.metrica.impl.ob;

import android.telephony.CellInfo;
import com.yandex.metrica.impl.ob.C1910uj;
/* renamed from: com.yandex.metrica.impl.ob.pj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1791pj<T extends CellInfo> implements Object<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f15407a = "[" + getClass().getName() + "]";

    /* renamed from: b  reason: collision with root package name */
    private volatile Sh f15408b;

    private boolean b(T t) {
        Sh sh = this.f15408b;
        if (sh == null || !sh.t) {
            return false;
        }
        return !sh.u || t.isRegistered();
    }

    public void a(T t, C1910uj.a aVar) {
        b(t, aVar);
        if (b(t)) {
            c(t, aVar);
        }
    }

    protected abstract void b(T t, C1910uj.a aVar);

    protected abstract void c(T t, C1910uj.a aVar);

    public void a(Sh sh) {
        this.f15408b = sh;
    }
}
