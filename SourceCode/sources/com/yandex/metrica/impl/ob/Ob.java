package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.TimeProvider;
/* loaded from: classes5.dex */
public class Ob implements Gc {

    /* renamed from: a  reason: collision with root package name */
    private final TimeProvider f13580a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1560gc f13581b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ob(InterfaceC1560gc interfaceC1560gc, TimeProvider timeProvider) {
        this.f13581b = interfaceC1560gc;
        this.f13580a = timeProvider;
    }

    @Override // com.yandex.metrica.impl.ob.Gc
    public void a() {
        this.f13581b.a(this.f13580a.currentTimeSeconds());
    }
}
