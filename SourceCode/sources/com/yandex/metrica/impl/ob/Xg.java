package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Xg implements A6 {

    /* renamed from: a  reason: collision with root package name */
    private final com.yandex.metrica.rtm.wrapper.e f14274a;

    public Xg(com.yandex.metrica.rtm.wrapper.e eVar) {
        this.f14274a = eVar;
    }

    @Override // com.yandex.metrica.impl.ob.A6
    public void a(Throwable th, C1945w6 c1945w6) {
        this.f14274a.reportException(th == null ? "" : th.getClass().getName(), th);
    }
}
