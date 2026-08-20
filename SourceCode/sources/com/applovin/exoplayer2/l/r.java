package com.applovin.exoplayer2.l;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private int f3828a;

    /* renamed from: b  reason: collision with root package name */
    private long[] f3829b;

    public r() {
        this(32);
    }

    public r(int i) {
        this.f3829b = new long[i];
    }

    public int a() {
        return this.f3828a;
    }

    public long a(int i) {
        if (i < 0 || i >= this.f3828a) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.f3828a);
        }
        return this.f3829b[i];
    }

    public void a(long j) {
        int i = this.f3828a;
        long[] jArr = this.f3829b;
        if (i == jArr.length) {
            this.f3829b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f3829b;
        int i2 = this.f3828a;
        this.f3828a = i2 + 1;
        jArr2[i2] = j;
    }

    public long[] b() {
        return Arrays.copyOf(this.f3829b, this.f3828a);
    }
}
