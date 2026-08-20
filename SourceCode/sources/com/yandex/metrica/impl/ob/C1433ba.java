package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ListConverter;
import com.yandex.metrica.impl.ob.C2032zl;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.ba  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1433ba implements ListConverter<C2032zl, If.y> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.y[] fromModel(List<C2032zl> list) {
        If.y[] yVarArr = new If.y[list.size()];
        for (int i = 0; i < list.size(); i++) {
            C2032zl c2032zl = list.get(i);
            If.y yVar = new If.y();
            yVar.f13192a = c2032zl.f16170a.f16177a;
            yVar.f13193b = c2032zl.f16171b;
            yVarArr[i] = yVar;
        }
        return yVarArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public List<C2032zl> toModel(If.y[] yVarArr) {
        ArrayList arrayList = new ArrayList(yVarArr.length);
        for (If.y yVar : yVarArr) {
            arrayList.add(new C2032zl(C2032zl.b.a(yVar.f13192a), yVar.f13193b));
        }
        return arrayList;
    }
}
