package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class F5 extends AbstractC1269Zt {
    public final C1203Xc A00;
    public final J0 A01;

    public F5(C1203Xc c1203Xc, AnonymousClass19 anonymousClass19, List<C1115Tp> list, @Nullable J0 j0) {
        super(anonymousClass19, list, c1203Xc);
        this.A00 = c1203Xc;
        this.A01 = j0 == null ? new J0() : j0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4N
    /* renamed from: A01 */
    public final TF A0C(ViewGroup viewGroup, int i) {
        return new TF(new C0905Ll(this.A00, this.A01));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1269Zt, com.facebook.ads.redexgen.X.C4N
    /* renamed from: A0H */
    public final void A0E(TF tf, int i) {
        super.A0E(tf, i);
        C0905Ll c0905Ll = (C0905Ll) tf.A0l();
        A0F(c0905Ll.getImageCardView(), i);
        if (((AbstractC1269Zt) this).A01.get(i) != null) {
            c0905Ll.setTitle(((AbstractC1269Zt) this).A01.get(i).getAdHeadline());
            c0905Ll.setSubtitle(((AbstractC1269Zt) this).A01.get(i).getAdLinkDescription());
            c0905Ll.setButtonText(((AbstractC1269Zt) this).A01.get(i).getAdCallToAction());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(c0905Ll);
        ((AbstractC1269Zt) this).A01.get(i).A1O(c0905Ll, c0905Ll, arrayList);
    }
}
