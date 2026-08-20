package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.P3;
import com.yandex.metrica.impl.ob.S3;
/* loaded from: classes5.dex */
public class Y3<COMPONENT extends S3 & P3> implements N3<X3> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1751o4<COMPONENT> f14297a;

    public Y3(InterfaceC1751o4<COMPONENT> interfaceC1751o4) {
        this.f14297a = interfaceC1751o4;
    }

    @Override // com.yandex.metrica.impl.ob.N3
    public X3 a(Context context, I3 i3, D3 d3) {
        return new X3(context, i3, d3, new C1452c4(d3.f12781b), this.f14297a, new J3(), C1516ei.a());
    }
}
