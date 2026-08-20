package com.applovin.exoplayer2.k;

import com.applovin.exoplayer2.l.ai;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class m implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f3642a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3643b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f3644c;

    /* renamed from: d  reason: collision with root package name */
    private final a[] f3645d;

    /* renamed from: e  reason: collision with root package name */
    private int f3646e;

    /* renamed from: f  reason: collision with root package name */
    private int f3647f;

    /* renamed from: g  reason: collision with root package name */
    private int f3648g;

    /* renamed from: h  reason: collision with root package name */
    private a[] f3649h;

    public m(boolean z, int i) {
        this(z, i, 0);
    }

    public m(boolean z, int i, int i2) {
        com.applovin.exoplayer2.l.a.a(i > 0);
        com.applovin.exoplayer2.l.a.a(i2 >= 0);
        this.f3642a = z;
        this.f3643b = i;
        this.f3648g = i2;
        this.f3649h = new a[i2 + 100];
        if (i2 > 0) {
            this.f3644c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f3649h[i3] = new a(this.f3644c, i3 * i);
            }
        } else {
            this.f3644c = null;
        }
        this.f3645d = new a[1];
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized a a() {
        a aVar;
        this.f3647f++;
        int i = this.f3648g;
        if (i > 0) {
            a[] aVarArr = this.f3649h;
            int i2 = i - 1;
            this.f3648g = i2;
            aVar = (a) com.applovin.exoplayer2.l.a.b(aVarArr[i2]);
            this.f3649h[this.f3648g] = null;
        } else {
            aVar = new a(new byte[this.f3643b], 0);
        }
        return aVar;
    }

    public synchronized void a(int i) {
        boolean z = i < this.f3646e;
        this.f3646e = i;
        if (z) {
            b();
        }
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized void a(a aVar) {
        a[] aVarArr = this.f3645d;
        aVarArr[0] = aVar;
        a(aVarArr);
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized void a(a[] aVarArr) {
        int i = this.f3648g;
        int length = aVarArr.length + i;
        a[] aVarArr2 = this.f3649h;
        if (length >= aVarArr2.length) {
            this.f3649h = (a[]) Arrays.copyOf(aVarArr2, Math.max(aVarArr2.length * 2, i + aVarArr.length));
        }
        for (a aVar : aVarArr) {
            a[] aVarArr3 = this.f3649h;
            int i2 = this.f3648g;
            this.f3648g = i2 + 1;
            aVarArr3[i2] = aVar;
        }
        this.f3647f -= aVarArr.length;
        notifyAll();
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized void b() {
        int i = 0;
        int max = Math.max(0, ai.a(this.f3646e, this.f3643b) - this.f3647f);
        int i2 = this.f3648g;
        if (max >= i2) {
            return;
        }
        if (this.f3644c != null) {
            int i3 = i2 - 1;
            while (i <= i3) {
                a aVar = (a) com.applovin.exoplayer2.l.a.b(this.f3649h[i]);
                if (aVar.f3586a == this.f3644c) {
                    i++;
                } else {
                    a aVar2 = (a) com.applovin.exoplayer2.l.a.b(this.f3649h[i3]);
                    if (aVar2.f3586a != this.f3644c) {
                        i3--;
                    } else {
                        a[] aVarArr = this.f3649h;
                        aVarArr[i] = aVar2;
                        aVarArr[i3] = aVar;
                        i3--;
                        i++;
                    }
                }
            }
            max = Math.max(max, i);
            if (max >= this.f3648g) {
                return;
            }
        }
        Arrays.fill(this.f3649h, max, this.f3648g, (Object) null);
        this.f3648g = max;
    }

    @Override // com.applovin.exoplayer2.k.b
    public int c() {
        return this.f3643b;
    }

    public synchronized void d() {
        if (this.f3642a) {
            a(0);
        }
    }

    public synchronized int e() {
        return this.f3647f * this.f3643b;
    }
}
