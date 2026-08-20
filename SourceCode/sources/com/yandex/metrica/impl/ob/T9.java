package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Ef;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes5.dex */
public class T9 implements ProtobufConverter<Z1, Ef> {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Ef.a aVar;
        Z1 z1 = (Z1) obj;
        Ef ef = new Ef();
        Map<String, String> map = z1.f14326a;
        if (map == null) {
            aVar = null;
        } else {
            Ef.a aVar2 = new Ef.a();
            aVar2.f12873a = new Ef.a.C0347a[map.size()];
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                Ef.a.C0347a c0347a = new Ef.a.C0347a();
                c0347a.f12875a = entry.getKey();
                c0347a.f12876b = entry.getValue();
                aVar2.f12873a[i] = c0347a;
                i++;
            }
            aVar = aVar2;
        }
        ef.f12871a = aVar;
        ef.f12872b = z1.f14327b;
        return ef;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Ef.a.C0347a[] c0347aArr;
        HashMap hashMap;
        Ef ef = (Ef) obj;
        Ef.a aVar = ef.f12871a;
        if (aVar == null) {
            hashMap = null;
        } else {
            HashMap hashMap2 = new HashMap();
            for (Ef.a.C0347a c0347a : aVar.f12873a) {
                hashMap2.put(c0347a.f12875a, c0347a.f12876b);
            }
            hashMap = hashMap2;
        }
        return new Z1(hashMap, ef.f12872b);
    }
}
