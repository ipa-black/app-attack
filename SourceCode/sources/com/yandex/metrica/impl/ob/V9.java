package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Ff;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class V9 implements ProtobufConverter<C1515eh, Ff> {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1515eh c1515eh = (C1515eh) obj;
        Ff ff = new Ff();
        ff.f12939a = new Ff.a[c1515eh.f14686a.size()];
        for (int i = 0; i < c1515eh.f14686a.size(); i++) {
            Ff.a[] aVarArr = ff.f12939a;
            C1590hh c1590hh = c1515eh.f14686a.get(i);
            Ff.a aVar = new Ff.a();
            aVar.f12945a = c1590hh.f14863a;
            List<String> list = c1590hh.f14864b;
            aVar.f12946b = new String[list.size()];
            int i2 = 0;
            for (String str : list) {
                aVar.f12946b[i2] = str;
                i2++;
            }
            aVarArr[i] = aVar;
        }
        ff.f12940b = c1515eh.f14687b;
        ff.f12941c = c1515eh.f14688c;
        ff.f12942d = c1515eh.f14689d;
        ff.f12943e = c1515eh.f14690e;
        return ff;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Ff ff = (Ff) obj;
        ArrayList arrayList = new ArrayList(ff.f12939a.length);
        int i = 0;
        while (true) {
            Ff.a[] aVarArr = ff.f12939a;
            if (i < aVarArr.length) {
                Ff.a aVar = aVarArr[i];
                ArrayList arrayList2 = new ArrayList();
                String[] strArr = aVar.f12946b;
                if (strArr != null && strArr.length > 0) {
                    arrayList2 = new ArrayList(aVar.f12946b.length);
                    int i2 = 0;
                    while (true) {
                        String[] strArr2 = aVar.f12946b;
                        if (i2 >= strArr2.length) {
                            break;
                        }
                        arrayList2.add(strArr2[i2]);
                        i2++;
                    }
                }
                String str = aVar.f12945a;
                if (str == null) {
                    str = "";
                }
                arrayList.add(new C1590hh(str, arrayList2));
                i++;
            } else {
                return new C1515eh(arrayList, ff.f12940b, ff.f12941c, ff.f12942d, ff.f12943e);
            }
        }
    }
}
