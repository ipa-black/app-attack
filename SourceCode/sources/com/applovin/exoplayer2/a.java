package com.applovin.exoplayer2;

import android.util.Pair;
import com.applovin.exoplayer2.ba;
/* loaded from: classes.dex */
public abstract class a extends ba {

    /* renamed from: c  reason: collision with root package name */
    private final int f1202c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.exoplayer2.h.z f1203d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f1204e;

    public a(boolean z, com.applovin.exoplayer2.h.z zVar) {
        this.f1204e = z;
        this.f1203d = zVar;
        this.f1202c = zVar.a();
    }

    private int a(int i, boolean z) {
        if (z) {
            return this.f1203d.a(i);
        }
        if (i < this.f1202c - 1) {
            return i + 1;
        }
        return -1;
    }

    public static Object a(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int b(int i, boolean z) {
        if (z) {
            return this.f1203d.b(i);
        }
        if (i > 0) {
            return i - 1;
        }
        return -1;
    }

    public static Object b(Object obj) {
        return ((Pair) obj).second;
    }

    @Override // com.applovin.exoplayer2.ba
    public int a(int i, int i2, boolean z) {
        if (this.f1204e) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int c2 = c(i);
        int f2 = f(c2);
        int a2 = d(c2).a(i - f2, i2 != 2 ? i2 : 0, z);
        if (a2 != -1) {
            return f2 + a2;
        }
        int a3 = a(c2, z);
        while (a3 != -1 && d(a3).d()) {
            a3 = a(a3, z);
        }
        if (a3 != -1) {
            return f(a3) + d(a3).b(z);
        }
        if (i2 == 2) {
            return b(z);
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.ba
    public int a(boolean z) {
        int i = this.f1202c;
        if (i == 0) {
            return -1;
        }
        if (this.f1204e) {
            z = false;
        }
        int b2 = z ? this.f1203d.b() : i - 1;
        while (d(b2).d()) {
            b2 = b(b2, z);
            if (b2 == -1) {
                return -1;
            }
        }
        return f(b2) + d(b2).a(z);
    }

    @Override // com.applovin.exoplayer2.ba
    public final ba.a a(int i, ba.a aVar, boolean z) {
        int b2 = b(i);
        int f2 = f(b2);
        d(b2).a(i - e(b2), aVar, z);
        aVar.f1620c += f2;
        if (z) {
            aVar.f1619b = a(g(b2), com.applovin.exoplayer2.l.a.b(aVar.f1619b));
        }
        return aVar;
    }

    @Override // com.applovin.exoplayer2.ba
    public final ba.a a(Object obj, ba.a aVar) {
        Object a2 = a(obj);
        Object b2 = b(obj);
        int d2 = d(a2);
        int f2 = f(d2);
        d(d2).a(b2, aVar);
        aVar.f1620c += f2;
        aVar.f1619b = obj;
        return aVar;
    }

    @Override // com.applovin.exoplayer2.ba
    public final ba.c a(int i, ba.c cVar, long j) {
        int c2 = c(i);
        int f2 = f(c2);
        int e2 = e(c2);
        d(c2).a(i - f2, cVar, j);
        Object g2 = g(c2);
        if (!ba.c.f1629a.equals(cVar.f1630b)) {
            g2 = a(g2, cVar.f1630b);
        }
        cVar.f1630b = g2;
        cVar.p += e2;
        cVar.q += e2;
        return cVar;
    }

    @Override // com.applovin.exoplayer2.ba
    public final Object a(int i) {
        int b2 = b(i);
        return a(g(b2), d(b2).a(i - e(b2)));
    }

    protected abstract int b(int i);

    @Override // com.applovin.exoplayer2.ba
    public int b(int i, int i2, boolean z) {
        if (this.f1204e) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int c2 = c(i);
        int f2 = f(c2);
        int b2 = d(c2).b(i - f2, i2 != 2 ? i2 : 0, z);
        if (b2 != -1) {
            return f2 + b2;
        }
        int b3 = b(c2, z);
        while (b3 != -1 && d(b3).d()) {
            b3 = b(b3, z);
        }
        if (b3 != -1) {
            return f(b3) + d(b3).a(z);
        }
        if (i2 == 2) {
            return a(z);
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.ba
    public int b(boolean z) {
        if (this.f1202c == 0) {
            return -1;
        }
        if (this.f1204e) {
            z = false;
        }
        int c2 = z ? this.f1203d.c() : 0;
        while (d(c2).d()) {
            c2 = a(c2, z);
            if (c2 == -1) {
                return -1;
            }
        }
        return f(c2) + d(c2).b(z);
    }

    protected abstract int c(int i);

    @Override // com.applovin.exoplayer2.ba
    public final int c(Object obj) {
        int c2;
        if (obj instanceof Pair) {
            Object a2 = a(obj);
            Object b2 = b(obj);
            int d2 = d(a2);
            if (d2 == -1 || (c2 = d(d2).c(b2)) == -1) {
                return -1;
            }
            return e(d2) + c2;
        }
        return -1;
    }

    protected abstract int d(Object obj);

    protected abstract ba d(int i);

    protected abstract int e(int i);

    protected abstract int f(int i);

    protected abstract Object g(int i);
}
