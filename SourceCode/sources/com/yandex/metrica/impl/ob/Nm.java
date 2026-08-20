package com.yandex.metrica.impl.ob;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
class Nm implements Executor {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Handler f13560a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Nm(Om om, Handler handler) {
        this.f13560a = handler;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f13560a.post(runnable);
    }
}
