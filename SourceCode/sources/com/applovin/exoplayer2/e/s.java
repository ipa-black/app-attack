package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.g.e.g;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2702a = new com.applovin.exoplayer2.l.y(10);

    public com.applovin.exoplayer2.g.a a(i iVar, g.a aVar) throws IOException {
        com.applovin.exoplayer2.g.a aVar2 = null;
        int i = 0;
        while (true) {
            try {
                iVar.d(this.f2702a.d(), 0, 10);
                this.f2702a.d(0);
                if (this.f2702a.m() != 4801587) {
                    break;
                }
                this.f2702a.e(3);
                int v = this.f2702a.v();
                int i2 = v + 10;
                if (aVar2 == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.f2702a.d(), 0, bArr, 0, 10);
                    iVar.d(bArr, 10, v);
                    aVar2 = new com.applovin.exoplayer2.g.e.g(aVar).a(bArr, i2);
                } else {
                    iVar.c(v);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        iVar.a();
        iVar.c(i);
        return aVar2;
    }
}
