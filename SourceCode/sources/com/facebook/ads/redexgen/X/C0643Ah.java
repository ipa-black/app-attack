package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
/* renamed from: com.facebook.ads.redexgen.X.Ah  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0643Ah implements InterfaceC1114To {
    public NativeAdBase A00;
    public NativeAdListener A01;

    public C0643Ah(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        this.A01 = nativeAdListener;
        this.A00 = nativeAdBase;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0835Io
    public final void AA4() {
        C0863Js.A00(new C1110Tk(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0835Io
    public final void AA8() {
        C0863Js.A00(new C1111Tl(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0835Io
    public final void AAv(JA ja) {
        C0863Js.A00(new C1113Tn(this, ja));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0835Io
    public final void ABb() {
        C0863Js.A00(new C1109Tj(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1114To
    public final void ABg() {
        C0863Js.A00(new C1112Tm(this));
    }
}
