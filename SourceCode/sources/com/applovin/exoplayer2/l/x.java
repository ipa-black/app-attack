package com.applovin.exoplayer2.l;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f3860a;

    /* renamed from: b  reason: collision with root package name */
    private int f3861b;

    /* renamed from: c  reason: collision with root package name */
    private int f3862c;

    /* renamed from: d  reason: collision with root package name */
    private int f3863d;

    public x() {
        this.f3860a = ai.f3786f;
    }

    public x(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public x(byte[] bArr, int i) {
        this.f3860a = bArr;
        this.f3863d = i;
    }

    private void g() {
        int i;
        int i2 = this.f3861b;
        a.b(i2 >= 0 && (i2 < (i = this.f3863d) || (i2 == i && this.f3862c == 0)));
    }

    public int a() {
        return ((this.f3863d - this.f3861b) * 8) - this.f3862c;
    }

    public String a(int i, Charset charset) {
        byte[] bArr = new byte[i];
        b(bArr, 0, i);
        return new String(bArr, charset);
    }

    public void a(int i) {
        int i2 = i / 8;
        this.f3861b = i2;
        this.f3862c = i - (i2 * 8);
        g();
    }

    public void a(int i, int i2) {
        if (i2 < 32) {
            i &= (1 << i2) - 1;
        }
        int min = Math.min(8 - this.f3862c, i2);
        int i3 = this.f3862c;
        int i4 = (8 - i3) - min;
        int i5 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i3) | ((1 << i4) - 1);
        byte[] bArr = this.f3860a;
        int i6 = this.f3861b;
        byte b2 = (byte) (i5 & bArr[i6]);
        bArr[i6] = b2;
        int i7 = i2 - min;
        bArr[i6] = (byte) (b2 | ((i >>> i7) << i4));
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.f3860a[i8] = (byte) (i >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.f3860a;
        byte b3 = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = b3;
        bArr2[i8] = (byte) (((i & ((1 << i7) - 1)) << i9) | b3);
        b(i2);
        g();
    }

    public void a(y yVar) {
        a(yVar.d(), yVar.b());
        a(yVar.c() * 8);
    }

    public void a(byte[] bArr) {
        a(bArr, bArr.length);
    }

    public void a(byte[] bArr, int i) {
        this.f3860a = bArr;
        this.f3861b = 0;
        this.f3862c = 0;
        this.f3863d = i;
    }

    public void a(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.f3860a;
            int i4 = this.f3861b;
            int i5 = i4 + 1;
            this.f3861b = i5;
            byte b2 = bArr2[i4];
            int i6 = this.f3862c;
            byte b3 = (byte) (b2 << i6);
            bArr[i] = b3;
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | b3);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        byte b4 = (byte) (bArr[i3] & (255 >> i7));
        bArr[i3] = b4;
        int i8 = this.f3862c;
        if (i8 + i7 > 8) {
            byte[] bArr3 = this.f3860a;
            int i9 = this.f3861b;
            this.f3861b = i9 + 1;
            bArr[i3] = (byte) (b4 | ((bArr3[i9] & 255) << i8));
            this.f3862c = i8 - 8;
        }
        int i10 = this.f3862c + i7;
        this.f3862c = i10;
        byte[] bArr4 = this.f3860a;
        int i11 = this.f3861b;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
        if (i10 == 8) {
            this.f3862c = 0;
            this.f3861b = i11 + 1;
        }
        g();
    }

    public int b() {
        return (this.f3861b * 8) + this.f3862c;
    }

    public void b(int i) {
        int i2 = i / 8;
        int i3 = this.f3861b + i2;
        this.f3861b = i3;
        int i4 = this.f3862c + (i - (i2 * 8));
        this.f3862c = i4;
        if (i4 > 7) {
            this.f3861b = i3 + 1;
            this.f3862c = i4 - 8;
        }
        g();
    }

    public void b(byte[] bArr, int i, int i2) {
        a.b(this.f3862c == 0);
        System.arraycopy(this.f3860a, this.f3861b, bArr, i, i2);
        this.f3861b += i2;
        g();
    }

    public int c() {
        a.b(this.f3862c == 0);
        return this.f3861b;
    }

    public int c(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f3862c += i;
        int i3 = 0;
        while (true) {
            i2 = this.f3862c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f3862c = i4;
            byte[] bArr = this.f3860a;
            int i5 = this.f3861b;
            this.f3861b = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.f3860a;
        int i6 = this.f3861b;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.f3862c = 0;
            this.f3861b = i6 + 1;
        }
        g();
        return i7;
    }

    public long d(int i) {
        return i <= 32 ? ai.b(c(i)) : ai.b(c(i - 32), c(32));
    }

    public void d() {
        int i = this.f3862c + 1;
        this.f3862c = i;
        if (i == 8) {
            this.f3862c = 0;
            this.f3861b++;
        }
        g();
    }

    public void e(int i) {
        a.b(this.f3862c == 0);
        this.f3861b += i;
        g();
    }

    public boolean e() {
        boolean z = (this.f3860a[this.f3861b] & (128 >> this.f3862c)) != 0;
        d();
        return z;
    }

    public void f() {
        if (this.f3862c == 0) {
            return;
        }
        this.f3862c = 0;
        this.f3861b++;
        g();
    }
}
