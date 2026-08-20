package com.yandex.metrica.impl.ob;

import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.ln  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1695ln extends AbstractC1596hn<Map<String, String>, Xm> {

    /* renamed from: b  reason: collision with root package name */
    private final C1670kn f15095b;

    /* renamed from: c  reason: collision with root package name */
    private final C1670kn f15096c;

    /* renamed from: d  reason: collision with root package name */
    private Comparator<Map.Entry<String, String>> f15097d;

    /* renamed from: com.yandex.metrica.impl.ob.ln$a */
    /* loaded from: classes5.dex */
    class a implements Comparator<Map.Entry<String, String>> {
        a(C1695ln c1695ln) {
        }

        @Override // java.util.Comparator
        public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
            int length = C1422b.b(entry.getValue()).length;
            int length2 = C1422b.b(entry2.getValue()).length;
            if (length < length2) {
                return -1;
            }
            return length == length2 ? 0 : 1;
        }
    }

    public C1695ln(int i, int i2, int i3) {
        this(i, new C1670kn(i2), new C1670kn(i3));
    }

    public C1695ln(int i, C1670kn c1670kn, C1670kn c1670kn2) {
        super(i);
        this.f15097d = new a(this);
        this.f15095b = c1670kn;
        this.f15096c = c1670kn2;
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1596hn
    public C1571gn<Map<String, String>, Xm> a(Map<String, String> map) {
        HashMap hashMap;
        int i;
        int i2 = 0;
        if (map != null) {
            hashMap = new HashMap();
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            Map.Entry[] entryArr = (Map.Entry[]) entrySet.toArray(new Map.Entry[entrySet.size()]);
            Arrays.sort(entryArr, this.f15097d);
            int length = entryArr.length;
            i = 0;
            int i3 = 0;
            boolean z = false;
            int i4 = 0;
            while (i2 < length) {
                Map.Entry entry = entryArr[i2];
                C1571gn<String, Vm> a2 = this.f15095b.a((String) entry.getKey());
                C1571gn<String, Vm> a3 = this.f15096c.a((String) entry.getValue());
                int length2 = C1422b.b((String) entry.getKey()).length + C1422b.b((String) entry.getValue()).length;
                int length3 = C1422b.b(a2.f14820a).length + C1422b.b(a3.f14820a).length;
                if (z || length3 + i4 > a()) {
                    i3++;
                    i += length2;
                    z = true;
                } else {
                    i = i + a2.f14821b.a() + a3.f14821b.a();
                    i4 += C1422b.b(a2.f14820a).length + C1422b.b(a3.f14820a).length;
                    hashMap.put(a2.f14820a, a3.f14820a);
                }
                i2++;
            }
            i2 = i3;
        } else {
            hashMap = null;
            i = 0;
        }
        return new C1571gn<>(hashMap, new Xm(i2, i));
    }
}
