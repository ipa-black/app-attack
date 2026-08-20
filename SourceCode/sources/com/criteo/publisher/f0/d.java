package com.criteo.publisher.f0;

import com.criteo.publisher.f0.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_MetricRequest_MetricRequestSlot.java */
/* loaded from: classes2.dex */
public abstract class d extends t.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f8753a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f8754b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8755c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, Integer num, boolean z) {
        this.f8753a = str;
        this.f8754b = num;
        this.f8755c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.b
    public String b() {
        return this.f8753a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.b
    public Integer c() {
        return this.f8754b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.t.b
    public boolean a() {
        return this.f8755c;
    }

    public String toString() {
        return "MetricRequestSlot{impressionId=" + this.f8753a + ", zoneId=" + this.f8754b + ", cachedBidUsed=" + this.f8755c + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t.b) {
            t.b bVar = (t.b) obj;
            String str = this.f8753a;
            if (str != null ? str.equals(bVar.b()) : bVar.b() == null) {
                Integer num = this.f8754b;
                if (num != null ? num.equals(bVar.c()) : bVar.c() == null) {
                    if (this.f8755c == bVar.a()) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f8753a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        Integer num = this.f8754b;
        return ((hashCode ^ (num != null ? num.hashCode() : 0)) * 1000003) ^ (this.f8755c ? 1231 : 1237);
    }
}
