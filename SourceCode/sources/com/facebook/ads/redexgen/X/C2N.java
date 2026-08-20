package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.2N  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C2N extends AbstractC0652Aq {
    public final int A00;
    public final int A01;
    public final InterfaceC0790Gt<? super GX> A02;
    public final String A03;
    public final boolean A04;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Gt != com.facebook.ads.internal.exoplayer2.thirdparty.upstream.TransferListener<? super com.facebook.ads.internal.exoplayer2.thirdparty.upstream.DataSource> */
    public C2N(String str, InterfaceC0790Gt<? super GX> interfaceC0790Gt) {
        this(str, interfaceC0790Gt, 8000, 8000, false);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Gt != com.facebook.ads.internal.exoplayer2.thirdparty.upstream.TransferListener<? super com.facebook.ads.internal.exoplayer2.thirdparty.upstream.DataSource> */
    public C2N(String str, InterfaceC0790Gt<? super GX> interfaceC0790Gt, int i, int i2, boolean z) {
        this.A03 = str;
        this.A02 = interfaceC0790Gt;
        this.A00 = i;
        this.A01 = i2;
        this.A04 = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0652Aq
    /* renamed from: A00 */
    public final C0654As A01(C0779Gi c0779Gi) {
        return new C0654As(this.A03, null, this.A02, this.A00, this.A01, this.A04, c0779Gi);
    }
}
