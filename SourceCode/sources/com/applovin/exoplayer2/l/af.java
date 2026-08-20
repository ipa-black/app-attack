package com.applovin.exoplayer2.l;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class af<V> {

    /* renamed from: a  reason: collision with root package name */
    private long[] f3773a;

    /* renamed from: b  reason: collision with root package name */
    private V[] f3774b;

    /* renamed from: c  reason: collision with root package name */
    private int f3775c;

    /* renamed from: d  reason: collision with root package name */
    private int f3776d;

    public af() {
        this(10);
    }

    public af(int i) {
        this.f3773a = new long[i];
        this.f3774b = (V[]) a(i);
    }

    private V a(long j, boolean z) {
        V v = null;
        long j2 = Long.MAX_VALUE;
        while (this.f3776d > 0) {
            long j3 = j - this.f3773a[this.f3775c];
            if (j3 < 0 && (z || (-j3) >= j2)) {
                break;
            }
            v = d();
            j2 = j3;
        }
        return v;
    }

    private static <V> V[] a(int i) {
        return (V[]) new Object[i];
    }

    private void b(long j) {
        int i = this.f3776d;
        if (i > 0) {
            if (j <= this.f3773a[((this.f3775c + i) - 1) % this.f3774b.length]) {
                a();
            }
        }
    }

    private void b(long j, V v) {
        int i = this.f3775c;
        int i2 = this.f3776d;
        V[] vArr = this.f3774b;
        int length = (i + i2) % vArr.length;
        this.f3773a[length] = j;
        vArr[length] = v;
        this.f3776d = i2 + 1;
    }

    private V d() {
        a.b(this.f3776d > 0);
        V[] vArr = this.f3774b;
        int i = this.f3775c;
        V v = vArr[i];
        vArr[i] = null;
        this.f3775c = (i + 1) % vArr.length;
        this.f3776d--;
        return v;
    }

    private void e() {
        int length = this.f3774b.length;
        if (this.f3776d < length) {
            return;
        }
        int i = length * 2;
        long[] jArr = new long[i];
        V[] vArr = (V[]) a(i);
        int i2 = this.f3775c;
        int i3 = length - i2;
        System.arraycopy(this.f3773a, i2, jArr, 0, i3);
        System.arraycopy(this.f3774b, this.f3775c, vArr, 0, i3);
        int i4 = this.f3775c;
        if (i4 > 0) {
            System.arraycopy(this.f3773a, 0, jArr, i3, i4);
            System.arraycopy(this.f3774b, 0, vArr, i3, this.f3775c);
        }
        this.f3773a = jArr;
        this.f3774b = vArr;
        this.f3775c = 0;
    }

    public synchronized V a(long j) {
        return a(j, true);
    }

    public synchronized void a() {
        this.f3775c = 0;
        this.f3776d = 0;
        Arrays.fill(this.f3774b, (Object) null);
    }

    public synchronized void a(long j, V v) {
        b(j);
        e();
        b(j, v);
    }

    public synchronized int b() {
        return this.f3776d;
    }

    public synchronized V c() {
        return this.f3776d == 0 ? null : d();
    }
}
