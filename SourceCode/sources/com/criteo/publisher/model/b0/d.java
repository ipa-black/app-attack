package com.criteo.publisher.model.b0;

import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_NativeImpressionPixel.java */
/* loaded from: classes2.dex */
public abstract class d extends p {

    /* renamed from: a  reason: collision with root package name */
    private final URL f9064a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(URL url) {
        if (url == null) {
            throw new NullPointerException("Null url");
        }
        this.f9064a = url;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.p
    public URL a() {
        return this.f9064a;
    }

    public String toString() {
        return "NativeImpressionPixel{url=" + this.f9064a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p) {
            return this.f9064a.equals(((p) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f9064a.hashCode() ^ 1000003;
    }
}
