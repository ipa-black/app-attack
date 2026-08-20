package com.criteo.publisher.model;

import com.google.gson.annotations.SerializedName;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_CdbRequestSlot.java */
/* loaded from: classes2.dex */
public abstract class b extends q {

    /* renamed from: a  reason: collision with root package name */
    private final String f9045a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9046b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f9047c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f9048d;

    /* renamed from: e  reason: collision with root package name */
    private final Boolean f9049e;

    /* renamed from: f  reason: collision with root package name */
    private final Collection<String> f9050f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2, Boolean bool, Boolean bool2, Boolean bool3, Collection<String> collection) {
        if (str == null) {
            throw new NullPointerException("Null getImpressionId");
        }
        this.f9045a = str;
        if (str2 == null) {
            throw new NullPointerException("Null getPlacementId");
        }
        this.f9046b = str2;
        this.f9047c = bool;
        this.f9048d = bool2;
        this.f9049e = bool3;
        if (collection == null) {
            throw new NullPointerException("Null getSizes");
        }
        this.f9050f = collection;
    }

    @Override // com.criteo.publisher.model.q
    @SerializedName("impId")
    public String a() {
        return this.f9045a;
    }

    @Override // com.criteo.publisher.model.q
    @SerializedName("placementId")
    public String b() {
        return this.f9046b;
    }

    @Override // com.criteo.publisher.model.q
    @SerializedName("isNative")
    public Boolean e() {
        return this.f9047c;
    }

    @Override // com.criteo.publisher.model.q
    @SerializedName("interstitial")
    public Boolean d() {
        return this.f9048d;
    }

    @Override // com.criteo.publisher.model.q
    @SerializedName("rewarded")
    public Boolean f() {
        return this.f9049e;
    }

    @Override // com.criteo.publisher.model.q
    @SerializedName("sizes")
    public Collection<String> c() {
        return this.f9050f;
    }

    public String toString() {
        return "CdbRequestSlot{getImpressionId=" + this.f9045a + ", getPlacementId=" + this.f9046b + ", isNativeAd=" + this.f9047c + ", isInterstitial=" + this.f9048d + ", isRewarded=" + this.f9049e + ", getSizes=" + this.f9050f + "}";
    }

    public boolean equals(Object obj) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            return this.f9045a.equals(qVar.a()) && this.f9046b.equals(qVar.b()) && ((bool = this.f9047c) != null ? bool.equals(qVar.e()) : qVar.e() == null) && ((bool2 = this.f9048d) != null ? bool2.equals(qVar.d()) : qVar.d() == null) && ((bool3 = this.f9049e) != null ? bool3.equals(qVar.f()) : qVar.f() == null) && this.f9050f.equals(qVar.c());
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (((this.f9045a.hashCode() ^ 1000003) * 1000003) ^ this.f9046b.hashCode()) * 1000003;
        Boolean bool = this.f9047c;
        int hashCode2 = (hashCode ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        Boolean bool2 = this.f9048d;
        int hashCode3 = (hashCode2 ^ (bool2 == null ? 0 : bool2.hashCode())) * 1000003;
        Boolean bool3 = this.f9049e;
        return ((hashCode3 ^ (bool3 != null ? bool3.hashCode() : 0)) * 1000003) ^ this.f9050f.hashCode();
    }
}
