package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class F4 extends AbstractC1269Zt {
    public final C1203Xc A00;

    public F4(AnonymousClass19 anonymousClass19, List<C1115Tp> list, C1203Xc c1203Xc) {
        super(anonymousClass19, list, c1203Xc);
        this.A00 = c1203Xc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4N
    /* renamed from: A01 */
    public final TF A0C(ViewGroup viewGroup, int i) {
        return new TF(new C0910Lq(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1269Zt, com.facebook.ads.redexgen.X.C4N
    /* renamed from: A0H */
    public final void A0E(TF tf, int i) {
        super.A0E(tf, i);
        C0910Lq c0910Lq = (C0910Lq) tf.A0l();
        M2 imageView = (M2) c0910Lq.getImageCardView();
        imageView.setImageDrawable(null);
        A0F(imageView, i);
        C1115Tp childAd = ((AbstractC1269Zt) this).A01.get(i);
        childAd.A11().A0G(this.A00);
        childAd.A1N(c0910Lq, c0910Lq);
    }
}
