package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1918v3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
/* renamed from: com.yandex.metrica.impl.ob.r3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1822r3 implements InterfaceC2013z2<C1918v3.a, C1918v3.a> {
    @Override // kotlin.jvm.functions.Function2
    /* renamed from: a */
    public List<C1918v3.a> invoke(List<C1918v3.a> list, C1918v3.a aVar) {
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (C1918v3.a aVar2 : list) {
                if (aVar2.a() == aVar.a()) {
                    if (aVar.a() == EnumC1891u0.APP) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : list) {
                            if (((C1918v3.a) obj).a() != EnumC1891u0.APP) {
                                arrayList.add(obj);
                            }
                        }
                        return CollectionsKt.plus((Collection<? extends C1918v3.a>) arrayList, aVar);
                    }
                    return null;
                }
            }
        }
        return CollectionsKt.plus((Collection<? extends C1918v3.a>) list, aVar);
    }
}
