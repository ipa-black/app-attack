package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.e.k;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.extractor.ogg.OggPageHeader;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private final e f2367a = new e();

    /* renamed from: b  reason: collision with root package name */
    private final y f2368b = new y(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    /* renamed from: c  reason: collision with root package name */
    private int f2369c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f2370d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2371e;

    private int a(int i) {
        int i2 = 0;
        this.f2370d = 0;
        while (this.f2370d + i < this.f2367a.f2378g) {
            int[] iArr = this.f2367a.j;
            int i3 = this.f2370d;
            this.f2370d = i3 + 1;
            int i4 = iArr[i3 + i];
            i2 += i4;
            if (i4 != 255) {
                break;
            }
        }
        return i2;
    }

    public void a() {
        this.f2367a.a();
        this.f2368b.a(0);
        this.f2369c = -1;
        this.f2371e = false;
    }

    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i;
        com.applovin.exoplayer2.l.a.b(iVar != null);
        if (this.f2371e) {
            this.f2371e = false;
            this.f2368b.a(0);
        }
        while (!this.f2371e) {
            if (this.f2369c < 0) {
                if (!this.f2367a.a(iVar) || !this.f2367a.a(iVar, true)) {
                    return false;
                }
                int i2 = this.f2367a.f2379h;
                if ((this.f2367a.f2373b & 1) == 1 && this.f2368b.b() == 0) {
                    i2 += a(0);
                    i = this.f2370d;
                } else {
                    i = 0;
                }
                if (!k.a(iVar, i2)) {
                    return false;
                }
                this.f2369c = i;
            }
            int a2 = a(this.f2369c);
            int i3 = this.f2369c + this.f2370d;
            if (a2 > 0) {
                y yVar = this.f2368b;
                yVar.b(yVar.b() + a2);
                if (!k.b(iVar, this.f2368b.d(), this.f2368b.b(), a2)) {
                    return false;
                }
                y yVar2 = this.f2368b;
                yVar2.c(yVar2.b() + a2);
                this.f2371e = this.f2367a.j[i3 + (-1)] != 255;
            }
            if (i3 == this.f2367a.f2378g) {
                i3 = -1;
            }
            this.f2369c = i3;
        }
        return true;
    }

    public e b() {
        return this.f2367a;
    }

    public y c() {
        return this.f2368b;
    }

    public void d() {
        if (this.f2368b.d().length == 65025) {
            return;
        }
        y yVar = this.f2368b;
        yVar.a(Arrays.copyOf(yVar.d(), Math.max((int) OggPageHeader.MAX_PAGE_PAYLOAD, this.f2368b.b())), this.f2368b.b());
    }
}
