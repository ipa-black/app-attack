package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
/* loaded from: assets/audience_network.dex */
public final class RK extends NV {
    public final ImageView A00;
    public final C1203Xc A01;

    public RK(C1203Xc c1203Xc) {
        super(c1203Xc);
        this.A01 = c1203Xc;
        this.A00 = new ImageView(c1203Xc);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        AsyncTaskC1080Sf downloadImageTask = new AsyncTaskC1080Sf(this.A00, this.A01);
        downloadImageTask.A04();
        downloadImageTask.A07(str);
    }
}
