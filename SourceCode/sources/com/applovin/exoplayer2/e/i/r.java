package com.applovin.exoplayer2.e.i;

import java.util.Arrays;
/* loaded from: classes.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f2596a;

    /* renamed from: b  reason: collision with root package name */
    public int f2597b;

    /* renamed from: c  reason: collision with root package name */
    private final int f2598c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2599d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2600e;

    public r(int i, int i2) {
        this.f2598c = i;
        byte[] bArr = new byte[i2 + 3];
        this.f2596a = bArr;
        bArr[2] = 1;
    }

    public void a() {
        this.f2599d = false;
        this.f2600e = false;
    }

    public void a(int i) {
        com.applovin.exoplayer2.l.a.b(!this.f2599d);
        boolean z = i == this.f2598c;
        this.f2599d = z;
        if (z) {
            this.f2597b = 3;
            this.f2600e = false;
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        if (this.f2599d) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f2596a;
            int length = bArr2.length;
            int i4 = this.f2597b;
            if (length < i4 + i3) {
                this.f2596a = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f2596a, this.f2597b, i3);
            this.f2597b += i3;
        }
    }

    public boolean b() {
        return this.f2600e;
    }

    public boolean b(int i) {
        if (this.f2599d) {
            this.f2597b -= i;
            this.f2599d = false;
            this.f2600e = true;
            return true;
        }
        return false;
    }
}
