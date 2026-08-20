package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Ug  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1132Ug implements GW {
    public final InterfaceC0790Gt<? super C1133Uh> A00;

    public C1132Ug() {
        this(null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Gt != com.facebook.ads.internal.exoplayer2.thirdparty.upstream.TransferListener<? super com.facebook.ads.internal.exoplayer2.thirdparty.upstream.FileDataSource> */
    public C1132Ug(InterfaceC0790Gt<? super C1133Uh> interfaceC0790Gt) {
        this.A00 = interfaceC0790Gt;
    }

    @Override // com.facebook.ads.redexgen.X.GW
    public final GX A4H() {
        return new C1133Uh(this.A00);
    }
}
