package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes5.dex */
public class Nb extends Ub<Xb> {
    public Nb(ICommonExecutor iCommonExecutor) {
        super(iCommonExecutor);
    }

    @Override // com.yandex.metrica.impl.ob.Qb
    public void a(Runnable runnable, Object obj) {
        Wb wb = ((Xb) obj).f14266b;
        if (wb != null) {
            a(runnable, wb.f14193a);
        }
    }
}
