package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
/* renamed from: com.facebook.ads.redexgen.X.aF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1291aF implements InterfaceC05295l {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C1286aA A01;
    public final /* synthetic */ C1286aA A02;
    public final /* synthetic */ C8B A03;

    public C1291aF(C1286aA c1286aA, int i, C8B c8b, C1286aA c1286aA2) {
        this.A01 = c1286aA;
        this.A00 = i;
        this.A03 = c8b;
        this.A02 = c1286aA2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAD() {
        this.A01.A0B(this.A00, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAE() {
        InterfaceC04120v interfaceC04120v;
        interfaceC04120v = this.A01.A00;
        interfaceC04120v.ABP(this.A02, JA.A00(AdErrorType.NO_FILL));
    }
}
