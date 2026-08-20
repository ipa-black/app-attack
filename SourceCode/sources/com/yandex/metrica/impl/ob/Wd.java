package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Cf;
import com.yandex.metrica.impl.ob.Ud;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public class Wd implements ProtobufConverter<Ud, Cf> {

    /* renamed from: a  reason: collision with root package name */
    private final C1537fe f14196a;

    /* renamed from: b  reason: collision with root package name */
    private final Sd f14197b;

    public Wd() {
        this(new C1537fe(), new Sd());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Ud ud = (Ud) obj;
        Cf cf = new Cf();
        cf.f12753a = this.f14196a.fromModel(ud.f14030a);
        cf.f12754b = new Cf.b[ud.f14031b.size()];
        int i = 0;
        for (Ud.a aVar : ud.f14031b) {
            cf.f12754b[i] = this.f14197b.fromModel(aVar);
            i++;
        }
        return cf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1512ee model;
        Cf cf = (Cf) obj;
        ArrayList arrayList = new ArrayList(cf.f12754b.length);
        for (Cf.b bVar : cf.f12754b) {
            arrayList.add(this.f14197b.toModel(bVar));
        }
        Cf.a aVar = cf.f12753a;
        if (aVar == null) {
            model = this.f14196a.toModel(new Cf.a());
        } else {
            model = this.f14196a.toModel(aVar);
        }
        return new Ud(model, arrayList);
    }

    Wd(C1537fe c1537fe, Sd sd) {
        this.f14196a = c1537fe;
        this.f14197b = sd;
    }
}
