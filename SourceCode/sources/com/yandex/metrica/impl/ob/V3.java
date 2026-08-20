package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.Lg;
import com.yandex.metrica.impl.ob.U3;
/* loaded from: classes5.dex */
public class V3 extends M3 {
    private final Pm m;

    public V3(Context context, I3 i3, D3.a aVar, AbstractC1933vi abstractC1933vi, C1790pi c1790pi, Lg.e eVar, ICommonExecutor iCommonExecutor, int i, Pm pm, C1524f1 c1524f1) {
        super(context, i3, aVar, abstractC1933vi, c1790pi, eVar, iCommonExecutor, i, c1524f1);
        this.m = pm;
    }

    public C1729n7 a(C1605i7 c1605i7, InterfaceC1530f7<String> interfaceC1530f7, C1457c9 c1457c9) {
        return new C1729n7(this.f13458c, new B0(), c1605i7, interfaceC1530f7, F0.g().q().e(), c1457c9);
    }

    public InterfaceC1530f7<String> b(U3 u3) {
        return new C1679l7(u3);
    }

    public C1883tg c(U3 u3) {
        return new C1883tg(new C1688lg(u3), new U3.b(), u3);
    }

    public C1605i7 f() {
        return new C1605i7(new C1455c7(EnumC1555g7.BREAKPAD, null), new C1580h7(new P6()));
    }

    public C1501e3 a(U3 u3) {
        return new C1501e3(this.f13458c, this.m.a(), this.m.i(), C1526f3.a(), new C1451c3(this.f13458c), new C1426b3(u3, F0.g().q().e()), F0.g().b(), new C1476d3());
    }
}
