package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.l.ai;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public final class w implements f {

    /* renamed from: b  reason: collision with root package name */
    private int f1603b;

    /* renamed from: c  reason: collision with root package name */
    private float f1604c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f1605d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private f.a f1606e = f.a.f1484a;

    /* renamed from: f  reason: collision with root package name */
    private f.a f1607f = f.a.f1484a;

    /* renamed from: g  reason: collision with root package name */
    private f.a f1608g = f.a.f1484a;

    /* renamed from: h  reason: collision with root package name */
    private f.a f1609h = f.a.f1484a;
    private boolean i;
    private v j;
    private ByteBuffer k;
    private ShortBuffer l;
    private ByteBuffer m;
    private long n;
    private long o;
    private boolean p;

    public w() {
        ByteBuffer byteBuffer = f1483a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = f1483a;
        this.f1603b = -1;
    }

    public long a(long j) {
        if (this.o >= 1024) {
            long a2 = this.n - ((v) com.applovin.exoplayer2.l.a.b(this.j)).a();
            return this.f1609h.f1485b == this.f1608g.f1485b ? ai.d(j, a2, this.o) : ai.d(j, a2 * this.f1609h.f1485b, this.o * this.f1608g.f1485b);
        }
        return (long) (this.f1604c * j);
    }

    @Override // com.applovin.exoplayer2.b.f
    public f.a a(f.a aVar) throws f.b {
        if (aVar.f1487d == 2) {
            int i = this.f1603b;
            if (i == -1) {
                i = aVar.f1485b;
            }
            this.f1606e = aVar;
            f.a aVar2 = new f.a(i, aVar.f1486c, 2);
            this.f1607f = aVar2;
            this.i = true;
            return aVar2;
        }
        throw new f.b(aVar);
    }

    public void a(float f2) {
        if (this.f1604c != f2) {
            this.f1604c = f2;
            this.i = true;
        }
    }

    @Override // com.applovin.exoplayer2.b.f
    public void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.n += remaining;
            ((v) com.applovin.exoplayer2.l.a.b(this.j)).a(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
    }

    @Override // com.applovin.exoplayer2.b.f
    public boolean a() {
        return this.f1607f.f1485b != -1 && (Math.abs(this.f1604c - 1.0f) >= 1.0E-4f || Math.abs(this.f1605d - 1.0f) >= 1.0E-4f || this.f1607f.f1485b != this.f1606e.f1485b);
    }

    @Override // com.applovin.exoplayer2.b.f
    public void b() {
        v vVar = this.j;
        if (vVar != null) {
            vVar.b();
        }
        this.p = true;
    }

    public void b(float f2) {
        if (this.f1605d != f2) {
            this.f1605d = f2;
            this.i = true;
        }
    }

    @Override // com.applovin.exoplayer2.b.f
    public ByteBuffer c() {
        int d2;
        v vVar = this.j;
        if (vVar != null && (d2 = vVar.d()) > 0) {
            if (this.k.capacity() < d2) {
                ByteBuffer order = ByteBuffer.allocateDirect(d2).order(ByteOrder.nativeOrder());
                this.k = order;
                this.l = order.asShortBuffer();
            } else {
                this.k.clear();
                this.l.clear();
            }
            vVar.b(this.l);
            this.o += d2;
            this.k.limit(d2);
            this.m = this.k;
        }
        ByteBuffer byteBuffer = this.m;
        this.m = f1483a;
        return byteBuffer;
    }

    @Override // com.applovin.exoplayer2.b.f
    public boolean d() {
        v vVar;
        return this.p && ((vVar = this.j) == null || vVar.d() == 0);
    }

    @Override // com.applovin.exoplayer2.b.f
    public void e() {
        if (a()) {
            this.f1608g = this.f1606e;
            this.f1609h = this.f1607f;
            if (this.i) {
                this.j = new v(this.f1608g.f1485b, this.f1608g.f1486c, this.f1604c, this.f1605d, this.f1609h.f1485b);
            } else {
                v vVar = this.j;
                if (vVar != null) {
                    vVar.c();
                }
            }
        }
        this.m = f1483a;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override // com.applovin.exoplayer2.b.f
    public void f() {
        this.f1604c = 1.0f;
        this.f1605d = 1.0f;
        this.f1606e = f.a.f1484a;
        this.f1607f = f.a.f1484a;
        this.f1608g = f.a.f1484a;
        this.f1609h = f.a.f1484a;
        ByteBuffer byteBuffer = f1483a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = f1483a;
        this.f1603b = -1;
        this.i = false;
        this.j = null;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }
}
