package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
/* renamed from: com.facebook.ads.redexgen.X.Om  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0983Om extends LinearLayout {
    public static final int A04 = (int) (Kk.A02 * 32.0f);
    public static final int A05 = (int) (Kk.A02 * 8.0f);
    public TextView A00;
    public TextView A01;
    public NU A02;
    public final C1203Xc A03;

    public C0983Om(C1203Xc c1203Xc) {
        super(c1203Xc);
        this.A03 = c1203Xc;
        A00(c1203Xc);
    }

    private final void A00(C1203Xc c1203Xc) {
        setGravity(16);
        this.A02 = new NU(c1203Xc);
        this.A02.setFullCircleCorners(true);
        int i = A04;
        LinearLayout.LayoutParams pageImageViewParams = new LinearLayout.LayoutParams(i, i);
        pageImageViewParams.setMargins(0, 0, A05, 0);
        addView(this.A02, pageImageViewParams);
        LinearLayout pageInfoView = new LinearLayout(c1203Xc);
        pageInfoView.setOrientation(1);
        this.A00 = new TextView(c1203Xc);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LL.A0X(this.A00, true, 16);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setSingleLine(true);
        this.A01 = new TextView(c1203Xc);
        LL.A0X(this.A01, false, 14);
        pageInfoView.addView(this.A00);
        pageInfoView.addView(this.A01);
        addView(pageInfoView, layoutParams);
    }

    public final void A01(int i, int i2) {
        this.A00.setTextColor(i);
        this.A01.setTextColor(i2);
    }

    public void setPageDetails(C1V c1v) {
        AsyncTaskC1080Sf asyncTaskC1080Sf = new AsyncTaskC1080Sf(this.A02, this.A03);
        int i = A04;
        asyncTaskC1080Sf.A05(i, i);
        asyncTaskC1080Sf.A07(c1v.A01());
        this.A00.setText(c1v.A02());
        this.A01.setText(c1v.A03());
    }
}
