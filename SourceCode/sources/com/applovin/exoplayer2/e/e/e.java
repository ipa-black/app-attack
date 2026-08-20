package com.applovin.exoplayer2.e.e;

import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final y f2198a = new y(8);

    /* renamed from: b  reason: collision with root package name */
    private int f2199b;

    private long b(i iVar) throws IOException {
        int i = 0;
        iVar.d(this.f2198a.d(), 0, 1);
        int i2 = this.f2198a.d()[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (~i3);
        iVar.d(this.f2198a.d(), 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f2198a.d()[i] & 255) + (i5 << 8);
        }
        this.f2199b += i4 + 1;
        return i5;
    }

    public boolean a(i iVar) throws IOException {
        long b2;
        int i;
        long d2 = iVar.d();
        int i2 = (d2 > (-1L) ? 1 : (d2 == (-1L) ? 0 : -1));
        long j = 1024;
        if (i2 != 0 && d2 <= 1024) {
            j = d2;
        }
        int i3 = (int) j;
        iVar.d(this.f2198a.d(), 0, 4);
        long o = this.f2198a.o();
        this.f2199b = 4;
        while (o != 440786851) {
            int i4 = this.f2199b + 1;
            this.f2199b = i4;
            if (i4 == i3) {
                return false;
            }
            iVar.d(this.f2198a.d(), 0, 1);
            o = ((o << 8) & (-256)) | (this.f2198a.d()[0] & 255);
        }
        long b3 = b(iVar);
        long j2 = this.f2199b;
        if (b3 == Long.MIN_VALUE) {
            return false;
        }
        if (i2 != 0 && j2 + b3 >= d2) {
            return false;
        }
        while (true) {
            int i5 = this.f2199b;
            long j3 = j2 + b3;
            if (i5 >= j3) {
                return ((long) i5) == j3;
            } else if (b(iVar) != Long.MIN_VALUE && (b(iVar)) >= 0 && b2 <= 2147483647L) {
                if (i != 0) {
                    int i6 = (int) b2;
                    iVar.c(i6);
                    this.f2199b += i6;
                }
            }
        }
    }
}
