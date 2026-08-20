package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
import java.util.List;
/* loaded from: classes5.dex */
public class Ka implements Converter<List<String>, Na<C1712mf.l[], Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final C1645jn f13362a;

    public Ka() {
        this(new C1645jn(20, 100));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.l[], Vm> fromModel(List<String> list) {
        C1571gn<List<String>, Xm> a2 = this.f13362a.a((List) list);
        List<String> list2 = a2.f14820a;
        C1712mf.l[] lVarArr = new C1712mf.l[0];
        if (list2 != null) {
            lVarArr = new C1712mf.l[list2.size()];
            for (int i = 0; i < list2.size(); i++) {
                C1712mf.l lVar = new C1712mf.l();
                lVarArr[i] = lVar;
                lVar.f15193a = C1422b.b(list2.get(i));
            }
        }
        return new Na<>(lVarArr, a2.f14821b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    public Ka(C1645jn c1645jn) {
        this.f13362a = c1645jn;
    }
}
