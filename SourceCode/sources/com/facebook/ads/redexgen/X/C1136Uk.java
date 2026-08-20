package com.facebook.ads.redexgen.X;

import android.content.Context;
/* renamed from: com.facebook.ads.redexgen.X.Uk  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1136Uk implements GW {
    public final Context A00;
    public final GW A01;
    public final InterfaceC0790Gt<? super GX> A02;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Gt != com.facebook.ads.internal.exoplayer2.thirdparty.upstream.TransferListener<? super com.facebook.ads.internal.exoplayer2.thirdparty.upstream.DataSource> */
    public C1136Uk(Context context, InterfaceC0790Gt<? super GX> interfaceC0790Gt, GW gw) {
        this.A00 = context.getApplicationContext();
        this.A02 = interfaceC0790Gt;
        this.A01 = gw;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Gt != com.facebook.ads.internal.exoplayer2.thirdparty.upstream.TransferListener<? super com.facebook.ads.internal.exoplayer2.thirdparty.upstream.DataSource> */
    public C1136Uk(Context context, String str, InterfaceC0790Gt<? super GX> interfaceC0790Gt) {
        this(context, interfaceC0790Gt, new C2N(str, interfaceC0790Gt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.GW
    /* renamed from: A00 */
    public final C1137Ul A4H() {
        return new C1137Ul(this.A00, this.A02, this.A01.A4H());
    }
}
