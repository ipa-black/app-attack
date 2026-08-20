package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.l.ai;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class x extends l {

    /* renamed from: d  reason: collision with root package name */
    private int f1610d;

    /* renamed from: e  reason: collision with root package name */
    private int f1611e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1612f;

    /* renamed from: g  reason: collision with root package name */
    private int f1613g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f1614h = ai.f3786f;
    private int i;
    private long j;

    public void a(int i, int i2) {
        this.f1610d = i;
        this.f1611e = i2;
    }

    @Override // com.applovin.exoplayer2.b.f
    public void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f1613g);
        this.j += min / this.f1521b.f1488e;
        this.f1613g -= min;
        byteBuffer.position(position + min);
        if (this.f1613g > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.i + i2) - this.f1614h.length;
        ByteBuffer a2 = a(length);
        int a3 = ai.a(length, 0, this.i);
        a2.put(this.f1614h, 0, a3);
        int a4 = ai.a(length - a3, 0, i2);
        byteBuffer.limit(byteBuffer.position() + a4);
        a2.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - a4;
        int i4 = this.i - a3;
        this.i = i4;
        byte[] bArr = this.f1614h;
        System.arraycopy(bArr, a3, bArr, 0, i4);
        byteBuffer.get(this.f1614h, this.i, i3);
        this.i += i3;
        a2.flip();
    }

    @Override // com.applovin.exoplayer2.b.l
    public f.a b(f.a aVar) throws f.b {
        if (aVar.f1487d == 2) {
            this.f1612f = true;
            return (this.f1610d == 0 && this.f1611e == 0) ? f.a.f1484a : aVar;
        }
        throw new f.b(aVar);
    }

    @Override // com.applovin.exoplayer2.b.l, com.applovin.exoplayer2.b.f
    public ByteBuffer c() {
        int i;
        if (super.d() && (i = this.i) > 0) {
            a(i).put(this.f1614h, 0, this.i).flip();
            this.i = 0;
        }
        return super.c();
    }

    @Override // com.applovin.exoplayer2.b.l, com.applovin.exoplayer2.b.f
    public boolean d() {
        return super.d() && this.i == 0;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void h() {
        int i;
        if (this.f1612f) {
            if (this.i > 0) {
                this.j += i / this.f1521b.f1488e;
            }
            this.i = 0;
        }
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void i() {
        if (this.f1612f) {
            this.f1612f = false;
            this.f1614h = new byte[this.f1611e * this.f1521b.f1488e];
            this.f1613g = this.f1610d * this.f1521b.f1488e;
        }
        this.i = 0;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void j() {
        this.f1614h = ai.f3786f;
    }

    public void k() {
        this.j = 0L;
    }

    public long l() {
        return this.j;
    }
}
