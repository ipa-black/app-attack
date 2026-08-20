package com.criteo.publisher.model;

import com.google.gson.annotations.SerializedName;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_Publisher.java */
/* loaded from: classes2.dex */
public abstract class c extends v {

    /* renamed from: a  reason: collision with root package name */
    private final String f9095a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9096b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Object> f9097c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, String str2, Map<String, Object> map) {
        if (str == null) {
            throw new NullPointerException("Null bundleId");
        }
        this.f9095a = str;
        if (str2 == null) {
            throw new NullPointerException("Null criteoPublisherId");
        }
        this.f9096b = str2;
        if (map == null) {
            throw new NullPointerException("Null ext");
        }
        this.f9097c = map;
    }

    @Override // com.criteo.publisher.model.v
    public String a() {
        return this.f9095a;
    }

    @Override // com.criteo.publisher.model.v
    @SerializedName("cpId")
    public String b() {
        return this.f9096b;
    }

    @Override // com.criteo.publisher.model.v
    public Map<String, Object> c() {
        return this.f9097c;
    }

    public String toString() {
        return "Publisher{bundleId=" + this.f9095a + ", criteoPublisherId=" + this.f9096b + ", ext=" + this.f9097c + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            return this.f9095a.equals(vVar.a()) && this.f9096b.equals(vVar.b()) && this.f9097c.equals(vVar.c());
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f9095a.hashCode() ^ 1000003) * 1000003) ^ this.f9096b.hashCode()) * 1000003) ^ this.f9097c.hashCode();
    }
}
