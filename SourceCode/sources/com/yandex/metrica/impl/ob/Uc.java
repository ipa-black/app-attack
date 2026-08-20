package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public abstract class Uc<T> implements Lb<T> {

    /* renamed from: a  reason: collision with root package name */
    private final C1965x2 f14028a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1560gc f14029b;

    public Uc(InterfaceC1560gc interfaceC1560gc, C1965x2 c1965x2) {
        this.f14029b = interfaceC1560gc;
        this.f14028a = c1965x2;
    }

    protected abstract String a();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(long j) {
        return this.f14028a.b(this.f14029b.getLastAttemptTimeSeconds(), j, "last " + a() + " scan attempt");
    }
}
