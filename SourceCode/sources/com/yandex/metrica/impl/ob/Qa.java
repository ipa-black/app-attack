package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1712mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class Qa implements Fa<C1484db> {

    /* renamed from: a  reason: collision with root package name */
    private final Ja f13754a;

    /* renamed from: b  reason: collision with root package name */
    private final Ma f13755b;

    public Qa() {
        this(new Ja(), new Ma());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Na<C1712mf.m, Vm> na;
        C1484db c1484db = (C1484db) obj;
        C1712mf c1712mf = new C1712mf();
        c1712mf.f15152a = 3;
        c1712mf.f15155d = new C1712mf.p();
        Na<C1712mf.k, Vm> fromModel = this.f13754a.fromModel(c1484db.f14587b);
        c1712mf.f15155d.f15203a = fromModel.f13532a;
        C1409ab c1409ab = c1484db.f14588c;
        if (c1409ab != null) {
            na = this.f13755b.fromModel(c1409ab);
            c1712mf.f15155d.f15204b = na.f13532a;
        } else {
            na = null;
        }
        return Collections.singletonList(new Na(c1712mf, Um.a(fromModel, na)));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Qa(Ja ja, Ma ma) {
        this.f13754a = ja;
        this.f13755b = ma;
    }
}
