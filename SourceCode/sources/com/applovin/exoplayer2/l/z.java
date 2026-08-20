package com.applovin.exoplayer2.l;
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f3867a;

    /* renamed from: b  reason: collision with root package name */
    private int f3868b;

    /* renamed from: c  reason: collision with root package name */
    private int f3869c;

    /* renamed from: d  reason: collision with root package name */
    private int f3870d;

    public z(byte[] bArr, int i, int i2) {
        a(bArr, i, i2);
    }

    private boolean d(int i) {
        if (2 <= i && i < this.f3868b) {
            byte[] bArr = this.f3867a;
            if (bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    private int f() {
        int i = 0;
        while (!b()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? c(i) : 0);
    }

    private void g() {
        int i;
        int i2 = this.f3869c;
        a.b(i2 >= 0 && (i2 < (i = this.f3868b) || (i2 == i && this.f3870d == 0)));
    }

    public void a() {
        int i = this.f3870d + 1;
        this.f3870d = i;
        if (i == 8) {
            this.f3870d = 0;
            int i2 = this.f3869c;
            this.f3869c = i2 + (d(i2 + 1) ? 2 : 1);
        }
        g();
    }

    public void a(int i) {
        int i2 = this.f3869c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f3869c = i4;
        int i5 = this.f3870d + (i - (i3 * 8));
        this.f3870d = i5;
        if (i5 > 7) {
            this.f3869c = i4 + 1;
            this.f3870d = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 > this.f3869c) {
                g();
                return;
            } else if (d(i2)) {
                this.f3869c++;
                i2 += 2;
            }
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        this.f3867a = bArr;
        this.f3869c = i;
        this.f3868b = i2;
        this.f3870d = 0;
        g();
    }

    public boolean b() {
        boolean z = (this.f3867a[this.f3869c] & (128 >> this.f3870d)) != 0;
        a();
        return z;
    }

    public boolean b(int i) {
        int i2 = this.f3869c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f3870d + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        while (true) {
            i2++;
            if (i2 > i4 || i4 >= this.f3868b) {
                break;
            } else if (d(i2)) {
                i4++;
                i2 += 2;
            }
        }
        int i6 = this.f3868b;
        if (i4 >= i6) {
            return i4 == i6 && i5 == 0;
        }
        return true;
    }

    public int c(int i) {
        int i2;
        this.f3870d += i;
        int i3 = 0;
        while (true) {
            i2 = this.f3870d;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f3870d = i4;
            byte[] bArr = this.f3867a;
            int i5 = this.f3869c;
            i3 |= (bArr[i5] & 255) << i4;
            if (!d(i5 + 1)) {
                r3 = 1;
            }
            this.f3869c = i5 + r3;
        }
        byte[] bArr2 = this.f3867a;
        int i6 = this.f3869c;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.f3870d = 0;
            this.f3869c = i6 + (d(i6 + 1) ? 2 : 1);
        }
        g();
        return i7;
    }

    public boolean c() {
        int i = this.f3869c;
        int i2 = this.f3870d;
        int i3 = 0;
        while (this.f3869c < this.f3868b && !b()) {
            i3++;
        }
        boolean z = this.f3869c == this.f3868b;
        this.f3869c = i;
        this.f3870d = i2;
        return !z && b((i3 * 2) + 1);
    }

    public int d() {
        return f();
    }

    public int e() {
        int f2 = f();
        return (f2 % 2 == 0 ? -1 : 1) * ((f2 + 1) / 2);
    }
}
