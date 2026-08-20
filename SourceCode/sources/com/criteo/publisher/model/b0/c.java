package com.criteo.publisher.model.b0;

import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_NativeImage.java */
/* loaded from: classes2.dex */
public abstract class c extends o {

    /* renamed from: a  reason: collision with root package name */
    private final URL f9063a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(URL url) {
        if (url == null) {
            throw new NullPointerException("Null url");
        }
        this.f9063a = url;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.o
    public URL a() {
        return this.f9063a;
    }

    public String toString() {
        return "NativeImage{url=" + this.f9063a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            return this.f9063a.equals(((o) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f9063a.hashCode() ^ 1000003;
    }
}
