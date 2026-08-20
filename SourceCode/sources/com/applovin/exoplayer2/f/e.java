package com.applovin.exoplayer2.f;

import com.applovin.exoplayer2.b.r;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.v;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private long f2782a;

    /* renamed from: b  reason: collision with root package name */
    private long f2783b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2784c;

    private long a(long j) {
        return this.f2782a + Math.max(0L, ((this.f2783b - 529) * 1000000) / j);
    }

    public long a(v vVar) {
        return a(vVar.z);
    }

    public long a(v vVar, com.applovin.exoplayer2.c.g gVar) {
        if (this.f2783b == 0) {
            this.f2782a = gVar.f1677d;
        }
        if (this.f2784c) {
            return gVar.f1677d;
        }
        ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.b(gVar.f1675b);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int b2 = r.b(i);
        if (b2 != -1) {
            long a2 = a(vVar.z);
            this.f2783b += b2;
            return a2;
        }
        this.f2784c = true;
        this.f2783b = 0L;
        this.f2782a = gVar.f1677d;
        q.c("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
        return gVar.f1677d;
    }

    public void a() {
        this.f2782a = 0L;
        this.f2783b = 0L;
        this.f2784c = false;
    }
}
