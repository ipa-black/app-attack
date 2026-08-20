package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
/* renamed from: com.yandex.metrica.impl.ob.h4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1577h4 extends C1895u4 {
    @Override // com.yandex.metrica.impl.ob.C1895u4, com.yandex.metrica.impl.ob.InterfaceC1751o4
    public S3 a(Context context, I3 i3, D3.a aVar, C1837ri c1837ri) {
        return new C3(context, c1837ri.d(), i3, aVar, new C1502e4(F0.g().u()), new C2029zi());
    }

    @Override // com.yandex.metrica.impl.ob.C1895u4, com.yandex.metrica.impl.ob.InterfaceC1751o4
    public Q3 b(Context context, I3 i3, D3.a aVar, C1837ri c1837ri) {
        return new C2015z4(context, i3, aVar, c1837ri.d(), new C2029zi(), CounterConfiguration.b.APPMETRICA);
    }

    @Override // com.yandex.metrica.impl.ob.C1895u4
    public L3 c(Context context, I3 i3, D3.a aVar, C1837ri c1837ri) {
        return new C3(context, c1837ri.d(), i3, aVar, new C1502e4(F0.g().u()), new C2029zi());
    }

    @Override // com.yandex.metrica.impl.ob.C1895u4
    public C2015z4 d(Context context, I3 i3, D3.a aVar, C1837ri c1837ri) {
        return new C2015z4(context, i3, aVar, c1837ri.d(), new C2029zi(), CounterConfiguration.b.APPMETRICA);
    }
}
