package com.yandex.metrica.impl.ob;

import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
class Wl implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Xl f14208a;

    Wl(Xl xl) {
        this.f14208a = xl;
    }

    @Override // java.util.concurrent.Callable
    public String call() throws Exception {
        String a2;
        a2 = this.f14208a.a();
        return a2;
    }
}
