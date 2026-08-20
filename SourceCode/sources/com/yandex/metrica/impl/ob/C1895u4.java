package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
/* renamed from: com.yandex.metrica.impl.ob.u4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1895u4 implements InterfaceC1676l4, InterfaceC1751o4<L3> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC1751o4
    /* renamed from: c */
    public L3 a(Context context, I3 i3, D3.a aVar, C1837ri c1837ri) {
        return new C1477d4(context, i3, aVar, F0.g().u(), c1837ri.d(), new C1957wi(c1837ri));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1751o4
    /* renamed from: d */
    public C2015z4 b(Context context, I3 i3, D3.a aVar, C1837ri c1837ri) {
        return new C2015z4(context, i3, aVar, c1837ri.d(), new C1957wi(c1837ri), CounterConfiguration.b.MANUAL);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1676l4
    public InterfaceC1651k4 a(Context context, C1776p4 c1776p4, C1602i4 c1602i4, D3 d3) {
        return new C1871t4(context, c1776p4.b(new I3(c1602i4.b(), c1602i4.a()), d3, new Y3(this)));
    }
}
