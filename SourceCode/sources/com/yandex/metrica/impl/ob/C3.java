package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.Lg;
/* loaded from: classes5.dex */
public class C3 extends L3 {
    public C3(Context context, C1790pi c1790pi, I3 i3, D3.a aVar, Lg.e eVar, AbstractC1933vi abstractC1933vi) {
        this(context, i3, new B3(), new C1965x2(), new M3(context, i3, aVar, abstractC1933vi, c1790pi, eVar, F0.g().q().d(), A2.b(context, i3.b()), F0.g().h()));
    }

    @Override // com.yandex.metrica.impl.ob.L3
    public CounterConfiguration.b s() {
        return CounterConfiguration.b.APPMETRICA;
    }

    C3(Context context, I3 i3, B3 b3, C1965x2 c1965x2, M3 m3) {
        super(context, i3, b3, c1965x2, m3);
    }
}
