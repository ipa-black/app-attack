package com.yandex.metrica.impl.ob;

import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.eh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1515eh {

    /* renamed from: a  reason: collision with root package name */
    public final List<C1590hh> f14686a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14687b;

    /* renamed from: c  reason: collision with root package name */
    public final long f14688c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f14689d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f14690e;

    public C1515eh(List<C1590hh> list, String str, long j, boolean z, boolean z2) {
        this.f14686a = A2.c(list);
        this.f14687b = str;
        this.f14688c = j;
        this.f14689d = z;
        this.f14690e = z2;
    }

    public String toString() {
        return "SdkFingerprintingState{sdkItemList=" + this.f14686a + ", etag='" + this.f14687b + "', lastAttemptTime=" + this.f14688c + ", hasFirstCollectionOccurred=" + this.f14689d + ", shouldRetry=" + this.f14690e + '}';
    }
}
