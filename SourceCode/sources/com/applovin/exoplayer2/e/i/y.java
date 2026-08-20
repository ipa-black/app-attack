package com.applovin.exoplayer2.e.i;

import androidx.core.view.InputDeviceCompat;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public final class y implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final x f2638a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2639b = new com.applovin.exoplayer2.l.y(32);

    /* renamed from: c  reason: collision with root package name */
    private int f2640c;

    /* renamed from: d  reason: collision with root package name */
    private int f2641d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2642e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2643f;

    public y(x xVar) {
        this.f2638a = xVar;
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void a() {
        this.f2643f = true;
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        this.f2638a.a(agVar, jVar, dVar);
        this.f2643f = true;
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void a(com.applovin.exoplayer2.l.y yVar, int i) {
        boolean z = (i & 1) != 0;
        int c2 = z ? yVar.c() + yVar.h() : -1;
        if (this.f2643f) {
            if (!z) {
                return;
            }
            this.f2643f = false;
            yVar.d(c2);
            this.f2641d = 0;
        }
        while (yVar.a() > 0) {
            int i2 = this.f2641d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int h2 = yVar.h();
                    yVar.d(yVar.c() - 1);
                    if (h2 == 255) {
                        this.f2643f = true;
                        return;
                    }
                }
                int min = Math.min(yVar.a(), 3 - this.f2641d);
                yVar.a(this.f2639b.d(), this.f2641d, min);
                int i3 = this.f2641d + min;
                this.f2641d = i3;
                if (i3 == 3) {
                    this.f2639b.d(0);
                    this.f2639b.c(3);
                    this.f2639b.e(1);
                    int h3 = this.f2639b.h();
                    int h4 = this.f2639b.h();
                    this.f2642e = (h3 & 128) != 0;
                    this.f2640c = (((h3 & 15) << 8) | h4) + 3;
                    int e2 = this.f2639b.e();
                    int i4 = this.f2640c;
                    if (e2 < i4) {
                        this.f2639b.b(Math.min((int) InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i4, this.f2639b.e() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(yVar.a(), this.f2640c - this.f2641d);
                yVar.a(this.f2639b.d(), this.f2641d, min2);
                int i5 = this.f2641d + min2;
                this.f2641d = i5;
                int i6 = this.f2640c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f2642e) {
                        this.f2639b.c(i6);
                    } else if (ai.a(this.f2639b.d(), 0, this.f2640c, -1) != 0) {
                        this.f2643f = true;
                        return;
                    } else {
                        this.f2639b.c(this.f2640c - 4);
                    }
                    this.f2639b.d(0);
                    this.f2638a.a(this.f2639b);
                    this.f2641d = 0;
                }
            }
        }
    }
}
