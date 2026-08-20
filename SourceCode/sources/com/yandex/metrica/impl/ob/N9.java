package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class N9 implements Converter<Map<String, ? extends Object>, If.l[]> {

    /* renamed from: a  reason: collision with root package name */
    private final C1635jd f13531a;

    public N9() {
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        C1635jd j = g2.j();
        Intrinsics.checkNotNullExpressionValue(j, "GlobalServiceLocator.get…tance().modulesController");
        this.f13531a = j;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.l[] fromModel(Map<String, ? extends Object> map) {
        If.l lVar;
        Map<String, C1586hd> c2 = this.f13531a.c();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            C1586hd c1586hd = c2.get(key);
            if (c1586hd == null || value == null) {
                lVar = null;
            } else {
                lVar = new If.l();
                lVar.f13138a = key;
                lVar.f13139b = c1586hd.a(value);
            }
            if (lVar != null) {
                arrayList.add(lVar);
            }
        }
        Object[] array = arrayList.toArray(new If.l[0]);
        if (array != null) {
            return (If.l[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Map<String, Object> toModel(If.l[] lVarArr) {
        Map<String, C1586hd> c2 = this.f13531a.c();
        ArrayList arrayList = new ArrayList();
        for (If.l lVar : lVarArr) {
            C1586hd c1586hd = c2.get(lVar.f13138a);
            Pair pair = c1586hd != null ? TuplesKt.to(lVar.f13138a, c1586hd.a(lVar.f13139b)) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }
}
