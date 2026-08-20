package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C1787pf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.ed  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1511ed {

    /* renamed from: a  reason: collision with root package name */
    private final U7 f14672a;

    /* renamed from: b  reason: collision with root package name */
    private final T7 f14673b;

    /* renamed from: c  reason: collision with root package name */
    private final C1436bd f14674c;

    /* renamed from: d  reason: collision with root package name */
    private final Zc f14675d;

    public C1511ed(Context context) {
        this(C1632ja.a(context).f(), C1632ja.a(context).e(), new Vb(context), new C1411ad(), new Yc());
    }

    public C1486dd a(int i) {
        Map<Long, String> a2 = this.f14672a.a(i);
        Map<Long, String> a3 = this.f14673b.a(i);
        C1787pf c1787pf = new C1787pf();
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = (LinkedHashMap) a2;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            C1787pf.b a4 = this.f14674c.a(((Long) entry.getKey()).longValue(), (String) entry.getValue());
            if (a4 != null) {
                arrayList.add(a4);
            }
        }
        c1787pf.f15375a = (C1787pf.b[]) arrayList.toArray(new C1787pf.b[arrayList.size()]);
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) a3;
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            C1787pf.a a5 = this.f14675d.a(((Long) entry2.getKey()).longValue(), (String) entry2.getValue());
            if (a5 != null) {
                arrayList2.add(a5);
            }
        }
        c1787pf.f15376b = (C1787pf.a[]) arrayList2.toArray(new C1787pf.a[arrayList2.size()]);
        return new C1486dd(a2.isEmpty() ? -1L : ((Long) Collections.max(linkedHashMap.keySet())).longValue(), a3.isEmpty() ? -1L : ((Long) Collections.max(linkedHashMap2.keySet())).longValue(), c1787pf);
    }

    C1511ed(U7 u7, T7 t7, Vb vb, C1411ad c1411ad, Yc yc) {
        this(u7, t7, new C1436bd(vb, c1411ad), new Zc(vb, yc));
    }

    C1511ed(U7 u7, T7 t7, C1436bd c1436bd, Zc zc) {
        this.f14672a = u7;
        this.f14673b = t7;
        this.f14674c = c1436bd;
        this.f14675d = zc;
    }

    public void a(C1486dd c1486dd) {
        long j = c1486dd.f14591a;
        if (j >= 0) {
            this.f14672a.c(j);
        }
        long j2 = c1486dd.f14592b;
        if (j2 >= 0) {
            this.f14673b.c(j2);
        }
    }
}
