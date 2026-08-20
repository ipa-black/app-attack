package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: assets/audience_network.dex */
public final class O0 extends FrameLayout {
    public final int A00;
    public final RelativeLayout A01;
    public final View$OnClickListenerC1075Sa A02;
    public final C0958Nm A03;
    public static final int A06 = (int) (Kk.A02 * 36.0f);
    public static final int A07 = (int) (Kk.A02 * 36.0f);
    public static final int A04 = (int) (Kk.A02 * 23.0f);
    public static final int A05 = (int) (Kk.A02 * 3.0f);
    public static final int A08 = (int) (Kk.A02 * 4.0f);

    public O0(C0958Nm c0958Nm, String str, C1L c1l, NH nh) {
        super(c0958Nm.A05());
        this.A03 = c0958Nm;
        this.A00 = c1l.A08(true);
        this.A01 = new RelativeLayout(c0958Nm.A05());
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        this.A01.setClickable(false);
        A01(str);
        this.A02 = new View$OnClickListenerC1075Sa(c0958Nm.A05(), c0958Nm.A04().A0G(), null, c0958Nm.A06(), c0958Nm.A09(), c0958Nm.A0B(), c0958Nm.A07());
        this.A02.setCta(c0958Nm.A04().A0h().A0F(), c0958Nm.A04().A0m(), new HashMap(), nh);
        this.A02.setIsInAppBrowser(true);
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A00(View view) {
        ImageView imageView = new ImageView(this.A03.A05());
        imageView.setImageBitmap(LU.A01(LT.MINIMIZE_ARROW));
        imageView.setRotation(180.0f);
        imageView.setClickable(false);
        imageView.setColorFilter(this.A00);
        int i = A04;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        int i2 = A05;
        imageView.setPadding(i2, i2, i2, i2);
        layoutParams.addRule(2, view.getId());
        layoutParams.addRule(14);
        this.A01.addView(imageView, layoutParams);
    }

    private void A01(String str) {
        Button button = new Button(this.A03.A05());
        LL.A0K(button);
        int i = A07;
        button.setPadding(i, 0, i, 0);
        button.setText(str.toUpperCase(Locale.getDefault()));
        button.setTextSize(14.0f);
        button.setTypeface(Typeface.defaultFromStyle(1));
        LL.A0O(button, this.A00, A08);
        button.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout.LayoutParams ctaParams = new RelativeLayout.LayoutParams(-2, A06);
        ctaParams.addRule(12);
        ctaParams.addRule(14);
        this.A01.addView(button, ctaParams);
        A00(button);
    }

    public final void A02(String str) {
        this.A02.A09(str);
    }

    @Override // android.view.View
    public final boolean performClick() {
        return this.A02.performClick();
    }

    public void setAutoClickTime(AbstractC1268Zs abstractC1268Zs, @Nullable AbstractC0902Li abstractC0902Li) {
        this.A02.A0A(abstractC1268Zs, abstractC0902Li);
    }
}
