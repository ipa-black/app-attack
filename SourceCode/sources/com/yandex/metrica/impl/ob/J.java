package com.yandex.metrica.impl.ob;

import java.util.HashMap;
/* loaded from: classes5.dex */
public class J extends C1448c0 {
    private HashMap<a, Integer> r;
    private InterfaceC1546fn<String> s;
    private InterfaceC1546fn<String> t;
    private InterfaceC1546fn<String> u;
    private InterfaceC1546fn<byte[]> v;
    private InterfaceC1546fn<String> w;
    private InterfaceC1546fn<String> x;

    /* loaded from: classes5.dex */
    public enum a {
        NAME,
        VALUE,
        USER_INFO
    }

    public J(C1470cm c1470cm) {
        this.r = new HashMap<>();
        a(c1470cm);
    }

    private String g(String str) {
        String a2 = this.s.a(str);
        a(str, a2, a.NAME);
        return a2;
    }

    private String h(String str) {
        String a2 = this.t.a(str);
        a(str, a2, a.VALUE);
        return a2;
    }

    public static C1448c0 s() {
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_SEND_USER_PROFILE.b();
        return c1448c0;
    }

    private void u() {
        this.f14514h = 0;
        for (Integer num : this.r.values()) {
            this.f14514h += num.intValue();
        }
    }

    public J a(HashMap<a, Integer> hashMap) {
        this.r = hashMap;
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.C1448c0
    public C1448c0 b(String str) {
        String a2 = this.s.a(str);
        a(str, a2, a.NAME);
        this.f14507a = a2;
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.C1448c0
    public C1448c0 d(String str) {
        return super.d(this.w.a(str));
    }

    @Override // com.yandex.metrica.impl.ob.C1448c0
    public C1448c0 e(String str) {
        String a2 = this.x.a(str);
        a(str, a2, a.USER_INFO);
        return super.e(a2);
    }

    @Override // com.yandex.metrica.impl.ob.C1448c0
    public C1448c0 f(String str) {
        String a2 = this.t.a(str);
        a(str, a2, a.VALUE);
        this.f14508b = a2;
        return this;
    }

    public J i(String str) {
        String a2 = this.u.a(str);
        a(str, a2, a.VALUE);
        this.f14508b = a2;
        return this;
    }

    public HashMap<a, Integer> t() {
        return this.r;
    }

    private void a(C1470cm c1470cm) {
        this.s = new C1496dn(1000, "event name", c1470cm);
        this.t = new C1471cn(245760, "event value", c1470cm);
        this.u = new C1471cn(1024000, "event extended value", c1470cm);
        this.v = new Tm(245760, "event value bytes", c1470cm);
        this.w = new C1496dn(200, "user profile id", c1470cm);
        this.x = new C1496dn(10000, "UserInfo", c1470cm);
    }

    public J(String str, String str2, int i, C1470cm c1470cm) {
        this(str, str2, i, 0, c1470cm);
    }

    public J(String str, String str2, int i, int i2, C1470cm c1470cm) {
        this.r = new HashMap<>();
        a(c1470cm);
        this.f14508b = h(str);
        this.f14507a = g(str2);
        this.f14511e = i;
        this.f14512f = i2;
    }

    private void a(String str, String str2, a aVar) {
        if (C1422b.b(str, str2)) {
            this.r.put(aVar, Integer.valueOf(C1422b.b(str).length - C1422b.b(str2).length));
        } else {
            this.r.remove(aVar);
        }
        u();
    }

    @Override // com.yandex.metrica.impl.ob.C1448c0
    public final C1448c0 a(byte[] bArr) {
        byte[] a2 = this.v.a(bArr);
        a aVar = a.VALUE;
        if (bArr.length != a2.length) {
            this.r.put(aVar, Integer.valueOf(bArr.length - a2.length));
        } else {
            this.r.remove(aVar);
        }
        u();
        return super.a(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C1448c0 a(String str, C1470cm c1470cm) {
        J j = new J(c1470cm);
        j.f14511e = EnumC1399a1.EVENT_TYPE_SET_USER_PROFILE_ID.b();
        return super.d(j.w.a(str));
    }

    public J(byte[] bArr, String str, int i, C1470cm c1470cm) {
        this.r = new HashMap<>();
        a(c1470cm);
        a(bArr);
        this.f14507a = g(str);
        this.f14511e = i;
    }
}
