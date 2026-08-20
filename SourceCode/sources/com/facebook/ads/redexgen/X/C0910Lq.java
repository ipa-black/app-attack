package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;
/* renamed from: com.facebook.ads.redexgen.X.Lq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0910Lq extends AdNativeComponentView {
    public static final int A01 = (int) (Kk.A02 * 1.0f);
    public final ImageView A00;

    public C0910Lq(C1203Xc c1203Xc) {
        super(c1203Xc);
        this.A00 = new M2(c1203Xc);
        this.A00.setScaleType(ImageView.ScaleType.CENTER_CROP);
        EnumC0883Kp.A04(this.A00, EnumC0883Kp.A0A);
        addView(this.A00, new ViewGroup.LayoutParams(-1, -1));
        LL.A0M(this.A00, -2130706433);
        int i = A01;
        setPadding(i, i, i, i);
    }

    @Override // com.facebook.ads.internal.api.AdNativeComponentView
    public View getAdContentsView() {
        return this.A00;
    }

    public ImageView getImageCardView() {
        return this.A00;
    }
}
