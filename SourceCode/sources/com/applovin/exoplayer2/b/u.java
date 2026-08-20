package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class u extends l {

    /* renamed from: d  reason: collision with root package name */
    private final long f1590d;

    /* renamed from: e  reason: collision with root package name */
    private final long f1591e;

    /* renamed from: f  reason: collision with root package name */
    private final short f1592f;

    /* renamed from: g  reason: collision with root package name */
    private int f1593g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1594h;
    private byte[] i;
    private byte[] j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private long o;

    public u() {
        this(SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US, 20000L, SilenceSkippingAudioProcessor.DEFAULT_SILENCE_THRESHOLD_LEVEL);
    }

    public u(long j, long j2, short s) {
        com.applovin.exoplayer2.l.a.a(j2 <= j);
        this.f1590d = j;
        this.f1591e = j2;
        this.f1592f = s;
        this.i = ai.f3786f;
        this.j = ai.f3786f;
    }

    private int a(long j) {
        return (int) ((j * this.f1521b.f1485b) / 1000000);
    }

    private void a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.m);
        int i2 = this.m - min;
        System.arraycopy(bArr, i - i2, this.j, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.j, i2, min);
    }

    private void a(byte[] bArr, int i) {
        a(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.n = true;
        }
    }

    private void b(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.i.length));
        int g2 = g(byteBuffer);
        if (g2 == byteBuffer.position()) {
            this.k = 1;
        } else {
            byteBuffer.limit(g2);
            e(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private void c(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int f2 = f(byteBuffer);
        int position = f2 - byteBuffer.position();
        byte[] bArr = this.i;
        int length = bArr.length;
        int i = this.l;
        int i2 = length - i;
        if (f2 < limit && position < i2) {
            a(bArr, i);
            this.l = 0;
            this.k = 0;
            return;
        }
        int min = Math.min(position, i2);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.i, this.l, min);
        int i3 = this.l + min;
        this.l = i3;
        byte[] bArr2 = this.i;
        if (i3 == bArr2.length) {
            if (this.n) {
                a(bArr2, this.m);
                this.o += (this.l - (this.m * 2)) / this.f1593g;
            } else {
                this.o += (i3 - this.m) / this.f1593g;
            }
            a(byteBuffer, this.i, this.l);
            this.l = 0;
            this.k = 2;
        }
        byteBuffer.limit(limit);
    }

    private void d(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int f2 = f(byteBuffer);
        byteBuffer.limit(f2);
        this.o += byteBuffer.remaining() / this.f1593g;
        a(byteBuffer, this.j, this.m);
        if (f2 < limit) {
            a(this.j, this.m);
            this.k = 0;
            byteBuffer.limit(limit);
        }
    }

    private void e(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        a(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.n = true;
        }
    }

    private int f(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.f1592f) {
                int i = this.f1593g;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    private int g(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        while (true) {
            limit -= 2;
            if (limit < byteBuffer.position()) {
                return byteBuffer.position();
            }
            if (Math.abs((int) byteBuffer.getShort(limit)) > this.f1592f) {
                int i = this.f1593g;
                return ((limit / i) * i) + i;
            }
        }
    }

    @Override // com.applovin.exoplayer2.b.f
    public void a(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !g()) {
            int i = this.k;
            if (i == 0) {
                b(byteBuffer);
            } else if (i == 1) {
                c(byteBuffer);
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                d(byteBuffer);
            }
        }
    }

    public void a(boolean z) {
        this.f1594h = z;
    }

    @Override // com.applovin.exoplayer2.b.l, com.applovin.exoplayer2.b.f
    public boolean a() {
        return this.f1594h;
    }

    @Override // com.applovin.exoplayer2.b.l
    public f.a b(f.a aVar) throws f.b {
        if (aVar.f1487d == 2) {
            return this.f1594h ? aVar : f.a.f1484a;
        }
        throw new f.b(aVar);
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void h() {
        int i = this.l;
        if (i > 0) {
            a(this.i, i);
        }
        if (this.n) {
            return;
        }
        this.o += this.m / this.f1593g;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void i() {
        if (this.f1594h) {
            this.f1593g = this.f1521b.f1488e;
            int a2 = a(this.f1590d) * this.f1593g;
            if (this.i.length != a2) {
                this.i = new byte[a2];
            }
            int a3 = a(this.f1591e) * this.f1593g;
            this.m = a3;
            if (this.j.length != a3) {
                this.j = new byte[a3];
            }
        }
        this.k = 0;
        this.o = 0L;
        this.l = 0;
        this.n = false;
    }

    @Override // com.applovin.exoplayer2.b.l
    protected void j() {
        this.f1594h = false;
        this.m = 0;
        this.i = ai.f3786f;
        this.j = ai.f3786f;
    }

    public long k() {
        return this.o;
    }
}
