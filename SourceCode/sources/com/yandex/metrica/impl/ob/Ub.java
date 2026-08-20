package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class Ub<T> implements Qb<T> {

    /* renamed from: a  reason: collision with root package name */
    private ICommonExecutor f14026a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Runnable f14027b;

    public Ub(ICommonExecutor iCommonExecutor) {
        this.f14026a = iCommonExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Runnable runnable, long j) {
        this.f14026a.executeDelayed(runnable, j, TimeUnit.SECONDS);
        this.f14027b = runnable;
    }

    @Override // com.yandex.metrica.impl.ob.Qb
    public void a() {
        Runnable runnable = this.f14027b;
        if (runnable != null) {
            this.f14026a.remove(runnable);
            this.f14027b = null;
        }
    }
}
