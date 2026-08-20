package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
/* renamed from: com.facebook.ads.redexgen.X.Oe  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0976Oe extends LinearLayout {
    @Nullable
    public LinearLayout A00;
    public final int A01;
    public final C1203Xc A02;
    public final NU A03;
    public final C0946Na A04;
    public static final int A07 = (int) (Kk.A02 * 16.0f);
    public static final int A08 = (int) (Kk.A02 * 16.0f);
    public static final int A06 = (int) (Kk.A02 * 8.0f);
    public static final int A05 = (int) (Kk.A02 * 72.0f);

    public C0976Oe(C0974Oc c0974Oc) {
        super(C0974Oc.A04(c0974Oc));
        this.A02 = C0974Oc.A04(c0974Oc);
        this.A03 = new NU(this.A02);
        this.A04 = new C0946Na(this.A02, C0974Oc.A02(c0974Oc), true, false, true);
        this.A01 = C0974Oc.A00(c0974Oc);
        A03(c0974Oc);
    }

    public /* synthetic */ C0976Oe(C0974Oc c0974Oc, C1060Rl c1060Rl) {
        this(c0974Oc);
    }

    private void A00() {
        A01(this.A03, IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED);
        A01(this.A04, 170);
        LinearLayout linearLayout = this.A00;
        if (linearLayout != null) {
            A01(linearLayout, 190);
        }
    }

    private void A01(View view, int i) {
        view.setTranslationY(i);
        view.setScaleY(0.75f);
        view.setScaleX(0.75f);
        view.animate().translationYBy(-i).scaleX(1.0f).scaleY(1.0f).setDuration(300L).setInterpolator(new DecelerateInterpolator(2.0f));
    }

    private void A02(C0974Oc c0974Oc) {
        if (!TextUtils.isEmpty(C0974Oc.A05(c0974Oc))) {
            this.A00 = new LinearLayout(getContext());
            this.A00.setGravity(17);
            LinearLayout linearLayout = this.A00;
            int i = A08;
            linearLayout.setPadding(i, i / 2, i, i / 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, A08 / 2, 0, 0);
            TextView textView = new TextView(getContext());
            textView.setTextColor(-1);
            LL.A0X(textView, false, 16);
            textView.setText(C0974Oc.A05(c0974Oc));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            ImageView imageView = new ImageView(getContext());
            new AsyncTaskC1080Sf(imageView, this.A02).A04().A07(C0974Oc.A06(c0974Oc));
            int i2 = A07;
            LinearLayout.LayoutParams informativeTextViewParams = new LinearLayout.LayoutParams(i2, i2);
            informativeTextViewParams.setMargins(0, 0, A08 / 2, 0);
            this.A00.addView(imageView, informativeTextViewParams);
            this.A00.addView(textView, layoutParams2);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(100.0f);
            gradientDrawable.setColor(469762047);
            LL.A0S(this.A00, gradientDrawable);
            addView(this.A00, layoutParams);
        }
    }

    private void A03(C0974Oc c0974Oc) {
        LL.A0M(this.A03, 0);
        this.A03.setRadius(50);
        if (C0974Oc.A01(c0974Oc).A00() == C1H.A05) {
            this.A03.setFullCircleCorners(true);
        } else {
            this.A03.setRadius(A06);
        }
        new AsyncTaskC1080Sf(this.A03, this.A02).A04().A07(C0974Oc.A03(c0974Oc).A01());
        this.A04.A03(C0974Oc.A01(c0974Oc).A06(), C0974Oc.A03(c0974Oc).A03(), null, false, true);
        this.A04.getDescriptionTextView().setAlpha(0.8f);
        this.A04.setAlignment(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i = A08;
        layoutParams.setMargins(0, i, 0, i / 2);
        View view = this.A03;
        int i2 = A05;
        LinearLayout.LayoutParams titleAndDescriptionParams = new LinearLayout.LayoutParams(i2, i2);
        addView(view, titleAndDescriptionParams);
        addView(this.A04, layoutParams);
        A02(c0974Oc);
        LL.A0M(this, -14473425);
        setGravity(17);
        setOrientation(1);
    }

    public final void A04(InterfaceC0975Od interfaceC0975Od) {
        A00();
        postDelayed(new C1060Rl(this, interfaceC0975Od), this.A01);
    }
}
