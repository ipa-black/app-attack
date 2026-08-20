package com.criteo.publisher.model.b0;

import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_NativeAdvertiser.java */
/* loaded from: classes2.dex */
public abstract class a extends m {

    /* renamed from: a  reason: collision with root package name */
    private final String f9051a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9052b;

    /* renamed from: c  reason: collision with root package name */
    private final URI f9053c;

    /* renamed from: d  reason: collision with root package name */
    private final o f9054d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2, URI uri, o oVar) {
        if (str == null) {
            throw new NullPointerException("Null domain");
        }
        this.f9051a = str;
        if (str2 == null) {
            throw new NullPointerException("Null description");
        }
        this.f9052b = str2;
        if (uri == null) {
            throw new NullPointerException("Null logoClickUrl");
        }
        this.f9053c = uri;
        if (oVar == null) {
            throw new NullPointerException("Null logo");
        }
        this.f9054d = oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public String b() {
        return this.f9051a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public String a() {
        return this.f9052b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public URI d() {
        return this.f9053c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.m
    public o c() {
        return this.f9054d;
    }

    public String toString() {
        return "NativeAdvertiser{domain=" + this.f9051a + ", description=" + this.f9052b + ", logoClickUrl=" + this.f9053c + ", logo=" + this.f9054d + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            return this.f9051a.equals(mVar.b()) && this.f9052b.equals(mVar.a()) && this.f9053c.equals(mVar.d()) && this.f9054d.equals(mVar.c());
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f9051a.hashCode() ^ 1000003) * 1000003) ^ this.f9052b.hashCode()) * 1000003) ^ this.f9053c.hashCode()) * 1000003) ^ this.f9054d.hashCode();
    }
}
