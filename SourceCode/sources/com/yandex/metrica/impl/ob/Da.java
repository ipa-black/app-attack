package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
import java.util.List;
/* loaded from: classes5.dex */
public class Da implements Converter<List<String>, Na<C1712mf.d, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final C1645jn f12800a;

    public Da() {
        this(new C1645jn(20, 100));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.d, Vm> fromModel(List<String> list) {
        C1571gn<List<String>, Xm> a2 = this.f12800a.a((List) list);
        C1712mf.d dVar = new C1712mf.d();
        List<String> list2 = a2.f14820a;
        byte[][] bArr = new byte[0];
        if (list2 != null) {
            bArr = new byte[list2.size()];
            for (int i = 0; i < list2.size(); i++) {
                bArr[i] = C1422b.b(list2.get(i));
            }
        }
        dVar.f15166a = bArr;
        return new Na<>(dVar, a2.f14821b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    public Da(C1645jn c1645jn) {
        this.f12800a = c1645jn;
    }
}
