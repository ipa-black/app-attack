package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1954wf;
import java.util.ArrayList;
/* renamed from: com.yandex.metrica.impl.ob.r9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1828r9 implements ProtobufConverter<C1880td, C1954wf> {

    /* renamed from: a  reason: collision with root package name */
    private final C1900u9 f15624a;

    public C1828r9() {
        this(new C1900u9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1880td c1880td = (C1880td) obj;
        C1954wf c1954wf = new C1954wf();
        c1954wf.f15976a = new C1954wf.b[c1880td.f15765a.size()];
        int i = 0;
        int i2 = 0;
        for (Bd bd : c1880td.f15765a) {
            C1954wf.b[] bVarArr = c1954wf.f15976a;
            C1954wf.b bVar = new C1954wf.b();
            bVar.f15982a = bd.f12697a;
            bVar.f15983b = bd.f12698b;
            bVarArr[i2] = bVar;
            i2++;
        }
        C2010z c2010z = c1880td.f15766b;
        if (c2010z != null) {
            c1954wf.f15977b = this.f15624a.fromModel(c2010z);
        }
        c1954wf.f15978c = new String[c1880td.f15767c.size()];
        for (String str : c1880td.f15767c) {
            c1954wf.f15978c[i] = str;
            i++;
        }
        return c1954wf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1954wf c1954wf = (C1954wf) obj;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (true) {
            C1954wf.b[] bVarArr = c1954wf.f15976a;
            if (i2 >= bVarArr.length) {
                break;
            }
            C1954wf.b bVar = bVarArr[i2];
            arrayList.add(new Bd(bVar.f15982a, bVar.f15983b));
            i2++;
        }
        C1954wf.a aVar = c1954wf.f15977b;
        C2010z model = aVar != null ? this.f15624a.toModel(aVar) : null;
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            String[] strArr = c1954wf.f15978c;
            if (i < strArr.length) {
                arrayList2.add(strArr[i]);
                i++;
            } else {
                return new C1880td(arrayList, model, arrayList2);
            }
        }
    }

    C1828r9(C1900u9 c1900u9) {
        this.f15624a = c1900u9;
    }
}
