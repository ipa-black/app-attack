package com.criteo.publisher.f0;

import com.criteo.publisher.f0.t;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_MetricRequest.java */
/* loaded from: classes2.dex */
public abstract class b extends t {

    /* renamed from: a  reason: collision with root package name */
    private final List<t.a> f8742a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8743b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8744c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(List<t.a> list, String str, int i) {
        if (list == null) {
            throw new NullPointerException("Null feedbacks");
        }
        this.f8742a = list;
        if (str == null) {
            throw new NullPointerException("Null wrapperVersion");
        }
        this.f8743b = str;
        this.f8744c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t
    public List<t.a> a() {
        return this.f8742a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t
    @SerializedName("wrapper_version")
    public String c() {
        return this.f8743b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t
    @SerializedName("profile_id")
    public int b() {
        return this.f8744c;
    }

    public String toString() {
        return "MetricRequest{feedbacks=" + this.f8742a + ", wrapperVersion=" + this.f8743b + ", profileId=" + this.f8744c + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            return this.f8742a.equals(tVar.a()) && this.f8743b.equals(tVar.c()) && this.f8744c == tVar.b();
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f8742a.hashCode() ^ 1000003) * 1000003) ^ this.f8743b.hashCode()) * 1000003) ^ this.f8744c;
    }
}
