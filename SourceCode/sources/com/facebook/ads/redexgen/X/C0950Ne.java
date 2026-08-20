package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.facebook.ads.redexgen.X.Ne  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0950Ne {
    public static final int A00 = LL.A00();

    public static void A00(C1203Xc c1203Xc, ViewGroup viewGroup, String str) {
        new AsyncTaskC1080Sf(viewGroup, c1203Xc).A07(str);
        View view = new View(c1203Xc);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LL.A0R(view, c1203Xc);
        viewGroup.addView(view, 0);
    }
}
