package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Df;
import com.yandex.metrica.impl.ob.H1;
import com.yandex.metrica.impl.ob.Jf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5.dex */
public class R9 implements ProtobufConverter<Jf.e, Df> {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, H1.d> f13790a = Collections.unmodifiableMap(new a());

    /* renamed from: b  reason: collision with root package name */
    private static final Map<H1.d, Integer> f13791b = Collections.unmodifiableMap(new b());

    /* loaded from: classes5.dex */
    class a extends HashMap<Integer, H1.d> {
        a() {
            put(1, H1.d.WIFI);
            put(2, H1.d.CELL);
        }
    }

    /* loaded from: classes5.dex */
    class b extends HashMap<H1.d, Integer> {
        b() {
            put(H1.d.WIFI, 1);
            put(H1.d.CELL, 2);
        }
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Jf.e eVar = (Jf.e) obj;
        Df df = new Df();
        Set<String> a2 = eVar.a();
        df.f12809b = (String[]) a2.toArray(new String[((HashSet) a2).size()]);
        List<Jf.e.a> b2 = eVar.b();
        Df.a[] aVarArr = new Df.a[b2.size()];
        for (int i = 0; i < b2.size(); i++) {
            Jf.e.a aVar = b2.get(i);
            Df.a aVar2 = new Df.a();
            aVar2.f12811a = aVar.f13278a;
            aVar2.f12812b = aVar.f13279b;
            Df.a.C0346a[] c0346aArr = new Df.a.C0346a[aVar.f13281d.c()];
            int i2 = 0;
            for (Map.Entry<String, ? extends Collection<String>> entry : aVar.f13281d.a()) {
                for (String str : entry.getValue()) {
                    Df.a.C0346a c0346a = new Df.a.C0346a();
                    c0346a.f12818a = entry.getKey();
                    c0346a.f12819b = str;
                    c0346aArr[i2] = c0346a;
                    i2++;
                }
            }
            aVar2.f12814d = c0346aArr;
            aVar2.f12813c = aVar.f13280c;
            aVar2.f12815e = aVar.f13282e;
            List<H1.d> list = aVar.f13283f;
            int[] iArr = new int[list.size()];
            for (int i3 = 0; i3 < list.size(); i3++) {
                iArr[i3] = f13791b.get(list.get(i3)).intValue();
            }
            aVar2.f12816f = iArr;
            aVarArr[i] = aVar2;
        }
        df.f12808a = aVarArr;
        return df;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Df df = (Df) obj;
        ArrayList arrayList = new ArrayList();
        Df.a[] aVarArr = df.f12808a;
        int length = aVarArr.length;
        boolean z = false;
        int i = 0;
        while (i < length) {
            Df.a aVar = aVarArr[i];
            String str = aVar.f12811a;
            String str2 = aVar.f12812b;
            String str3 = aVar.f12813c;
            Df.a.C0346a[] c0346aArr = aVar.f12814d;
            C1841rm c1841rm = new C1841rm(z);
            int length2 = c0346aArr.length;
            for (int i2 = z; i2 < length2; i2++) {
                Df.a.C0346a c0346a = c0346aArr[i2];
                c1841rm.a(c0346a.f12818a, c0346a.f12819b);
                aVarArr = aVarArr;
            }
            Df.a[] aVarArr2 = aVarArr;
            long j = aVar.f12815e;
            int[] iArr = aVar.f12816f;
            ArrayList arrayList2 = new ArrayList(iArr.length);
            int length3 = iArr.length;
            int i3 = 0;
            while (i3 < length3) {
                arrayList2.add(f13790a.get(Integer.valueOf(iArr[i3])));
                i3++;
                iArr = iArr;
                length = length;
            }
            arrayList.add(new Jf.e.a(str, str2, str3, c1841rm, j, arrayList2));
            i++;
            aVarArr = aVarArr2;
            z = false;
        }
        return new Jf.e(arrayList, Arrays.asList(df.f12809b));
    }
}
