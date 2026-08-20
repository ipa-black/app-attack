package com.criteo.publisher.model;

import com.google.gson.annotations.SerializedName;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_RemoteConfigRequest.java */
/* loaded from: classes2.dex */
public abstract class d extends w {

    /* renamed from: a  reason: collision with root package name */
    private final String f9098a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9099b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9100c;

    /* renamed from: d  reason: collision with root package name */
    private final int f9101d;

    /* renamed from: e  reason: collision with root package name */
    private final String f9102e;

    /* renamed from: f  reason: collision with root package name */
    private final String f9103f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, String str3, int i, String str4, String str5) {
        if (str == null) {
            throw new NullPointerException("Null criteoPublisherId");
        }
        this.f9098a = str;
        if (str2 == null) {
            throw new NullPointerException("Null bundleId");
        }
        this.f9099b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null sdkVersion");
        }
        this.f9100c = str3;
        this.f9101d = i;
        this.f9102e = str4;
        if (str5 == null) {
            throw new NullPointerException("Null deviceOs");
        }
        this.f9103f = str5;
    }

    @Override // com.criteo.publisher.model.w
    @SerializedName("cpId")
    public String b() {
        return this.f9098a;
    }

    @Override // com.criteo.publisher.model.w
    public String a() {
        return this.f9099b;
    }

    @Override // com.criteo.publisher.model.w
    public String f() {
        return this.f9100c;
    }

    @Override // com.criteo.publisher.model.w
    @SerializedName("rtbProfileId")
    public int e() {
        return this.f9101d;
    }

    @Override // com.criteo.publisher.model.w
    public String c() {
        return this.f9102e;
    }

    @Override // com.criteo.publisher.model.w
    public String d() {
        return this.f9103f;
    }

    public String toString() {
        return "RemoteConfigRequest{criteoPublisherId=" + this.f9098a + ", bundleId=" + this.f9099b + ", sdkVersion=" + this.f9100c + ", profileId=" + this.f9101d + ", deviceId=" + this.f9102e + ", deviceOs=" + this.f9103f + "}";
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            return this.f9098a.equals(wVar.b()) && this.f9099b.equals(wVar.a()) && this.f9100c.equals(wVar.f()) && this.f9101d == wVar.e() && ((str = this.f9102e) != null ? str.equals(wVar.c()) : wVar.c() == null) && this.f9103f.equals(wVar.d());
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (((((((this.f9098a.hashCode() ^ 1000003) * 1000003) ^ this.f9099b.hashCode()) * 1000003) ^ this.f9100c.hashCode()) * 1000003) ^ this.f9101d) * 1000003;
        String str = this.f9102e;
        return ((hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f9103f.hashCode();
    }
}
