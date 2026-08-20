package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.c.d;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.v;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
/* loaded from: classes.dex */
final class e extends d {

    /* renamed from: b  reason: collision with root package name */
    private final y f2123b;

    /* renamed from: c  reason: collision with root package name */
    private final y f2124c;

    /* renamed from: d  reason: collision with root package name */
    private int f2125d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2126e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2127f;

    /* renamed from: g  reason: collision with root package name */
    private int f2128g;

    public e(x xVar) {
        super(xVar);
        this.f2123b = new y(v.f3837a);
        this.f2124c = new y(4);
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar) throws d.a {
        int h2 = yVar.h();
        int i = (h2 >> 4) & 15;
        int i2 = h2 & 15;
        if (i2 == 7) {
            this.f2128g = i;
            return i != 5;
        }
        throw new d.a("Video format not supported: " + i2);
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar, long j) throws ai {
        int h2 = yVar.h();
        long n = j + (yVar.n() * 1000);
        if (h2 == 0 && !this.f2126e) {
            y yVar2 = new y(new byte[yVar.a()]);
            yVar.a(yVar2.d(), 0, yVar.a());
            com.applovin.exoplayer2.m.a a2 = com.applovin.exoplayer2.m.a.a(yVar2);
            this.f2125d = a2.f3878b;
            this.f2122a.a(new v.a().f("video/avc").d(a2.f3882f).g(a2.f3879c).h(a2.f3880d).b(a2.f3881e).a(a2.f3877a).a());
            this.f2126e = true;
            return false;
        } else if (h2 == 1 && this.f2126e) {
            int i = this.f2128g == 1 ? 1 : 0;
            if (this.f2127f || i != 0) {
                byte[] d2 = this.f2124c.d();
                d2[0] = 0;
                d2[1] = 0;
                d2[2] = 0;
                int i2 = 4 - this.f2125d;
                int i3 = 0;
                while (yVar.a() > 0) {
                    yVar.a(this.f2124c.d(), i2, this.f2125d);
                    this.f2124c.d(0);
                    int w = this.f2124c.w();
                    this.f2123b.d(0);
                    this.f2122a.a(this.f2123b, 4);
                    this.f2122a.a(yVar, w);
                    i3 = i3 + 4 + w;
                }
                this.f2122a.a(n, i, i3, 0, null);
                this.f2127f = true;
                return true;
            }
            return false;
        } else {
            return false;
        }
    }
}
