package com.applovin.exoplayer2.e.e;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.i;
import java.io.IOException;
import java.util.ArrayDeque;
/* loaded from: classes.dex */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f2165a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<C0035a> f2166b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final f f2167c = new f();

    /* renamed from: d  reason: collision with root package name */
    private b f2168d;

    /* renamed from: e  reason: collision with root package name */
    private int f2169e;

    /* renamed from: f  reason: collision with root package name */
    private int f2170f;

    /* renamed from: g  reason: collision with root package name */
    private long f2171g;

    /* renamed from: com.applovin.exoplayer2.e.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0035a {

        /* renamed from: a  reason: collision with root package name */
        private final int f2172a;

        /* renamed from: b  reason: collision with root package name */
        private final long f2173b;

        private C0035a(int i, long j) {
            this.f2172a = i;
            this.f2173b = j;
        }
    }

    private long a(i iVar, int i) throws IOException {
        iVar.b(this.f2165a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f2165a[i2] & 255);
        }
        return j;
    }

    private double b(i iVar, int i) throws IOException {
        long a2 = a(iVar, i);
        return i == 4 ? Float.intBitsToFloat((int) a2) : Double.longBitsToDouble(a2);
    }

    private long b(i iVar) throws IOException {
        iVar.a();
        while (true) {
            iVar.d(this.f2165a, 0, 4);
            int a2 = f.a(this.f2165a[0]);
            if (a2 != -1 && a2 <= 4) {
                int a3 = (int) f.a(this.f2165a, a2, false);
                if (this.f2168d.b(a3)) {
                    iVar.b(a2);
                    return a3;
                }
            }
            iVar.b(1);
        }
    }

    private static String c(i iVar, int i) throws IOException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        iVar.b(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // com.applovin.exoplayer2.e.e.c
    public void a() {
        this.f2169e = 0;
        this.f2166b.clear();
        this.f2167c.a();
    }

    @Override // com.applovin.exoplayer2.e.e.c
    public void a(b bVar) {
        this.f2168d = bVar;
    }

    @Override // com.applovin.exoplayer2.e.e.c
    public boolean a(i iVar) throws IOException {
        com.applovin.exoplayer2.l.a.a(this.f2168d);
        while (true) {
            C0035a peek = this.f2166b.peek();
            if (peek != null && iVar.c() >= peek.f2173b) {
                this.f2168d.c(this.f2166b.pop().f2172a);
                return true;
            }
            if (this.f2169e == 0) {
                long a2 = this.f2167c.a(iVar, true, false, 4);
                if (a2 == -2) {
                    a2 = b(iVar);
                }
                if (a2 == -1) {
                    return false;
                }
                this.f2170f = (int) a2;
                this.f2169e = 1;
            }
            if (this.f2169e == 1) {
                this.f2171g = this.f2167c.a(iVar, false, true, 8);
                this.f2169e = 2;
            }
            int a3 = this.f2168d.a(this.f2170f);
            if (a3 != 0) {
                if (a3 == 1) {
                    long c2 = iVar.c();
                    this.f2166b.push(new C0035a(this.f2170f, this.f2171g + c2));
                    this.f2168d.a(this.f2170f, c2, this.f2171g);
                    this.f2169e = 0;
                    return true;
                } else if (a3 == 2) {
                    long j = this.f2171g;
                    if (j <= 8) {
                        this.f2168d.a(this.f2170f, a(iVar, (int) j));
                        this.f2169e = 0;
                        return true;
                    }
                    throw ai.b("Invalid integer size: " + this.f2171g, null);
                } else if (a3 == 3) {
                    long j2 = this.f2171g;
                    if (j2 <= 2147483647L) {
                        this.f2168d.a(this.f2170f, c(iVar, (int) j2));
                        this.f2169e = 0;
                        return true;
                    }
                    throw ai.b("String element size: " + this.f2171g, null);
                } else if (a3 == 4) {
                    this.f2168d.a(this.f2170f, (int) this.f2171g, iVar);
                    this.f2169e = 0;
                    return true;
                } else if (a3 == 5) {
                    long j3 = this.f2171g;
                    if (j3 == 4 || j3 == 8) {
                        this.f2168d.a(this.f2170f, b(iVar, (int) j3));
                        this.f2169e = 0;
                        return true;
                    }
                    throw ai.b("Invalid float size: " + this.f2171g, null);
                } else {
                    throw ai.b("Invalid element type " + a3, null);
                }
            }
            iVar.b((int) this.f2171g);
            this.f2169e = 0;
        }
    }
}
