package com.applovin.exoplayer2.f;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    private int f2785a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f2786b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f2787c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int[] f2788d;

    /* renamed from: e  reason: collision with root package name */
    private int f2789e;

    public f() {
        int[] iArr = new int[16];
        this.f2788d = iArr;
        this.f2789e = iArr.length - 1;
    }

    private void d() {
        int[] iArr = this.f2788d;
        int length = iArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        int[] iArr2 = new int[length];
        int length2 = iArr.length;
        int i = this.f2785a;
        int i2 = length2 - i;
        System.arraycopy(iArr, i, iArr2, 0, i2);
        System.arraycopy(this.f2788d, 0, iArr2, i2, i);
        this.f2785a = 0;
        this.f2786b = this.f2787c - 1;
        this.f2788d = iArr2;
        this.f2789e = iArr2.length - 1;
    }

    public int a() {
        int i = this.f2787c;
        if (i != 0) {
            int[] iArr = this.f2788d;
            int i2 = this.f2785a;
            int i3 = iArr[i2];
            this.f2785a = (i2 + 1) & this.f2789e;
            this.f2787c = i - 1;
            return i3;
        }
        throw new NoSuchElementException();
    }

    public void a(int i) {
        if (this.f2787c == this.f2788d.length) {
            d();
        }
        int i2 = (this.f2786b + 1) & this.f2789e;
        this.f2786b = i2;
        this.f2788d[i2] = i;
        this.f2787c++;
    }

    public boolean b() {
        return this.f2787c == 0;
    }

    public void c() {
        this.f2785a = 0;
        this.f2786b = -1;
        this.f2787c = 0;
    }
}
