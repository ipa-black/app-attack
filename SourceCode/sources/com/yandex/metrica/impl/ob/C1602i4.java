package com.yandex.metrica.impl.ob;

import com.yandex.metrica.CounterConfiguration;
/* renamed from: com.yandex.metrica.impl.ob.i4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1602i4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f14900a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14901b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f14902c;

    /* renamed from: d  reason: collision with root package name */
    private final String f14903d;

    /* renamed from: e  reason: collision with root package name */
    private final CounterConfiguration.b f14904e;

    public C1602i4(String str, String str2, Integer num, String str3, CounterConfiguration.b bVar) {
        this.f14900a = str;
        this.f14901b = str2;
        this.f14902c = num;
        this.f14903d = str3;
        this.f14904e = bVar;
    }

    public String a() {
        return this.f14900a;
    }

    public String b() {
        return this.f14901b;
    }

    public Integer c() {
        return this.f14902c;
    }

    public String d() {
        return this.f14903d;
    }

    public CounterConfiguration.b e() {
        return this.f14904e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1602i4.class != obj.getClass()) {
            return false;
        }
        C1602i4 c1602i4 = (C1602i4) obj;
        String str = this.f14900a;
        if (str == null ? c1602i4.f14900a == null : str.equals(c1602i4.f14900a)) {
            if (this.f14901b.equals(c1602i4.f14901b)) {
                Integer num = this.f14902c;
                if (num == null ? c1602i4.f14902c == null : num.equals(c1602i4.f14902c)) {
                    String str2 = this.f14903d;
                    if (str2 == null ? c1602i4.f14903d == null : str2.equals(c1602i4.f14903d)) {
                        return this.f14904e == c1602i4.f14904e;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f14900a;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.f14901b.hashCode()) * 31;
        Integer num = this.f14902c;
        int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str2 = this.f14903d;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f14904e.hashCode();
    }

    public String toString() {
        return "ClientDescription{mApiKey='" + this.f14900a + "', mPackageName='" + this.f14901b + "', mProcessID=" + this.f14902c + ", mProcessSessionID='" + this.f14903d + "', mReporterType=" + this.f14904e + '}';
    }

    public static C1602i4 a(C2014z3 c2014z3) {
        return new C1602i4(c2014z3.b().a(), c2014z3.a().f(), c2014z3.a().g(), c2014z3.a().h(), c2014z3.b().k());
    }
}
