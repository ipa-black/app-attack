package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ListConverter;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class O9 implements ListConverter<Bd, If.m> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.m[] fromModel(List<Bd> list) {
        If.m[] mVarArr = new If.m[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Bd bd = list.get(i);
            If.m mVar = new If.m();
            mVar.f13141a = bd.f12697a;
            mVar.f13142b = bd.f12698b;
            mVarArr[i] = mVar;
        }
        return mVarArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public List<Bd> toModel(If.m[] mVarArr) {
        ArrayList arrayList = new ArrayList(mVarArr.length);
        for (If.m mVar : mVarArr) {
            arrayList.add(new Bd(mVar.f13141a, mVar.f13142b));
        }
        return arrayList;
    }
}
