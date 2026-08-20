package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.e.x;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class g implements x {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f2236a = new byte[4096];

    @Override // com.applovin.exoplayer2.e.x
    public int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z, int i2) throws IOException {
        int a2 = gVar.a(this.f2236a, 0, Math.min(this.f2236a.length, i));
        if (a2 == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return a2;
    }

    @Override // com.applovin.exoplayer2.e.x
    public void a(long j, int i, int i2, int i3, x.a aVar) {
    }

    @Override // com.applovin.exoplayer2.e.x
    public void a(com.applovin.exoplayer2.l.y yVar, int i, int i2) {
        yVar.e(i);
    }

    @Override // com.applovin.exoplayer2.e.x
    public void a(com.applovin.exoplayer2.v vVar) {
    }
}
