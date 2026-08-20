package com.facebook.ads.redexgen.X;

import java.util.Comparator;
import java.util.TreeSet;
/* renamed from: com.facebook.ads.redexgen.X.Ai  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0644Ai implements US, Comparator<H1> {
    public long A00;
    public final long A01;
    public final TreeSet<H1> A02 = new TreeSet<>(this);

    public C0644Ai(long j) {
        this.A01 = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* renamed from: A00 */
    public final int compare(H1 h1, H1 h12) {
        if (h1.A00 - h12.A00 == 0) {
            return h1.compareTo(h12);
        }
        return h1.A00 < h12.A00 ? -1 : 1;
    }

    private void A01(InterfaceC0794Gx interfaceC0794Gx, long j) {
        while (this.A00 + j > this.A01 && !this.A02.isEmpty()) {
            try {
                interfaceC0794Gx.AEF(this.A02.first());
            } catch (C0792Gv unused) {
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0793Gw
    public final void ACc(InterfaceC0794Gx interfaceC0794Gx, H1 h1) {
        this.A02.add(h1);
        this.A00 += h1.A01;
        A01(interfaceC0794Gx, 0L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0793Gw
    public final void ACd(InterfaceC0794Gx interfaceC0794Gx, H1 h1) {
        this.A02.remove(h1);
        this.A00 -= h1.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0793Gw
    public final void ACe(InterfaceC0794Gx interfaceC0794Gx, H1 h1, H1 h12) {
        ACd(interfaceC0794Gx, h1);
        ACc(interfaceC0794Gx, h12);
    }

    @Override // com.facebook.ads.redexgen.X.US
    public final void ACf(InterfaceC0794Gx interfaceC0794Gx, String str, long j, long j2) {
        A01(interfaceC0794Gx, j2);
    }
}
