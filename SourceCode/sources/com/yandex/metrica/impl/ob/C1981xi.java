package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
import com.yandex.metrica.networktasks.api.NetworkTask;
/* renamed from: com.yandex.metrica.impl.ob.xi  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1981xi implements InterfaceC2005yi {

    /* renamed from: a  reason: collision with root package name */
    private final C1837ri f16057a;

    public C1981xi(C1837ri c1837ri) {
        this.f16057a = c1837ri;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC2005yi
    public void a() {
        NetworkTask c2 = this.f16057a.c();
        if (c2 != null) {
            NetworkServiceLocator.getInstance().getNetworkCore().startTask(c2);
        }
    }
}
