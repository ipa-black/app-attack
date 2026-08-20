package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
/* loaded from: assets/audience_network.dex */
public final class MG extends RelativeLayout {
    public final int A00;
    public final int A01;
    public final C2D A02;
    public final C1203Xc A03;
    public final MJ A04;
    public final boolean A05;
    public static final int A09 = (int) (Kk.A02 * 16.0f);
    public static final int A0A = (int) (Kk.A02 * 8.0f);
    public static final int A0D = (int) (Kk.A02 * 44.0f);
    public static final int A08 = (int) (Kk.A02 * 10.0f);
    public static final int A07 = A09 - A08;
    public static final int A0E = (int) (Kk.A02 * 75.0f);
    public static final int A0B = (int) (Kk.A02 * 25.0f);
    public static final int A0F = (int) (Kk.A02 * 45.0f);
    public static final int A0C = (int) (Kk.A02 * 15.0f);
    public static final int A06 = (int) (Kk.A02 * 16.0f);

    public MG(MF mf) {
        super(MF.A01(mf));
        this.A03 = MF.A01(mf);
        this.A02 = C2E.A00(this.A03.A01());
        this.A04 = MF.A03(mf);
        this.A01 = MF.A09(mf) ? A0E : A0F;
        this.A00 = MF.A09(mf) ? A0B : A0C;
        this.A05 = MF.A0A(mf);
        setFocusable(true);
        View A01 = A01(mf);
        View A00 = A00(mf);
        View footerView = getFooterView();
        LL.A0K(A01);
        LL.A0K(A00);
        LL.A0K(footerView);
        RelativeLayout.LayoutParams footerParams = new RelativeLayout.LayoutParams(-1, -2);
        footerParams.addRule(10);
        RelativeLayout.LayoutParams headerParams = new RelativeLayout.LayoutParams(-1, -1);
        headerParams.addRule(13);
        headerParams.addRule(3, A01.getId());
        headerParams.addRule(2, footerView.getId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        int i = A09;
        layoutParams.setMargins(i, 0, i, i);
        addView(A01, footerParams);
        addView(A00, headerParams);
        addView(footerView, layoutParams);
        footerView.setVisibility(MF.A0B(mf) ? 0 : 8);
    }

    public /* synthetic */ MG(MF mf, MD md) {
        this(mf);
    }

    private View A00(MF mf) {
        ImageView imageView = new ImageView(getContext());
        int i = this.A00;
        imageView.setPadding(i, i, i, i);
        imageView.setImageBitmap(LU.A01(MF.A02(mf)));
        imageView.setColorFilter(-1);
        int i2 = this.A01;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(MF.A00(mf));
        LL.A0S(imageView, gradientDrawable);
        layoutParams.gravity = 17;
        int i3 = A09;
        layoutParams.setMargins(i3, 0, i3, i3);
        TextView textView = new TextView(getContext());
        LL.A0X(textView, true, 20);
        textView.setTextColor(-14934495);
        textView.setText(MF.A04(mf));
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        int i4 = A09;
        layoutParams2.setMargins(i4, 0, i4, i4);
        TextView textView2 = new TextView(getContext());
        LL.A0X(textView2, false, 16);
        textView2.setTextColor(-10459280);
        textView2.setText(MF.A05(mf));
        textView2.setGravity(17);
        LinearLayout.LayoutParams subtitleParams = new LinearLayout.LayoutParams(-1, -2);
        int i5 = A09;
        subtitleParams.setMargins(i5, 0, i5, i5);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        linearLayout.addView(textView2, subtitleParams);
        if (MF.A08(mf)) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            if (!TextUtils.isEmpty(MF.A06(mf))) {
                NU nu = new NU(this.A03);
                int i6 = A0F;
                LinearLayout.LayoutParams subtitleParams2 = new LinearLayout.LayoutParams(i6, i6);
                subtitleParams2.setMargins(0, 0, A0A, 0);
                nu.setFullCircleCorners(true);
                AsyncTaskC1080Sf asyncTaskC1080Sf = new AsyncTaskC1080Sf(nu, this.A03);
                int i7 = A0F;
                asyncTaskC1080Sf.A05(i7, i7).A07(MF.A06(mf));
                linearLayout2.addView(nu, subtitleParams2);
            }
            ML ml = new ML(this.A03);
            ml.setData(MF.A07(mf), LT.CHECKMARK);
            ml.setSelected(true);
            linearLayout2.addView(ml, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }

    private View A01(MF mf) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        if (MF.A0C(mf)) {
            ImageView imageView = new ImageView(getContext());
            int i = A08;
            imageView.setPadding(i, i, i, i);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setImageBitmap(LU.A01(LT.CROSS));
            imageView.setOnClickListener(new MD(this));
            int i2 = A0D;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
            int i3 = A07;
            layoutParams.setMargins(i3, i3, i3, i3);
            linearLayout.addView(imageView, layoutParams);
        }
        return linearLayout;
    }

    private View getFooterView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(LU.A01(LT.SETTINGS));
        imageView.setColorFilter(-13272859);
        int i = A06;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        layoutParams.gravity = 17;
        TextView managePrefsText = new TextView(getContext());
        LL.A0X(managePrefsText, false, 16);
        managePrefsText.setTextColor(-13272859);
        int i2 = A0A;
        managePrefsText.setPadding(i2, i2, i2, i2);
        managePrefsText.setText(this.A02.A0J());
        LinearLayout.LayoutParams settingsIconParams = new LinearLayout.LayoutParams(-2, -2);
        settingsIconParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new ME(this));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(managePrefsText, settingsIconParams);
        return linearLayout;
    }
}
