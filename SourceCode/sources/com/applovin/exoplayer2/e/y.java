package com.applovin.exoplayer2.e;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f2719a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2720b;

    /* renamed from: c  reason: collision with root package name */
    private int f2721c;

    /* renamed from: d  reason: collision with root package name */
    private int f2722d;

    public y(byte[] bArr) {
        this.f2719a = bArr;
        this.f2720b = bArr.length;
    }

    private void c() {
        int i;
        int i2 = this.f2721c;
        com.applovin.exoplayer2.l.a.b(i2 >= 0 && (i2 < (i = this.f2720b) || (i2 == i && this.f2722d == 0)));
    }

    public int a(int i) {
        int i2 = this.f2721c;
        int min = Math.min(i, 8 - this.f2722d);
        int i3 = i2 + 1;
        int i4 = ((this.f2719a[i2] & 255) >> this.f2722d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f2719a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        b(i);
        return i5;
    }

    public boolean a() {
        boolean z = (((this.f2719a[this.f2721c] & 255) >> this.f2722d) & 1) == 1;
        b(1);
        return z;
    }

    public int b() {
        return (this.f2721c * 8) + this.f2722d;
    }

    public void b(int i) {
        int i2 = i / 8;
        int i3 = this.f2721c + i2;
        this.f2721c = i3;
        int i4 = this.f2722d + (i - (i2 * 8));
        this.f2722d = i4;
        if (i4 > 7) {
            this.f2721c = i3 + 1;
            this.f2722d = i4 - 8;
        }
        c();
    }
}
