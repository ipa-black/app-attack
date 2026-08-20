package com.yandex.metrica.impl.ob;

import android.os.Handler;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.c1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class RunnableC1449c1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Handler> f14515a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<B> f14516b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1449c1(Handler handler, B b2) {
        this.f14515a = new WeakReference<>(handler);
        this.f14516b = new WeakReference<>(b2);
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler = this.f14515a.get();
        B b2 = this.f14516b.get();
        if (handler == null || b2 == null || !b2.e()) {
            return;
        }
        C1424b1.a(handler, b2, this);
    }
}
