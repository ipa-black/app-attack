package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.a6  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1282a6 implements C6E {
    public final /* synthetic */ F6 A00;

    public C1282a6(F6 f6) {
        this.A00 = f6;
    }

    private void A00(boolean z) {
        AnonymousClass14 anonymousClass14;
        AtomicBoolean atomicBoolean;
        AnonymousClass14 anonymousClass142;
        if (!z) {
            anonymousClass14 = this.A00.A01;
            anonymousClass14.ACT(this.A00, AdError.CACHE_ERROR);
            return;
        }
        atomicBoolean = this.A00.A0C;
        atomicBoolean.set(true);
        anonymousClass142 = this.A00.A01;
        anonymousClass142.ACQ(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.C6E
    public final void AAT() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.C6E
    public final void AAb() {
        A00(true);
    }
}
