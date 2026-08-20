package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.widget.EdgeEffect;
/* renamed from: com.facebook.ads.redexgen.X.3o  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04813o {
    public static final C04803n A00;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            A00 = new C1234Yh();
        } else {
            A00 = new C04803n();
        }
    }

    public static void A00(EdgeEffect edgeEffect, float f2, float f3) {
        A00.A00(edgeEffect, f2, f3);
    }
}
