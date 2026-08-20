package com.applovin.exoplayer2;

import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public abstract class d implements an {

    /* renamed from: a  reason: collision with root package name */
    protected final ba.c f1964a = new ba.c();

    private void b(long j) {
        long I = I() + j;
        long H = H();
        if (H != C.TIME_UNSET) {
            I = Math.min(I, H);
        }
        a(Math.max(I, 0L));
    }

    private int q() {
        int y = y();
        if (y == 1) {
            return 0;
        }
        return y;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public an.a a(an.a aVar) {
        boolean z = true;
        an.a.C0021a a2 = new an.a.C0021a().a(aVar).a(3, !K()).a(4, o() && !K()).a(5, a_() && !K()).a(6, !S().d() && (a_() || !n() || o()) && !K()).a(7, h() && !K()).a(8, !S().d() && (h() || (n() && m())) && !K()).a(9, !K()).a(10, o() && !K());
        if (!o() || K()) {
            z = false;
        }
        return a2.a(11, z).a();
    }

    @Override // com.applovin.exoplayer2.an
    public final void a(long j) {
        a(G(), j);
    }

    @Override // com.applovin.exoplayer2.an
    public final boolean a() {
        return t() == 3 && x() && u() == 0;
    }

    @Override // com.applovin.exoplayer2.an
    public final boolean a(int i) {
        return s().a(i);
    }

    public final boolean a_() {
        return l() != -1;
    }

    public final void b(int i) {
        a(i, C.TIME_UNSET);
    }

    public final void b_() {
        b(G());
    }

    @Override // com.applovin.exoplayer2.an
    public final void c() {
        b(-A());
    }

    @Override // com.applovin.exoplayer2.an
    public final void d() {
        b(B());
    }

    public final void f() {
        int l = l();
        if (l != -1) {
            b(l);
        }
    }

    @Override // com.applovin.exoplayer2.an
    public final void g() {
        if (S().d() || K()) {
            return;
        }
        boolean a_ = a_();
        if (!n() || o()) {
            if (!a_ || I() > C()) {
                a(0L);
                return;
            }
        } else if (!a_) {
            return;
        }
        f();
    }

    public final boolean h() {
        return k() != -1;
    }

    public final void i() {
        int k = k();
        if (k != -1) {
            b(k);
        }
    }

    @Override // com.applovin.exoplayer2.an
    public final void j() {
        if (S().d() || K()) {
            return;
        }
        if (h()) {
            i();
        } else if (n() && m()) {
            b_();
        }
    }

    public final int k() {
        ba S = S();
        if (S.d()) {
            return -1;
        }
        return S.a(G(), q(), z());
    }

    public final int l() {
        ba S = S();
        if (S.d()) {
            return -1;
        }
        return S.b(G(), q(), z());
    }

    public final boolean m() {
        ba S = S();
        return !S.d() && S.a(G(), this.f1964a).j;
    }

    public final boolean n() {
        ba S = S();
        return !S.d() && S.a(G(), this.f1964a).e();
    }

    @Override // com.applovin.exoplayer2.an
    public final boolean o() {
        ba S = S();
        return !S.d() && S.a(G(), this.f1964a).i;
    }

    public final long p() {
        ba S = S();
        return S.d() ? C.TIME_UNSET : S.a(G(), this.f1964a).c();
    }
}
