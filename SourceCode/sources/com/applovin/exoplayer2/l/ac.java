package com.applovin.exoplayer2.l;

import com.applovin.exoplayer2.am;
/* loaded from: classes.dex */
public final class ac implements s {

    /* renamed from: a  reason: collision with root package name */
    private final d f3764a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3765b;

    /* renamed from: c  reason: collision with root package name */
    private long f3766c;

    /* renamed from: d  reason: collision with root package name */
    private long f3767d;

    /* renamed from: e  reason: collision with root package name */
    private am f3768e = am.f1360a;

    public ac(d dVar) {
        this.f3764a = dVar;
    }

    public void a() {
        if (this.f3765b) {
            return;
        }
        this.f3767d = this.f3764a.a();
        this.f3765b = true;
    }

    public void a(long j) {
        this.f3766c = j;
        if (this.f3765b) {
            this.f3767d = this.f3764a.a();
        }
    }

    @Override // com.applovin.exoplayer2.l.s
    public void a(am amVar) {
        if (this.f3765b) {
            a(c_());
        }
        this.f3768e = amVar;
    }

    public void b() {
        if (this.f3765b) {
            a(c_());
            this.f3765b = false;
        }
    }

    @Override // com.applovin.exoplayer2.l.s
    public long c_() {
        long j = this.f3766c;
        if (this.f3765b) {
            long a2 = this.f3764a.a() - this.f3767d;
            return j + (this.f3768e.f1362b == 1.0f ? com.applovin.exoplayer2.h.b(a2) : this.f3768e.a(a2));
        }
        return j;
    }

    @Override // com.applovin.exoplayer2.l.s
    public am d() {
        return this.f3768e;
    }
}
