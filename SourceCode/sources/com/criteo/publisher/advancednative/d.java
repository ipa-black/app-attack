package com.criteo.publisher.advancednative;

import java.net.URL;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_CriteoMedia.java */
/* loaded from: classes2.dex */
public final class d extends CriteoMedia {

    /* renamed from: a  reason: collision with root package name */
    private final URL f8642a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(URL url) {
        if (url == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.f8642a = url;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.advancednative.CriteoMedia
    public URL getImageUrl() {
        return this.f8642a;
    }

    public String toString() {
        return "CriteoMedia{imageUrl=" + this.f8642a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CriteoMedia) {
            return this.f8642a.equals(((CriteoMedia) obj).getImageUrl());
        }
        return false;
    }

    public int hashCode() {
        return this.f8642a.hashCode() ^ 1000003;
    }
}
