package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ng  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0952Ng {
    public static final int A00 = Kk.A03.heightPixels;
    public static final int A01 = Kk.A03.widthPixels;

    public static float A00(C1C c1c) {
        int height = c1c.A0D().A01();
        int width = c1c.A0D().A00();
        if (width > 0) {
            return height / width;
        }
        return -1.0f;
    }

    public static int A01(double d2) {
        int availableWidth = (int) ((A01 - (AbstractC0954Ni.A07 * 2)) / d2);
        return availableWidth;
    }

    public static int A02(int bottomMargin) {
        int ctaMargin = LL.A01(16);
        int ctaTextHeight = NM.A0A;
        int ctaSpacing = ctaTextHeight * 2;
        int ctaTextHeight2 = AbstractC0954Ni.A07;
        int ctaMargin2 = ctaMargin + ctaSpacing + (ctaTextHeight2 * 2);
        int ctaTextHeight3 = A00;
        return (ctaTextHeight3 - bottomMargin) - ctaMargin2;
    }

    public static View.OnClickListener A03(View$OnClickListenerC1075Sa view$OnClickListenerC1075Sa, String str) {
        return new View$OnClickListenerC0951Nf(view$OnClickListenerC1075Sa, str);
    }

    public static boolean A04(double d2) {
        return d2 < 0.9d;
    }

    public static boolean A05(double d2, int i) {
        return A02(i) < A01(d2);
    }

    public static boolean A06(int i, int i2, double d2) {
        return i == 2 || A05(d2, i2);
    }
}
