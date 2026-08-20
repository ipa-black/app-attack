package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C2015z4;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
/* renamed from: com.yandex.metrica.impl.ob.p0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1772p0<C extends C2015z4> extends C1941w2<C> {

    /* renamed from: e  reason: collision with root package name */
    private final E4 f15354e;

    /* renamed from: f  reason: collision with root package name */
    private final C1431b8 f15355f;

    public C1772p0(C c2, InterfaceC2005yi interfaceC2005yi, E4 e4, C1431b8 c1431b8) {
        super(c2, interfaceC2005yi);
        this.f15354e = e4;
        this.f15355f = c1431b8;
    }

    public void a(C1448c0 c1448c0) {
        if (this.f15951c) {
            return;
        }
        synchronized (this.f15950b) {
            if (!this.f15951c) {
                f();
            }
        }
        NetworkServiceLocator.getInstance().getNetworkCore().startTask(C1832rd.a(((C2015z4) e()).b(), (ConfigProvider) e(), c1448c0, this.f15354e, this.f15355f));
    }
}
