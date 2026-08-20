package com.criteo.publisher.l0.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_GdprData.java */
/* loaded from: classes2.dex */
public abstract class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final String f8933a;

    /* renamed from: b  reason: collision with root package name */
    private final Boolean f8934b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f8935c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, Boolean bool, Integer num) {
        if (str == null) {
            throw new NullPointerException("Null consentData");
        }
        this.f8933a = str;
        this.f8934b = bool;
        if (num == null) {
            throw new NullPointerException("Null version");
        }
        this.f8935c = num;
    }

    @Override // com.criteo.publisher.l0.d.c
    public String a() {
        return this.f8933a;
    }

    @Override // com.criteo.publisher.l0.d.c
    public Boolean b() {
        return this.f8934b;
    }

    @Override // com.criteo.publisher.l0.d.c
    public Integer c() {
        return this.f8935c;
    }

    public String toString() {
        return "GdprData{consentData=" + this.f8933a + ", gdprApplies=" + this.f8934b + ", version=" + this.f8935c + "}";
    }

    public boolean equals(Object obj) {
        Boolean bool;
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f8933a.equals(cVar.a()) && ((bool = this.f8934b) != null ? bool.equals(cVar.b()) : cVar.b() == null) && this.f8935c.equals(cVar.c());
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.f8933a.hashCode() ^ 1000003) * 1000003;
        Boolean bool = this.f8934b;
        return ((hashCode ^ (bool == null ? 0 : bool.hashCode())) * 1000003) ^ this.f8935c.hashCode();
    }
}
