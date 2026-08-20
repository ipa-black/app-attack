package com.applovin.exoplayer2.g.g;

import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.x;
import com.applovin.exoplayer2.l.y;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class c extends com.applovin.exoplayer2.g.g {

    /* renamed from: a  reason: collision with root package name */
    private final y f2941a = new y();

    /* renamed from: b  reason: collision with root package name */
    private final x f2942b = new x();

    /* renamed from: c  reason: collision with root package name */
    private ag f2943c;

    @Override // com.applovin.exoplayer2.g.g
    protected com.applovin.exoplayer2.g.a a(com.applovin.exoplayer2.g.d dVar, ByteBuffer byteBuffer) {
        if (this.f2943c == null || dVar.f2858f != this.f2943c.c()) {
            ag agVar = new ag(dVar.f1677d);
            this.f2943c = agVar;
            agVar.c(dVar.f1677d - dVar.f2858f);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f2941a.a(array, limit);
        this.f2942b.a(array, limit);
        this.f2942b.b(39);
        long c2 = (this.f2942b.c(1) << 32) | this.f2942b.c(32);
        this.f2942b.b(20);
        int c3 = this.f2942b.c(12);
        int c4 = this.f2942b.c(8);
        this.f2941a.e(14);
        a.InterfaceC0042a a2 = c4 != 0 ? c4 != 255 ? c4 != 4 ? c4 != 5 ? c4 != 6 ? null : g.a(this.f2941a, c2, this.f2943c) : d.a(this.f2941a, c2, this.f2943c) : f.a(this.f2941a) : a.a(this.f2941a, c3, c2) : new e();
        return a2 == null ? new com.applovin.exoplayer2.g.a(new a.InterfaceC0042a[0]) : new com.applovin.exoplayer2.g.a(a2);
    }
}
