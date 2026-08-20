package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Ux  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1149Ux implements FR {
    public static final C1149Ux A01 = new C1149Ux();
    public final List<FQ> A00;

    public C1149Ux() {
        this.A00 = Collections.emptyList();
    }

    public C1149Ux(FQ fq) {
        this.A00 = Collections.singletonList(fq);
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final List<FQ> A6H(long j) {
        return j >= 0 ? this.A00 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final long A6i(int i) {
        HD.A03(i == 0);
        return 0L;
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final int A6j() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final int A7A(long j) {
        return j < 0 ? 0 : -1;
    }
}
