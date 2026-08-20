package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
/* renamed from: com.facebook.ads.redexgen.X.Sr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1092Sr implements InterfaceC0941Mv {
    public final /* synthetic */ C0932Mm A00;

    public C1092Sr(C0932Mm c0932Mm) {
        this.A00 = c0932Mm;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Mv
    public final void AAM(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        z2 = this.A00.A07;
        if (z2) {
            imageView = this.A00.A00;
            if (imageView != null) {
                imageView2 = this.A00.A00;
                imageView2.setEnabled(z);
                imageView3 = this.A00.A00;
                imageView3.setAlpha(z ? 1.0f : 0.3f);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Mv
    public final void AB2(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        z2 = this.A00.A07;
        if (z2) {
            imageView = this.A00.A02;
            if (imageView != null) {
                imageView2 = this.A00.A02;
                imageView2.setEnabled(z);
                imageView3 = this.A00.A02;
                imageView3.setAlpha(z ? 1.0f : 0.3f);
            }
        }
    }
}
