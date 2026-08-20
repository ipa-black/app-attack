package com.applovin.exoplayer2.l;

import com.applovin.exoplayer2.common.base.Charsets;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f3864a;

    /* renamed from: b  reason: collision with root package name */
    private int f3865b;

    /* renamed from: c  reason: collision with root package name */
    private int f3866c;

    public y() {
        this.f3864a = ai.f3786f;
    }

    public y(int i) {
        this.f3864a = new byte[i];
        this.f3866c = i;
    }

    public y(byte[] bArr) {
        this.f3864a = bArr;
        this.f3866c = bArr.length;
    }

    public y(byte[] bArr, int i) {
        this.f3864a = bArr;
        this.f3866c = i;
    }

    public double A() {
        return Double.longBitsToDouble(s());
    }

    public String B() {
        return a((char) 0);
    }

    public String C() {
        if (a() == 0) {
            return null;
        }
        int i = this.f3865b;
        while (i < this.f3866c && !ai.a((int) this.f3864a[i])) {
            i++;
        }
        int i2 = this.f3865b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f3864a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f3865b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f3864a;
        int i3 = this.f3865b;
        String a2 = ai.a(bArr2, i3, i - i3);
        this.f3865b = i;
        int i4 = this.f3866c;
        if (i == i4) {
            return a2;
        }
        byte[] bArr3 = this.f3864a;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.f3865b = i5;
            if (i5 == i4) {
                return a2;
            }
        }
        int i6 = this.f3865b;
        if (bArr3[i6] == 10) {
            this.f3865b = i6 + 1;
        }
        return a2;
    }

    public long D() {
        int i;
        int i2;
        byte b2;
        int i3;
        long j = this.f3864a[this.f3865b];
        int i4 = 7;
        while (true) {
            if (i4 < 0) {
                break;
            }
            if (((1 << i4) & j) != 0) {
                i4--;
            } else if (i4 < 6) {
                j &= i3 - 1;
                i2 = 7 - i4;
            } else if (i4 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 != 0) {
            for (i = 1; i < i2; i++) {
                if ((this.f3864a[this.f3865b + i] & 192) != 128) {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
                }
                j = (j << 6) | (b2 & 63);
            }
            this.f3865b += i2;
            return j;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
    }

    public int a() {
        return this.f3866c - this.f3865b;
    }

    public String a(char c2) {
        if (a() == 0) {
            return null;
        }
        int i = this.f3865b;
        while (i < this.f3866c && this.f3864a[i] != c2) {
            i++;
        }
        byte[] bArr = this.f3864a;
        int i2 = this.f3865b;
        String a2 = ai.a(bArr, i2, i - i2);
        this.f3865b = i;
        if (i < this.f3866c) {
            this.f3865b = i + 1;
        }
        return a2;
    }

    public String a(int i, Charset charset) {
        String str = new String(this.f3864a, this.f3865b, i, charset);
        this.f3865b += i;
        return str;
    }

    public void a(int i) {
        a(e() < i ? new byte[i] : this.f3864a, i);
    }

    public void a(x xVar, int i) {
        a(xVar.f3860a, 0, i);
        xVar.a(0);
    }

    public void a(byte[] bArr) {
        a(bArr, bArr.length);
    }

    public void a(byte[] bArr, int i) {
        this.f3864a = bArr;
        this.f3866c = i;
        this.f3865b = 0;
    }

    public void a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f3864a, this.f3865b, bArr, i, i2);
        this.f3865b += i2;
    }

    public int b() {
        return this.f3866c;
    }

    public void b(int i) {
        if (i > e()) {
            this.f3864a = Arrays.copyOf(this.f3864a, i);
        }
    }

    public int c() {
        return this.f3865b;
    }

    public void c(int i) {
        a.a(i >= 0 && i <= this.f3864a.length);
        this.f3866c = i;
    }

    public void d(int i) {
        a.a(i >= 0 && i <= this.f3866c);
        this.f3865b = i;
    }

    public byte[] d() {
        return this.f3864a;
    }

    public int e() {
        return this.f3864a.length;
    }

    public void e(int i) {
        d(this.f3865b + i);
    }

    public int f() {
        return this.f3864a[this.f3865b] & 255;
    }

    public String f(int i) {
        return a(i, Charsets.UTF_8);
    }

    public char g() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        return (char) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public String g(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.f3865b;
        int i3 = (i2 + i) - 1;
        String a2 = ai.a(this.f3864a, i2, (i3 >= this.f3866c || this.f3864a[i3] != 0) ? i : i - 1);
        this.f3865b += i;
        return a2;
    }

    public int h() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        this.f3865b = i + 1;
        return bArr[i] & 255;
    }

    public int i() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        this.f3865b = i + 2;
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    public int j() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        this.f3865b = i + 2;
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    public short k() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        this.f3865b = i + 2;
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public short l() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        this.f3865b = i + 2;
        return (short) (((bArr[i + 1] & 255) << 8) | (bArr[i] & 255));
    }

    public int m() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        int i2 = (bArr[i + 1] & 255) << 8;
        this.f3865b = i + 3;
        return (bArr[i + 2] & 255) | i2 | ((bArr[i] & 255) << 16);
    }

    public int n() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        int i2 = (bArr[i + 1] & 255) << 8;
        this.f3865b = i + 3;
        return (bArr[i + 2] & 255) | i2 | (((bArr[i] & 255) << 24) >> 8);
    }

    public long o() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        this.f3865b = i + 4;
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public long p() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        this.f3865b = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public int q() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        int i2 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24);
        this.f3865b = i + 4;
        return (bArr[i + 3] & 255) | i2 | ((bArr[i + 2] & 255) << 8);
    }

    public int r() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        int i2 = ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
        this.f3865b = i + 4;
        return ((bArr[i + 3] & 255) << 24) | i2 | ((bArr[i + 2] & 255) << 16);
    }

    public long s() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        long j = ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24);
        this.f3865b = i + 8;
        return (bArr[i + 7] & 255) | j | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    public long t() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        long j = (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40);
        this.f3865b = i + 8;
        return ((bArr[i + 7] & 255) << 56) | j | ((bArr[i + 6] & 255) << 48);
    }

    public int u() {
        byte[] bArr = this.f3864a;
        int i = this.f3865b;
        int i2 = (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
        this.f3865b = i + 4;
        return i2;
    }

    public int v() {
        return (h() << 21) | (h() << 14) | (h() << 7) | h();
    }

    public int w() {
        int q = q();
        if (q >= 0) {
            return q;
        }
        throw new IllegalStateException("Top bit not zero: " + q);
    }

    public int x() {
        int r = r();
        if (r >= 0) {
            return r;
        }
        throw new IllegalStateException("Top bit not zero: " + r);
    }

    public long y() {
        long s = s();
        if (s >= 0) {
            return s;
        }
        throw new IllegalStateException("Top bit not zero: " + s);
    }

    public float z() {
        return Float.intBitsToFloat(q());
    }
}
