package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ag  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0642Ag extends C1230Yd {
    public final /* synthetic */ C0639Ad A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.C1230Yd
    public final int A0O(View view, int i) {
        int i2;
        C4Z A08 = A08();
        if (A08.A24()) {
            C04934a c04934a = (C04934a) view.getLayoutParams();
            int A0N = A0N(A08.A0k(view) - c04934a.leftMargin, A08.A0n(view) + c04934a.rightMargin, A08.A0e(), A08.A0h() - A08.A0f(), i);
            i2 = this.A00.A02;
            return A0N + i2;
        }
        return 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0642Ag(C0639Ad c0639Ad, C1203Xc c1203Xc) {
        super(c1203Xc);
        this.A00 = c0639Ad;
    }

    @Override // com.facebook.ads.redexgen.X.C1230Yd
    public final float A0J(DisplayMetrics displayMetrics) {
        float f2;
        f2 = this.A00.A00;
        return f2 / displayMetrics.densityDpi;
    }

    @Override // com.facebook.ads.redexgen.X.C1230Yd
    public final int A0K() {
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.C1230Yd
    public final PointF A0P(int i) {
        return this.A00.A48(i);
    }
}
