package com.applovin.exoplayer2.f;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class d extends com.applovin.exoplayer2.c.g {

    /* renamed from: f  reason: collision with root package name */
    private long f2779f;

    /* renamed from: g  reason: collision with root package name */
    private int f2780g;

    /* renamed from: h  reason: collision with root package name */
    private int f2781h;

    public d() {
        super(2);
        this.f2781h = 32;
    }

    private boolean b(com.applovin.exoplayer2.c.g gVar) {
        if (l()) {
            if (this.f2780g < this.f2781h && gVar.b() == b()) {
                ByteBuffer byteBuffer = gVar.f1675b;
                return byteBuffer == null || this.f1675b == null || this.f1675b.position() + byteBuffer.remaining() <= 3072000;
            }
            return false;
        }
        return true;
    }

    @Override // com.applovin.exoplayer2.c.g, com.applovin.exoplayer2.c.a
    public void a() {
        super.a();
        this.f2780g = 0;
    }

    public boolean a(com.applovin.exoplayer2.c.g gVar) {
        com.applovin.exoplayer2.l.a.a(!gVar.g());
        com.applovin.exoplayer2.l.a.a(!gVar.e());
        com.applovin.exoplayer2.l.a.a(!gVar.c());
        if (b(gVar)) {
            int i = this.f2780g;
            this.f2780g = i + 1;
            if (i == 0) {
                this.f1677d = gVar.f1677d;
                if (gVar.d()) {
                    a_(1);
                }
            }
            if (gVar.b()) {
                a_(Integer.MIN_VALUE);
            }
            ByteBuffer byteBuffer = gVar.f1675b;
            if (byteBuffer != null) {
                f(byteBuffer.remaining());
                this.f1675b.put(byteBuffer);
            }
            this.f2779f = gVar.f1677d;
            return true;
        }
        return false;
    }

    public void g(int i) {
        com.applovin.exoplayer2.l.a.a(i > 0);
        this.f2781h = i;
    }

    public long i() {
        return this.f1677d;
    }

    public long j() {
        return this.f2779f;
    }

    public int k() {
        return this.f2780g;
    }

    public boolean l() {
        return this.f2780g > 0;
    }
}
