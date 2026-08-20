package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Ja implements Converter<Ya, Na<C1712mf.k, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final Ha f13253a;

    /* renamed from: b  reason: collision with root package name */
    private final Ia f13254b;

    /* renamed from: c  reason: collision with root package name */
    private final Da f13255c;

    /* renamed from: d  reason: collision with root package name */
    private final Ka f13256d;

    /* renamed from: e  reason: collision with root package name */
    private final C1670kn f13257e;

    /* renamed from: f  reason: collision with root package name */
    private final C1670kn f13258f;

    public Ja() {
        this(new Ha(), new Ia(), new Da(), new Ka(), new C1670kn(100), new C1670kn(1000));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.k, Vm> fromModel(Ya ya) {
        Na<C1712mf.d, Vm> na;
        Na<C1712mf.i, Vm> na2;
        Na<C1712mf.j, Vm> na3;
        Na<C1712mf.j, Vm> na4;
        C1712mf.k kVar = new C1712mf.k();
        C1571gn<String, Vm> a2 = this.f13257e.a(ya.f14305a);
        kVar.f15185a = C1422b.b(a2.f14820a);
        C1571gn<String, Vm> a3 = this.f13258f.a(ya.f14306b);
        kVar.f15186b = C1422b.b(a3.f14820a);
        List<String> list = ya.f14307c;
        Na<C1712mf.l[], Vm> na5 = null;
        if (list != null) {
            na = this.f13255c.fromModel(list);
            kVar.f15187c = na.f13532a;
        } else {
            na = null;
        }
        Map<String, String> map = ya.f14308d;
        if (map != null) {
            na2 = this.f13253a.fromModel(map);
            kVar.f15188d = na2.f13532a;
        } else {
            na2 = null;
        }
        Xa xa = ya.f14309e;
        if (xa != null) {
            na3 = this.f13254b.fromModel(xa);
            kVar.f15189e = na3.f13532a;
        } else {
            na3 = null;
        }
        Xa xa2 = ya.f14310f;
        if (xa2 != null) {
            na4 = this.f13254b.fromModel(xa2);
            kVar.f15190f = na4.f13532a;
        } else {
            na4 = null;
        }
        List<String> list2 = ya.f14311g;
        if (list2 != null) {
            na5 = this.f13256d.fromModel(list2);
            kVar.f15191g = na5.f13532a;
        }
        return new Na<>(kVar, Um.a(a2, a3, na, na2, na3, na4, na5));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ja(Ha ha, Ia ia, Da da, Ka ka, C1670kn c1670kn, C1670kn c1670kn2) {
        this.f13253a = ha;
        this.f13254b = ia;
        this.f13255c = da;
        this.f13256d = ka;
        this.f13257e = c1670kn;
        this.f13258f = c1670kn2;
    }
}
