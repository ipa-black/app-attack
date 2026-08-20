package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes5.dex */
class U2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ResultReceiverC1523f0 a(Handler handler, T2 t2) {
        return new ResultReceiverC1523f0(handler, t2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public A3 a(Context context, ResultReceiverC1523f0 resultReceiverC1523f0) {
        return new A3(context, resultReceiverC1523f0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T1 a(A3 a3, Context context, ICommonExecutor iCommonExecutor) {
        return new T1(a3, context, new C1748o1(context, iCommonExecutor), new P6(), new C1921v6());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1591hi a(Context context, T1 t1, C1432b9 c1432b9, Handler handler) {
        return new C1591hi(context, t1, c1432b9, handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1439bg a(T1 t1, C1432b9 c1432b9, Handler handler) {
        return new C1439bg(t1, c1432b9, handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public R1 a(Context context, A3 a3, T1 t1, Handler handler, C1591hi c1591hi) {
        return new R1(context, a3, t1, handler, c1591hi);
    }
}
