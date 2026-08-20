package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Wp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1190Wp implements InterfaceC0636Aa {
    public final C1184Wj A00 = new C1184Wj();
    public final C1183Wi A01 = new C1183Wi();
    public final AE[] A02;

    public C1190Wp(AE... aeArr) {
        this.A02 = (AE[]) Arrays.copyOf(aeArr, aeArr.length + 2);
        AE[] aeArr2 = this.A02;
        aeArr2[aeArr.length] = this.A00;
        aeArr2[aeArr.length + 1] = this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0636Aa
    public final C06119a A3R(C06119a c06119a) {
        this.A00.A0B(c06119a.A02);
        return new C06119a(this.A01.A01(c06119a.A01), this.A01.A00(c06119a.A00), c06119a.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0636Aa
    public final AE[] A5n() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0636Aa
    public final long A76(long j) {
        return this.A01.A02(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0636Aa
    public final long A7h() {
        return this.A00.A0A();
    }
}
