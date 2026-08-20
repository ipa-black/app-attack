package com.yandex.metrica.impl.ob;

import android.util.SparseArray;
import com.yandex.metrica.impl.ob.C1630j8;
import com.yandex.metrica.impl.ob.X7;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes5.dex */
public class M7 {

    /* renamed from: a  reason: collision with root package name */
    private final N7 f13473a;

    /* renamed from: b  reason: collision with root package name */
    private final P7 f13474b;

    /* renamed from: c  reason: collision with root package name */
    private final X7.b f13475c;

    public M7(N7 n7, P7 p7, X7.b bVar) {
        this.f13473a = n7;
        this.f13474b = p7;
        this.f13475c = bVar;
    }

    public X7 a() {
        HashMap hashMap = new HashMap();
        hashMap.put("binary_data", C1630j8.b.f14980a);
        return this.f13475c.a("auto_inapp", this.f13473a.a(), this.f13473a.b(), new SparseArray<>(), new Z7("auto_inapp", hashMap));
    }

    public X7 b() {
        HashMap hashMap = new HashMap();
        hashMap.put("preferences", C1630j8.c.f14981a);
        return this.f13475c.a("client storage", this.f13473a.c(), this.f13473a.d(), new SparseArray<>(), new Z7("metrica.db", hashMap));
    }

    public X7 c() {
        return this.f13475c.a("main", this.f13473a.e(), this.f13473a.f(), this.f13473a.l(), new Z7("main", this.f13474b.a()));
    }

    public X7 d() {
        HashMap hashMap = new HashMap();
        hashMap.put("preferences", C1630j8.c.f14981a);
        return this.f13475c.a("metrica_multiprocess.db", this.f13473a.g(), this.f13473a.h(), new SparseArray<>(), new Z7("metrica_multiprocess.db", hashMap));
    }

    public X7 e() {
        HashMap hashMap = new HashMap();
        List<String> list = C1630j8.c.f14981a;
        hashMap.put("preferences", list);
        hashMap.put("binary_data", C1630j8.b.f14980a);
        hashMap.put("startup", list);
        List<String> list2 = C1630j8.a.f14975a;
        hashMap.put("l_dat", list2);
        hashMap.put("lbs_dat", list2);
        return this.f13475c.a("metrica.db", this.f13473a.i(), this.f13473a.j(), this.f13473a.k(), new Z7("metrica.db", hashMap));
    }
}
