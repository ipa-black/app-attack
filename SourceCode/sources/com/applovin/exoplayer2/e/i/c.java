package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.e.v;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* loaded from: classes.dex */
public final class c implements com.applovin.exoplayer2.e.h {

    /* renamed from: a  reason: collision with root package name */
    public static final com.applovin.exoplayer2.e.l f2455a = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.c$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            com.applovin.exoplayer2.e.h[] a2;
            a2 = c.a();
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final d f2456b = new d();

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2457c = new com.applovin.exoplayer2.l.y(16384);

    /* renamed from: d  reason: collision with root package name */
    private boolean f2458d;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] a() {
        return new com.applovin.exoplayer2.e.h[]{new c()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        int a2 = iVar.a(this.f2457c.d(), 0, 16384);
        if (a2 == -1) {
            return -1;
        }
        this.f2457c.d(0);
        this.f2457c.c(a2);
        if (!this.f2458d) {
            this.f2456b.a(0L, 4);
            this.f2458d = true;
        }
        this.f2456b.a(this.f2457c);
        return 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        this.f2458d = false;
        this.f2456b.a();
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.f2456b.a(jVar, new ad.d(0, 1));
        jVar.a();
        jVar.a(new v.b(C.TIME_UNSET));
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(10);
        int i = 0;
        while (true) {
            iVar.d(yVar.d(), 0, 10);
            yVar.d(0);
            if (yVar.m() != 4801587) {
                break;
            }
            yVar.e(3);
            int v = yVar.v();
            i += v + 10;
            iVar.c(v);
        }
        iVar.a();
        iVar.c(i);
        int i2 = 0;
        int i3 = i;
        while (true) {
            iVar.d(yVar.d(), 0, 7);
            yVar.d(0);
            int i4 = yVar.i();
            if (i4 == 44096 || i4 == 44097) {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int a2 = com.applovin.exoplayer2.b.c.a(yVar.d(), i4);
                if (a2 == -1) {
                    return false;
                }
                iVar.c(a2 - 7);
            } else {
                iVar.a();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                iVar.c(i3);
                i2 = 0;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
