package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public final class HC implements InterfaceC1039Qq {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1039Qq
    public final long A4i() {
        return System.nanoTime();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1039Qq
    public final void AFK(Object obj, long j) throws InterruptedException {
        obj.wait(j);
    }
}
