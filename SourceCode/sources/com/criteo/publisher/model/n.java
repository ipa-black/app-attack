package com.criteo.publisher.model;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CacheAdUnit.kt */
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final AdSize f9150a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9151b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.a f9152c;

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof n) {
                n nVar = (n) obj;
                return Intrinsics.areEqual(c(), nVar.c()) && Intrinsics.areEqual(b(), nVar.b()) && Intrinsics.areEqual(a(), nVar.a());
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        AdSize c2 = c();
        int hashCode = (c2 != null ? c2.hashCode() : 0) * 31;
        String b2 = b();
        int hashCode2 = (hashCode + (b2 != null ? b2.hashCode() : 0)) * 31;
        com.criteo.publisher.n0.a a2 = a();
        return hashCode2 + (a2 != null ? a2.hashCode() : 0);
    }

    public String toString() {
        return "CacheAdUnit(size=" + c() + ", placementId=" + b() + ", adUnitType=" + a() + ")";
    }

    public n(AdSize size, String placementId, com.criteo.publisher.n0.a adUnitType) {
        Intrinsics.checkParameterIsNotNull(size, "size");
        Intrinsics.checkParameterIsNotNull(placementId, "placementId");
        Intrinsics.checkParameterIsNotNull(adUnitType, "adUnitType");
        this.f9150a = size;
        this.f9151b = placementId;
        this.f9152c = adUnitType;
    }

    public AdSize c() {
        return this.f9150a;
    }

    public String b() {
        return this.f9151b;
    }

    public com.criteo.publisher.n0.a a() {
        return this.f9152c;
    }
}
