package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1918v3;
import com.yandex.metrica.impl.ob.C2002yf;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
/* renamed from: com.yandex.metrica.impl.ob.x9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1972x9 implements ProtobufConverter<C1918v3, C2002yf> {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0065, code lost:
        if (r11 != 3) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.yandex.metrica.impl.ob.C2002yf.a a(com.yandex.metrica.impl.ob.C1918v3.a r11) {
        /*
            r10 = this;
            com.yandex.metrica.impl.ob.yf$a r0 = new com.yandex.metrica.impl.ob.yf$a
            r0.<init>()
            java.util.Map r1 = r11.b()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L54
            com.yandex.metrica.impl.ob.yf$b r4 = new com.yandex.metrica.impl.ob.yf$b
            r4.<init>()
            int r5 = r1.size()
            com.yandex.metrica.impl.ob.yf$b$a[] r6 = new com.yandex.metrica.impl.ob.C2002yf.b.a[r5]
            r7 = r2
        L19:
            if (r7 >= r5) goto L25
            com.yandex.metrica.impl.ob.yf$b$a r8 = new com.yandex.metrica.impl.ob.yf$b$a
            r8.<init>()
            r6[r7] = r8
            int r7 = r7 + 1
            goto L19
        L25:
            r4.f16095a = r6
            java.util.Set r1 = r1.entrySet()
            java.util.Iterator r1 = r1.iterator()
            r5 = r2
        L30:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L55
            java.lang.Object r6 = r1.next()
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6
            java.lang.Object r7 = r6.getKey()
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r6 = r6.getValue()
            java.lang.String r6 = (java.lang.String) r6
            com.yandex.metrica.impl.ob.yf$b$a[] r8 = r4.f16095a
            r9 = r8[r5]
            r9.f16097a = r7
            r7 = r8[r5]
            r7.f16098b = r6
            int r5 = r5 + r3
            goto L30
        L54:
            r4 = 0
        L55:
            r0.f16093a = r4
            com.yandex.metrica.impl.ob.u0 r11 = r11.a()
            int r11 = r11.ordinal()
            if (r11 == r3) goto L6a
            r1 = 2
            if (r11 == r1) goto L68
            r1 = 3
            if (r11 == r1) goto L68
            goto L6b
        L68:
            r2 = r1
            goto L6b
        L6a:
            r2 = r3
        L6b:
            r0.f16094b = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1972x9.a(com.yandex.metrica.impl.ob.v3$a):com.yandex.metrica.impl.ob.yf$a");
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1918v3 c1918v3 = (C1918v3) obj;
        C2002yf c2002yf = new C2002yf();
        c2002yf.f16090a = a(c1918v3.c());
        int size = c1918v3.a().size();
        C2002yf.a[] aVarArr = new C2002yf.a[size];
        for (int i = 0; i < size; i++) {
            aVarArr[i] = a(c1918v3.a().get(i));
        }
        c2002yf.f16091b = aVarArr;
        return c2002yf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C2002yf c2002yf = (C2002yf) obj;
        C2002yf.a aVar = c2002yf.f16090a;
        if (aVar == null) {
            aVar = new C2002yf.a();
        }
        C1918v3.a a2 = a(aVar);
        C2002yf.a[] aVarArr = c2002yf.f16091b;
        Intrinsics.checkNotNullExpressionValue(aVarArr, "nano.candidates");
        ArrayList arrayList = new ArrayList(aVarArr.length);
        for (C2002yf.a it : aVarArr) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(a(it));
        }
        return new C1918v3(a2, arrayList);
    }

    private final C1918v3.a a(C2002yf.a aVar) {
        EnumC1891u0 enumC1891u0;
        C2002yf.b bVar = aVar.f16093a;
        Map<String, String> a2 = bVar != null ? a(bVar) : null;
        int i = aVar.f16094b;
        if (i == 0) {
            enumC1891u0 = EnumC1891u0.UNDEFINED;
        } else if (i == 1) {
            enumC1891u0 = EnumC1891u0.APP;
        } else if (i == 2) {
            enumC1891u0 = EnumC1891u0.SATELLITE;
        } else if (i != 3) {
            enumC1891u0 = EnumC1891u0.UNDEFINED;
        } else {
            enumC1891u0 = EnumC1891u0.RETAIL;
        }
        return new C1918v3.a(a2, enumC1891u0);
    }

    private final Map<String, String> a(C2002yf.b bVar) {
        C2002yf.b.a[] aVarArr = bVar.f16095a;
        Intrinsics.checkNotNullExpressionValue(aVarArr, "proto.pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(aVarArr.length), 16));
        for (C2002yf.b.a aVar : aVarArr) {
            Pair pair = TuplesKt.to(aVar.f16097a, aVar.f16098b);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }
}
