package com.criteo.publisher.f0;

import com.criteo.publisher.f0.t;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_MetricRequest_MetricRequestFeedback.java */
/* loaded from: classes2.dex */
public abstract class c extends t.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<t.b> f8747a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f8748b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8749c;

    /* renamed from: d  reason: collision with root package name */
    private final long f8750d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f8751e;

    /* renamed from: f  reason: collision with root package name */
    private final String f8752f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(List<t.b> list, Long l, boolean z, long j, Long l2, String str) {
        if (list == null) {
            throw new NullPointerException("Null slots");
        }
        this.f8747a = list;
        this.f8748b = l;
        this.f8749c = z;
        this.f8750d = j;
        this.f8751e = l2;
        this.f8752f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.a
    public List<t.b> e() {
        return this.f8747a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.a
    public Long c() {
        return this.f8748b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.a
    @SerializedName("isTimeout")
    public boolean f() {
        return this.f8749c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.a
    public long b() {
        return this.f8750d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.a
    public Long a() {
        return this.f8751e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.a
    public String d() {
        return this.f8752f;
    }

    public String toString() {
        return "MetricRequestFeedback{slots=" + this.f8747a + ", elapsed=" + this.f8748b + ", timeout=" + this.f8749c + ", cdbCallStartElapsed=" + this.f8750d + ", cdbCallEndElapsed=" + this.f8751e + ", requestGroupId=" + this.f8752f + "}";
    }

    public boolean equals(Object obj) {
        Long l;
        Long l2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof t.a) {
            t.a aVar = (t.a) obj;
            if (this.f8747a.equals(aVar.e()) && ((l = this.f8748b) != null ? l.equals(aVar.c()) : aVar.c() == null) && this.f8749c == aVar.f() && this.f8750d == aVar.b() && ((l2 = this.f8751e) != null ? l2.equals(aVar.a()) : aVar.a() == null)) {
                String str = this.f8752f;
                if (str == null) {
                    if (aVar.d() == null) {
                        return true;
                    }
                } else if (str.equals(aVar.d())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.f8747a.hashCode() ^ 1000003) * 1000003;
        Long l = this.f8748b;
        int hashCode2 = (hashCode ^ (l == null ? 0 : l.hashCode())) * 1000003;
        int i = this.f8749c ? 1231 : 1237;
        long j = this.f8750d;
        int i2 = (((hashCode2 ^ i) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        Long l2 = this.f8751e;
        int hashCode3 = (i2 ^ (l2 == null ? 0 : l2.hashCode())) * 1000003;
        String str = this.f8752f;
        return hashCode3 ^ (str != null ? str.hashCode() : 0);
    }
}
