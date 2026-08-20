package com.applovin.exoplayer2;

import com.google.android.exoplayer2.C;
@Deprecated
/* loaded from: classes.dex */
public class j implements i {

    /* renamed from: b  reason: collision with root package name */
    private final long f3468b = C.TIME_UNSET;

    /* renamed from: a  reason: collision with root package name */
    private final long f3467a = C.TIME_UNSET;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3469c = false;

    private static void a(an anVar, long j) {
        long I = anVar.I() + j;
        long H = anVar.H();
        if (H != C.TIME_UNSET) {
            I = Math.min(I, H);
        }
        anVar.a(Math.max(I, 0L));
    }

    @Override // com.applovin.exoplayer2.i
    public boolean a() {
        return !this.f3469c || this.f3467a > 0;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean a(an anVar) {
        anVar.w();
        return true;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean a(an anVar, int i) {
        anVar.c(i);
        return true;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean a(an anVar, int i, long j) {
        anVar.a(i, j);
        return true;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean a(an anVar, boolean z) {
        anVar.a(z);
        return true;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean b() {
        return !this.f3469c || this.f3468b > 0;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean b(an anVar) {
        anVar.g();
        return true;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean b(an anVar, boolean z) {
        anVar.b(z);
        return true;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean c(an anVar) {
        anVar.j();
        return true;
    }

    @Override // com.applovin.exoplayer2.i
    public boolean d(an anVar) {
        if (!this.f3469c) {
            anVar.c();
            return true;
        } else if (a() && anVar.o()) {
            a(anVar, -this.f3467a);
            return true;
        } else {
            return true;
        }
    }

    @Override // com.applovin.exoplayer2.i
    public boolean e(an anVar) {
        if (!this.f3469c) {
            anVar.d();
            return true;
        } else if (b() && anVar.o()) {
            a(anVar, this.f3468b);
            return true;
        } else {
            return true;
        }
    }
}
