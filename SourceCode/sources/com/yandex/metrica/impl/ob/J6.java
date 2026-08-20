package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes5.dex */
public class J6 implements ProtobufConverter<C1945w6, C1488df> {

    /* renamed from: a  reason: collision with root package name */
    private V6 f13246a;

    public J6(V6 v6) {
        this.f13246a = v6;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1488df fromModel(C1945w6 c1945w6) {
        C1488df c1488df = new C1488df();
        E6 e6 = c1945w6.f15953a;
        if (e6 != null) {
            c1488df.f14594a = this.f13246a.fromModel(e6);
        }
        c1488df.f14595b = new C1662kf[c1945w6.f15954b.size()];
        int i = 0;
        for (E6 e62 : c1945w6.f15954b) {
            c1488df.f14595b[i] = this.f13246a.fromModel(e62);
            i++;
        }
        String str = c1945w6.f15955c;
        if (str != null) {
            c1488df.f14596c = str;
        }
        return c1488df;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1488df c1488df = (C1488df) obj;
        throw new UnsupportedOperationException();
    }
}
