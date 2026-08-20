package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Oa implements Converter<C1434bb, Na<C1712mf.n, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final Ha f13576a;

    /* renamed from: b  reason: collision with root package name */
    private final Da f13577b;

    /* renamed from: c  reason: collision with root package name */
    private final C1670kn f13578c;

    /* renamed from: d  reason: collision with root package name */
    private final C1670kn f13579d;

    public Oa() {
        this(new Ha(), new Da(), new C1670kn(100), new C1670kn(1000));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.n, Vm> fromModel(C1434bb c1434bb) {
        Na<C1712mf.d, Vm> na;
        C1712mf.n nVar = new C1712mf.n();
        C1571gn<String, Vm> a2 = this.f13578c.a(c1434bb.f14460a);
        nVar.f15197a = C1422b.b(a2.f14820a);
        List<String> list = c1434bb.f14461b;
        Na<C1712mf.i, Vm> na2 = null;
        if (list != null) {
            na = this.f13577b.fromModel(list);
            nVar.f15198b = na.f13532a;
        } else {
            na = null;
        }
        C1571gn<String, Vm> a3 = this.f13579d.a(c1434bb.f14462c);
        nVar.f15199c = C1422b.b(a3.f14820a);
        Map<String, String> map = c1434bb.f14463d;
        if (map != null) {
            na2 = this.f13576a.fromModel(map);
            nVar.f15200d = na2.f13532a;
        }
        return new Na<>(nVar, Um.a(a2, na, a3, na2));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Oa(Ha ha, Da da, C1670kn c1670kn, C1670kn c1670kn2) {
        this.f13576a = ha;
        this.f13577b = da;
        this.f13578c = c1670kn;
        this.f13579d = c1670kn2;
    }
}
