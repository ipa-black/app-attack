package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class I3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f13058a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13059b;

    public I3(String str, String str2) {
        this.f13058a = str;
        this.f13059b = str2;
    }

    public String a() {
        return this.f13059b;
    }

    public String b() {
        return this.f13058a;
    }

    public String c() {
        return this.f13058a + "_" + A2.a(this.f13059b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        I3 i3 = (I3) obj;
        String str = this.f13058a;
        if (str == null ? i3.f13058a == null : str.equals(i3.f13058a)) {
            String str2 = this.f13059b;
            String str3 = i3.f13059b;
            return str2 != null ? str2.equals(str3) : str3 == null;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f13058a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f13059b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return this.f13058a + "_" + this.f13059b;
    }
}
