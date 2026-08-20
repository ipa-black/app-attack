package com.criteo.publisher.model.b0;

import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_NativeProduct.java */
/* loaded from: classes2.dex */
public abstract class f extends r {

    /* renamed from: a  reason: collision with root package name */
    private final String f9068a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9069b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9070c;

    /* renamed from: d  reason: collision with root package name */
    private final URI f9071d;

    /* renamed from: e  reason: collision with root package name */
    private final String f9072e;

    /* renamed from: f  reason: collision with root package name */
    private final o f9073f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, String str3, URI uri, String str4, o oVar) {
        if (str == null) {
            throw new NullPointerException("Null title");
        }
        this.f9068a = str;
        if (str2 == null) {
            throw new NullPointerException("Null description");
        }
        this.f9069b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null price");
        }
        this.f9070c = str3;
        if (uri == null) {
            throw new NullPointerException("Null clickUrl");
        }
        this.f9071d = uri;
        if (str4 == null) {
            throw new NullPointerException("Null callToAction");
        }
        this.f9072e = str4;
        if (oVar == null) {
            throw new NullPointerException("Null image");
        }
        this.f9073f = oVar;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String g() {
        return this.f9068a;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String c() {
        return this.f9069b;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String f() {
        return this.f9070c;
    }

    @Override // com.criteo.publisher.model.b0.r
    public URI b() {
        return this.f9071d;
    }

    @Override // com.criteo.publisher.model.b0.r
    public String a() {
        return this.f9072e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.r
    public o d() {
        return this.f9073f;
    }

    public String toString() {
        return "NativeProduct{title=" + this.f9068a + ", description=" + this.f9069b + ", price=" + this.f9070c + ", clickUrl=" + this.f9071d + ", callToAction=" + this.f9072e + ", image=" + this.f9073f + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            return this.f9068a.equals(rVar.g()) && this.f9069b.equals(rVar.c()) && this.f9070c.equals(rVar.f()) && this.f9071d.equals(rVar.b()) && this.f9072e.equals(rVar.a()) && this.f9073f.equals(rVar.d());
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((this.f9068a.hashCode() ^ 1000003) * 1000003) ^ this.f9069b.hashCode()) * 1000003) ^ this.f9070c.hashCode()) * 1000003) ^ this.f9071d.hashCode()) * 1000003) ^ this.f9072e.hashCode()) * 1000003) ^ this.f9073f.hashCode();
    }
}
