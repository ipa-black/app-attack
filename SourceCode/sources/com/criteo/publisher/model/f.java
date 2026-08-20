package com.criteo.publisher.model;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_User.java */
/* loaded from: classes2.dex */
public abstract class f extends z {

    /* renamed from: a  reason: collision with root package name */
    private final String f9112a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9113b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9114c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9115d;

    /* renamed from: e  reason: collision with root package name */
    private final String f9116e;

    /* renamed from: f  reason: collision with root package name */
    private final String f9117f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Object> f9118g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, String str3, String str4, String str5, String str6, Map<String, Object> map) {
        this.f9112a = str;
        if (str2 == null) {
            throw new NullPointerException("Null deviceIdType");
        }
        this.f9113b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null deviceOs");
        }
        this.f9114c = str3;
        this.f9115d = str4;
        this.f9116e = str5;
        this.f9117f = str6;
        if (map == null) {
            throw new NullPointerException("Null ext");
        }
        this.f9118g = map;
    }

    @Override // com.criteo.publisher.model.z
    public String a() {
        return this.f9112a;
    }

    @Override // com.criteo.publisher.model.z
    public String b() {
        return this.f9113b;
    }

    @Override // com.criteo.publisher.model.z
    public String c() {
        return this.f9114c;
    }

    @Override // com.criteo.publisher.model.z
    public String e() {
        return this.f9115d;
    }

    @Override // com.criteo.publisher.model.z
    public String f() {
        return this.f9116e;
    }

    @Override // com.criteo.publisher.model.z
    public String g() {
        return this.f9117f;
    }

    @Override // com.criteo.publisher.model.z
    public Map<String, Object> d() {
        return this.f9118g;
    }

    public String toString() {
        return "User{deviceId=" + this.f9112a + ", deviceIdType=" + this.f9113b + ", deviceOs=" + this.f9114c + ", mopubConsent=" + this.f9115d + ", uspIab=" + this.f9116e + ", uspOptout=" + this.f9117f + ", ext=" + this.f9118g + "}";
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof z) {
            z zVar = (z) obj;
            String str4 = this.f9112a;
            if (str4 != null ? str4.equals(zVar.a()) : zVar.a() == null) {
                if (this.f9113b.equals(zVar.b()) && this.f9114c.equals(zVar.c()) && ((str = this.f9115d) != null ? str.equals(zVar.e()) : zVar.e() == null) && ((str2 = this.f9116e) != null ? str2.equals(zVar.f()) : zVar.f() == null) && ((str3 = this.f9117f) != null ? str3.equals(zVar.g()) : zVar.g() == null) && this.f9118g.equals(zVar.d())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f9112a;
        int hashCode = ((((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f9113b.hashCode()) * 1000003) ^ this.f9114c.hashCode()) * 1000003;
        String str2 = this.f9115d;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f9116e;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f9117f;
        return ((hashCode3 ^ (str4 != null ? str4.hashCode() : 0)) * 1000003) ^ this.f9118g.hashCode();
    }
}
