package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Oh;
import java.util.ArrayList;
/* renamed from: com.yandex.metrica.impl.ob.s9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1852s9 implements ProtobufConverter<Oh, If.a> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.a fromModel(Oh oh) {
        If.a.C0348a c0348a;
        If.a aVar = new If.a();
        aVar.f13079a = new If.a.b[oh.f13648a.size()];
        for (int i = 0; i < oh.f13648a.size(); i++) {
            If.a.b bVar = new If.a.b();
            Pair<String, Oh.a> pair = oh.f13648a.get(i);
            bVar.f13082a = (String) pair.first;
            if (pair.second != null) {
                bVar.f13083b = new If.a.C0348a();
                Oh.a aVar2 = (Oh.a) pair.second;
                if (aVar2 == null) {
                    c0348a = null;
                } else {
                    If.a.C0348a c0348a2 = new If.a.C0348a();
                    c0348a2.f13080a = aVar2.f13649a;
                    c0348a = c0348a2;
                }
                bVar.f13083b = c0348a;
            }
            aVar.f13079a[i] = bVar;
        }
        return aVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Oh toModel(If.a aVar) {
        If.a.b[] bVarArr;
        ArrayList arrayList = new ArrayList();
        for (If.a.b bVar : aVar.f13079a) {
            String str = bVar.f13082a;
            If.a.C0348a c0348a = bVar.f13083b;
            arrayList.add(new Pair(str, c0348a == null ? null : new Oh.a(c0348a.f13080a)));
        }
        return new Oh(arrayList);
    }
}
