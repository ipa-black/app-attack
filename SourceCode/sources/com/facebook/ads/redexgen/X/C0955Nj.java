package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.Nj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0955Nj {
    public static AbstractC0954Ni A00(final C0958Nm c0958Nm, @Nullable Bundle bundle, boolean z) {
        AbstractC0954Ni sn;
        C1C A0h = c0958Nm.A04().A0h();
        double A00 = C0952Ng.A00(A0h);
        boolean A0N = c0958Nm.A04().A0h().A0N();
        final boolean A06 = C0952Ng.A06(c0958Nm.A00(), c0958Nm.A01(), A00);
        AbstractC03970f A002 = C03980g.A00(c0958Nm.A05(), c0958Nm.A06(), "", KT.A00(c0958Nm.A04().A0h().A0F().A05()), new HashMap());
        boolean z2 = !TextUtils.isEmpty(A0h.A0D().A08());
        if (IK.A1Q(c0958Nm.A05())) {
            c0958Nm.A05().A0A().AFp(c0958Nm.A02(), c0958Nm.A04().A0m(), z2);
        }
        if (A0N && (A002 instanceof FC)) {
            sn = new SG(c0958Nm);
        } else if (z2) {
            sn = new AnonymousClass93(c0958Nm);
        } else if (!z2 && IK.A1z(c0958Nm.A05())) {
            sn = new SR(c0958Nm, A06) { // from class: com.facebook.ads.redexgen.X.94
                public static final int A02 = Resources.getSystem().getDisplayMetrics().widthPixels;
                public final View A00;
                public final boolean A01;

                {
                    super(c0958Nm, true);
                    this.A01 = A06;
                    this.A00 = c0958Nm.A02();
                    A0g();
                    if (this.A01) {
                        addView(c0958Nm.A02(), new RelativeLayout.LayoutParams(-1, -1));
                    } else {
                        FrameLayout frameLayout = new FrameLayout(c0958Nm.A05());
                        RelativeLayout.LayoutParams insideContainerParams = new RelativeLayout.LayoutParams(-1, -1);
                        insideContainerParams.addRule(2, getAdDetailsView().getId());
                        frameLayout.setLayoutParams(insideContainerParams);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                        layoutParams.gravity = 17;
                        layoutParams.setMargins(AbstractC0954Ni.A07, 0, AbstractC0954Ni.A07, 0);
                        frameLayout.addView(this.A00, layoutParams);
                        addView(frameLayout);
                    }
                    if (this.A00 != null && IK.A13(getAdContextWrapper())) {
                        this.A00.setOnClickListener(new View$OnClickListenerC0959Nn(this));
                    }
                    getAdDetailsView().bringToFront();
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC0954Ni
                public final boolean A02() {
                    return this.A01 && super.A02();
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC0954Ni
                public final boolean A0D() {
                    return this.A01 && super.A02();
                }

                @Override // com.facebook.ads.redexgen.X.SR, com.facebook.ads.redexgen.X.AbstractC0954Ni
                public final void A0c(C1C c1c, String str, double d2, @Nullable Bundle bundle2) {
                    super.A0c(c1c, str, d2, bundle2);
                    if (!this.A01 && d2 > 0.0d) {
                        int mediaHeight = (int) ((A02 - (AbstractC0954Ni.A07 * 2)) / d2);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, mediaHeight);
                        layoutParams.gravity = 17;
                        int i = AbstractC0954Ni.A07;
                        int mediaHeight2 = AbstractC0954Ni.A07;
                        layoutParams.setMargins(i, 0, mediaHeight2, 0);
                        this.A00.setLayoutParams(layoutParams);
                    }
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC0954Ni
                public final boolean A0d() {
                    return this.A01;
                }
            };
        } else if (A06) {
            sn = new SQ(c0958Nm, c0958Nm.A00() == 2);
        } else {
            sn = new SN(c0958Nm, C0952Ng.A04(A00));
        }
        if (z) {
            sn.A0c(A0h, c0958Nm.A04().A0m(), A00, bundle);
        }
        return sn;
    }
}
