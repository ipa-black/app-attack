package com.yandex.metrica;

import java.util.Map;
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private String f12545a;

    /* renamed from: b  reason: collision with root package name */
    private String f12546b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f12547c;

    public void a(String str) {
        this.f12546b = str;
    }

    public void b(String str) {
        this.f12545a = str;
    }

    public String c() {
        return this.f12545a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        String str = this.f12545a;
        if (str == null ? gVar.f12545a == null : str.equals(gVar.f12545a)) {
            String str2 = this.f12546b;
            if (str2 == null ? gVar.f12546b == null : str2.equals(gVar.f12546b)) {
                Map<String, String> map = this.f12547c;
                Map<String, String> map2 = gVar.f12547c;
                return map != null ? map.equals(map2) : map2 == null;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f12545a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f12546b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Map<String, String> map = this.f12547c;
        return hashCode2 + (map != null ? map.hashCode() : 0);
    }

    public Map<String, String> a() {
        return this.f12547c;
    }

    public String b() {
        return this.f12546b;
    }

    public void a(Map<String, String> map) {
        this.f12547c = map;
    }
}
