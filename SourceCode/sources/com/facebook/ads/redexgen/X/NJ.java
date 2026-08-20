package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import java.util.HashMap;
/* loaded from: assets/audience_network.dex */
public final class NJ {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.2L] */
    public static C2L A00(final C0958Nm c0958Nm, final C1115Tp c1115Tp, final String str, final C06179g c06179g) {
        return new C9D(c0958Nm, c1115Tp, true, str, c06179g) { // from class: com.facebook.ads.redexgen.X.2L
            @Nullable
            public View$OnClickListenerC1075Sa A00;
            @Nullable
            public C0984On A01;
            public final InterfaceC0821Ia A02 = this.A0I.A05().A01().A09();
            public final C1115Tp A03;
            public final C06179g A04;
            public final String A05;
            public static final int A07 = (int) (Kk.A02 * (-4.0f));
            public static final int A06 = (int) (Kk.A02 * 6.0f);

            {
                this.A03 = c1115Tp;
                this.A05 = str;
                this.A04 = c06179g;
                this.A03.A1K(this);
            }

            @Override // com.facebook.ads.redexgen.X.SF
            public void setupNativeCtaExtension(C0984On c0984On) {
                this.A01 = c0984On;
                int A0L = IK.A0L(this.A0I.A05());
                C1L A01 = this.A03.A0z().A0g().A01();
                this.A00 = new View$OnClickListenerC1075Sa(this.A0I.A05(), this.A03.A0z().A0G(), A01, this.A02, C0944My.getDummyListener(), this.A04.A0c(), this.A03.A19());
                this.A00.setCta(c0984On.A03().A0F(), this.A05, new HashMap());
                this.A03.A1K(this.A00);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (A0L == 1) {
                    layoutParams.addRule(12);
                    View$OnClickListenerC1075Sa view$OnClickListenerC1075Sa = this.A00;
                    int i = A06;
                    int extensionVariant = A01.A09(false);
                    LL.A0P(view$OnClickListenerC1075Sa, i, 5, extensionVariant);
                    ((C9D) this).A06.addView(this.A00, layoutParams);
                } else if (A0L != 2) {
                } else {
                    int extensionVariant2 = ((C9D) this).A06.getId();
                    layoutParams.addRule(3, extensionVariant2);
                    int extensionVariant3 = A07;
                    layoutParams.setMargins(0, extensionVariant3, 0, 0);
                    addView(this.A00, 0, layoutParams);
                    ((C9D) this).A06.bringToFront();
                }
            }
        };
    }

    public static C9D A01(C0958Nm c0958Nm, String str, C1052Rd c1052Rd) {
        return new C9D(c0958Nm, true, str, c1052Rd);
    }
}
