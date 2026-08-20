package com.applovin.impl.sdk.d;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private long f5646a;

    /* renamed from: b  reason: collision with root package name */
    private long f5647b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5648c;

    /* renamed from: d  reason: collision with root package name */
    private long f5649d;

    /* renamed from: e  reason: collision with root package name */
    private long f5650e;

    /* renamed from: f  reason: collision with root package name */
    private int f5651f;

    /* renamed from: g  reason: collision with root package name */
    private Exception f5652g;

    public void a() {
        this.f5648c = true;
    }

    public void a(int i) {
        this.f5651f = i;
    }

    public void a(long j) {
        this.f5646a += j;
    }

    public void a(Exception exc) {
        this.f5652g = exc;
    }

    public void b() {
        this.f5649d++;
    }

    public void b(long j) {
        this.f5647b += j;
    }

    public void c() {
        this.f5650e++;
    }

    public Exception d() {
        return this.f5652g;
    }

    public int e() {
        return this.f5651f;
    }

    public String toString() {
        return "CacheStatsTracker{totalDownloadedBytes=" + this.f5646a + ", totalCachedBytes=" + this.f5647b + ", isHTMLCachingCancelled=" + this.f5648c + ", htmlResourceCacheSuccessCount=" + this.f5649d + ", htmlResourceCacheFailureCount=" + this.f5650e + '}';
    }
}
