package com.applovin.exoplayer2.e.e;

import com.applovin.exoplayer2.e.i;
import java.io.IOException;
/* loaded from: classes.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final long[] f2200a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f2201b = new byte[8];

    /* renamed from: c  reason: collision with root package name */
    private int f2202c;

    /* renamed from: d  reason: collision with root package name */
    private int f2203d;

    public static int a(int i) {
        int i2;
        int i3 = 0;
        do {
            long[] jArr = f2200a;
            if (i3 >= jArr.length) {
                return -1;
            }
            i2 = ((jArr[i3] & i) > 0L ? 1 : ((jArr[i3] & i) == 0L ? 0 : -1));
            i3++;
        } while (i2 == 0);
        return i3;
    }

    public static long a(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= ~f2200a[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    public long a(i iVar, boolean z, boolean z2, int i) throws IOException {
        if (this.f2202c == 0) {
            if (!iVar.a(this.f2201b, 0, 1, z)) {
                return -1L;
            }
            int a2 = a(this.f2201b[0] & 255);
            this.f2203d = a2;
            if (a2 == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f2202c = 1;
        }
        int i2 = this.f2203d;
        if (i2 > i) {
            this.f2202c = 0;
            return -2L;
        }
        if (i2 != 1) {
            iVar.b(this.f2201b, 1, i2 - 1);
        }
        this.f2202c = 0;
        return a(this.f2201b, this.f2203d, z2);
    }

    public void a() {
        this.f2202c = 0;
        this.f2203d = 0;
    }

    public int b() {
        return this.f2203d;
    }
}
