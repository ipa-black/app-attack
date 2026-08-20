package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Bf;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class P9 implements ProtobufConverter<List<Bd>, Bf> {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        List list = (List) obj;
        Bf bf = new Bf();
        bf.f12699a = new Bf.a[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Bf.a[] aVarArr = bf.f12699a;
            Bd bd = (Bd) list.get(i);
            Bf.a aVar = new Bf.a();
            aVar.f12701a = bd.f12697a;
            aVar.f12702b = bd.f12698b;
            aVarArr[i] = aVar;
        }
        return bf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Bf bf = (Bf) obj;
        ArrayList arrayList = new ArrayList(bf.f12699a.length);
        int i = 0;
        while (true) {
            Bf.a[] aVarArr = bf.f12699a;
            if (i >= aVarArr.length) {
                return arrayList;
            }
            Bf.a aVar = aVarArr[i];
            arrayList.add(new Bd(aVar.f12701a, aVar.f12702b));
            i++;
        }
    }
}
