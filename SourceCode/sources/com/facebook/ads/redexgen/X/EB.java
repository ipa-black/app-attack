package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
/* loaded from: assets/audience_network.dex */
public class EB extends C1230Yd {
    public final /* synthetic */ EA A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EB(EA ea, Context context) {
        super(context);
        this.A00 = ea;
    }

    @Override // com.facebook.ads.redexgen.X.C1230Yd, com.facebook.ads.redexgen.X.AbstractC05044m
    public final void A0I(View view, C05064o c05064o, C05024k c05024k) {
        EA ea = this.A00;
        int[] A0H = ea.A0H(((YO) ea).A00.getLayoutManager(), view);
        int time = A0H[0];
        int dy = A0H[1];
        int dx = A0M(Math.max(Math.abs(time), Math.abs(dy)));
        if (dx > 0) {
            c05024k.A04(time, dy, dx, ((C1230Yd) this).A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1230Yd
    public final float A0J(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // com.facebook.ads.redexgen.X.C1230Yd
    public final int A0L(int i) {
        return Math.min(100, super.A0L(i));
    }
}
