package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.a4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1280a4 implements InterfaceC05295l {
    public final /* synthetic */ F6 A00;
    public final /* synthetic */ boolean A01;

    public C1280a4(F6 f6, boolean z) {
        this.A00 = f6;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAD() {
        C1203Xc c1203Xc;
        AtomicBoolean atomicBoolean;
        AnonymousClass14 anonymousClass14;
        C1203Xc c1203Xc2;
        C1B c1b;
        c1203Xc = this.A00.A04;
        if (!IK.A1L(c1203Xc) || !this.A01) {
            atomicBoolean = this.A00.A0C;
            atomicBoolean.set(true);
            anonymousClass14 = this.A00.A01;
            anonymousClass14.ACQ(this.A00);
            return;
        }
        F6 f6 = this.A00;
        c1203Xc2 = f6.A04;
        c1b = this.A00.A03;
        f6.A06 = ON.A01(c1203Xc2, (C0743Eu) c1b, 0, new C1281a5(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAE() {
        AnonymousClass14 anonymousClass14;
        anonymousClass14 = this.A00.A01;
        anonymousClass14.ACT(this.A00, AdError.CACHE_ERROR);
    }
}
