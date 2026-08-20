package com.criteo.publisher.model.b0;

import com.google.gson.annotations.SerializedName;
import java.net.URI;
import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_NativePrivacy.java */
/* loaded from: classes2.dex */
public abstract class e extends q {

    /* renamed from: a  reason: collision with root package name */
    private final URI f9065a;

    /* renamed from: b  reason: collision with root package name */
    private final URL f9066b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9067c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(URI uri, URL url, String str) {
        if (uri == null) {
            throw new NullPointerException("Null clickUrl");
        }
        this.f9065a = uri;
        if (url == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.f9066b = url;
        if (str == null) {
            throw new NullPointerException("Null legalText");
        }
        this.f9067c = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.q
    @SerializedName("optoutClickUrl")
    public URI a() {
        return this.f9065a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.q
    @SerializedName("optoutImageUrl")
    public URL b() {
        return this.f9066b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.q
    @SerializedName("longLegalText")
    public String c() {
        return this.f9067c;
    }

    public String toString() {
        return "NativePrivacy{clickUrl=" + this.f9065a + ", imageUrl=" + this.f9066b + ", legalText=" + this.f9067c + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            return this.f9065a.equals(qVar.a()) && this.f9066b.equals(qVar.b()) && this.f9067c.equals(qVar.c());
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f9065a.hashCode() ^ 1000003) * 1000003) ^ this.f9066b.hashCode()) * 1000003) ^ this.f9067c.hashCode();
    }
}
