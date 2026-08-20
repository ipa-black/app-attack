package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
/* loaded from: classes.dex */
public final class o implements j {

    /* renamed from: b  reason: collision with root package name */
    private com.applovin.exoplayer2.e.x f2575b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2576c;

    /* renamed from: e  reason: collision with root package name */
    private int f2578e;

    /* renamed from: f  reason: collision with root package name */
    private int f2579f;

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2574a = new com.applovin.exoplayer2.l.y(10);

    /* renamed from: d  reason: collision with root package name */
    private long f2577d = C.TIME_UNSET;

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2576c = false;
        this.f2577d = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f2576c = true;
        if (j != C.TIME_UNSET) {
            this.f2577d = j;
        }
        this.f2578e = 0;
        this.f2579f = 0;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        dVar.a();
        com.applovin.exoplayer2.e.x a2 = jVar.a(dVar.b(), 5);
        this.f2575b = a2;
        a2.a(new v.a().a(dVar.c()).f(MimeTypes.APPLICATION_ID3).a());
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.l.a.a(this.f2575b);
        if (this.f2576c) {
            int a2 = yVar.a();
            int i = this.f2579f;
            if (i < 10) {
                int min = Math.min(a2, 10 - i);
                System.arraycopy(yVar.d(), yVar.c(), this.f2574a.d(), this.f2579f, min);
                if (this.f2579f + min == 10) {
                    this.f2574a.d(0);
                    if (73 != this.f2574a.h() || 68 != this.f2574a.h() || 51 != this.f2574a.h()) {
                        com.applovin.exoplayer2.l.q.c("Id3Reader", "Discarding invalid ID3 tag");
                        this.f2576c = false;
                        return;
                    }
                    this.f2574a.e(3);
                    this.f2578e = this.f2574a.v() + 10;
                }
            }
            int min2 = Math.min(a2, this.f2578e - this.f2579f);
            this.f2575b.a(yVar, min2);
            this.f2579f += min2;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
        int i;
        com.applovin.exoplayer2.l.a.a(this.f2575b);
        if (this.f2576c && (i = this.f2578e) != 0 && this.f2579f == i) {
            long j = this.f2577d;
            if (j != C.TIME_UNSET) {
                this.f2575b.a(j, 1, i, 0, null);
            }
            this.f2576c = false;
        }
    }
}
