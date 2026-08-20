package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1978xf;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public class Y2 implements ProtobufConverter<X2, C1978xf> {

    /* renamed from: a  reason: collision with root package name */
    private final C1401a3 f14296a;

    public Y2() {
        this(new C1401a3());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        X2 x2 = (X2) obj;
        C1978xf c1978xf = new C1978xf();
        c1978xf.f16039a = new C1978xf.a[x2.f14218a.size()];
        int i = 0;
        for (com.yandex.metrica.billing_interface.a aVar : x2.f14218a) {
            c1978xf.f16039a[i] = this.f14296a.fromModel(aVar);
            i++;
        }
        c1978xf.f16040b = x2.f14219b;
        return c1978xf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1978xf c1978xf = (C1978xf) obj;
        ArrayList arrayList = new ArrayList(c1978xf.f16039a.length);
        for (C1978xf.a aVar : c1978xf.f16039a) {
            arrayList.add(this.f14296a.toModel(aVar));
        }
        return new X2(arrayList, c1978xf.f16040b);
    }

    Y2(C1401a3 c1401a3) {
        this.f14296a = c1401a3;
    }
}
