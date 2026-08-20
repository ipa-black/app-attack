package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1441bi;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class S9 implements ProtobufConverter<C1441bi, If.o> {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, C1441bi.a> f13853a = Collections.unmodifiableMap(new a());

    /* renamed from: b  reason: collision with root package name */
    private static final Map<C1441bi.a, Integer> f13854b = Collections.unmodifiableMap(new b());

    /* loaded from: classes5.dex */
    class a extends HashMap<Integer, C1441bi.a> {
        a() {
            put(1, C1441bi.a.WIFI);
            put(2, C1441bi.a.CELL);
        }
    }

    /* loaded from: classes5.dex */
    class b extends HashMap<C1441bi.a, Integer> {
        b() {
            put(C1441bi.a.WIFI, 1);
            put(C1441bi.a.CELL, 2);
        }
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.o fromModel(C1441bi c1441bi) {
        If.o oVar = new If.o();
        oVar.f13146a = c1441bi.f14483a;
        oVar.f13147b = c1441bi.f14484b;
        oVar.f13148c = c1441bi.f14485c;
        List<Pair<String, String>> list = c1441bi.f14486d;
        If.o.a[] aVarArr = new If.o.a[list.size()];
        int i = 0;
        for (Pair<String, String> pair : list) {
            If.o.a aVar = new If.o.a();
            aVar.f13153a = (String) pair.first;
            aVar.f13154b = (String) pair.second;
            aVarArr[i] = aVar;
            i++;
        }
        oVar.f13149d = aVarArr;
        Long l = c1441bi.f14487e;
        oVar.f13150e = l == null ? 0L : l.longValue();
        List<C1441bi.a> list2 = c1441bi.f14488f;
        int[] iArr = new int[list2.size()];
        for (int i2 = 0; i2 < list2.size(); i2++) {
            iArr[i2] = f13854b.get(list2.get(i2)).intValue();
        }
        oVar.f13151f = iArr;
        return oVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1441bi toModel(If.o oVar) {
        String str = oVar.f13146a;
        String str2 = oVar.f13147b;
        String str3 = oVar.f13148c;
        If.o.a[] aVarArr = oVar.f13149d;
        ArrayList arrayList = new ArrayList(aVarArr.length);
        for (If.o.a aVar : aVarArr) {
            arrayList.add(new Pair(aVar.f13153a, aVar.f13154b));
        }
        Long valueOf = Long.valueOf(oVar.f13150e);
        int[] iArr = oVar.f13151f;
        ArrayList arrayList2 = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList2.add(f13853a.get(Integer.valueOf(i)));
        }
        return new C1441bi(str, str2, str3, arrayList, valueOf, arrayList2);
    }
}
