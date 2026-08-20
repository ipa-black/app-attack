package com.criteo.publisher.model;

import com.google.gson.annotations.SerializedName;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_CdbRequest.java */
/* loaded from: classes2.dex */
public abstract class a extends o {

    /* renamed from: a  reason: collision with root package name */
    private final String f9034a;

    /* renamed from: b  reason: collision with root package name */
    private final v f9035b;

    /* renamed from: c  reason: collision with root package name */
    private final z f9036c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9037d;

    /* renamed from: e  reason: collision with root package name */
    private final int f9038e;

    /* renamed from: f  reason: collision with root package name */
    private final com.criteo.publisher.l0.d.c f9039f;

    /* renamed from: g  reason: collision with root package name */
    private final List<q> f9040g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, v vVar, z zVar, String str2, int i, com.criteo.publisher.l0.d.c cVar, List<q> list) {
        if (str == null) {
            throw new NullPointerException("Null id");
        }
        this.f9034a = str;
        if (vVar == null) {
            throw new NullPointerException("Null publisher");
        }
        this.f9035b = vVar;
        if (zVar == null) {
            throw new NullPointerException("Null user");
        }
        this.f9036c = zVar;
        if (str2 == null) {
            throw new NullPointerException("Null sdkVersion");
        }
        this.f9037d = str2;
        this.f9038e = i;
        this.f9039f = cVar;
        if (list == null) {
            throw new NullPointerException("Null slots");
        }
        this.f9040g = list;
    }

    @Override // com.criteo.publisher.model.o
    public String b() {
        return this.f9034a;
    }

    @Override // com.criteo.publisher.model.o
    public v d() {
        return this.f9035b;
    }

    @Override // com.criteo.publisher.model.o
    public z g() {
        return this.f9036c;
    }

    @Override // com.criteo.publisher.model.o
    public String e() {
        return this.f9037d;
    }

    @Override // com.criteo.publisher.model.o
    public int c() {
        return this.f9038e;
    }

    @Override // com.criteo.publisher.model.o
    @SerializedName("gdprConsent")
    public com.criteo.publisher.l0.d.c a() {
        return this.f9039f;
    }

    @Override // com.criteo.publisher.model.o
    public List<q> f() {
        return this.f9040g;
    }

    public String toString() {
        return "CdbRequest{id=" + this.f9034a + ", publisher=" + this.f9035b + ", user=" + this.f9036c + ", sdkVersion=" + this.f9037d + ", profileId=" + this.f9038e + ", gdprData=" + this.f9039f + ", slots=" + this.f9040g + "}";
    }

    public boolean equals(Object obj) {
        com.criteo.publisher.l0.d.c cVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.f9034a.equals(oVar.b()) && this.f9035b.equals(oVar.d()) && this.f9036c.equals(oVar.g()) && this.f9037d.equals(oVar.e()) && this.f9038e == oVar.c() && ((cVar = this.f9039f) != null ? cVar.equals(oVar.a()) : oVar.a() == null) && this.f9040g.equals(oVar.f());
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (((((((((this.f9034a.hashCode() ^ 1000003) * 1000003) ^ this.f9035b.hashCode()) * 1000003) ^ this.f9036c.hashCode()) * 1000003) ^ this.f9037d.hashCode()) * 1000003) ^ this.f9038e) * 1000003;
        com.criteo.publisher.l0.d.c cVar = this.f9039f;
        return ((hashCode ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003) ^ this.f9040g.hashCode();
    }
}
