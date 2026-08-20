package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.Se  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1079Se extends C2P {
    public static byte[] A07;
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public final LinearLayout A00;
    public final RelativeLayout A01;
    public final AbstractC1268Zs A02;
    public final C1203Xc A03;
    public final InterfaceC0821Ia A04;
    public final LD A05;
    public final InterfaceC0903Lj A06;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 50);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A05() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A03);
        NU nu = new NU(this.A03);
        AsyncTaskC1080Sf asyncTaskC1080Sf = new AsyncTaskC1080Sf(nu, this.A03);
        int i = A0C;
        asyncTaskC1080Sf.A05(i, i).A07(this.A02.A0k().A01());
        nu.setFullCircleCorners(true);
        LL.A0M(nu, 0);
        LL.A0K(nu);
        int i2 = A0C;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
        int i3 = A0B;
        layoutParams.setMargins(i3, i3, i3, i3);
        layoutParams.addRule(14);
        relativeLayout.addView(nu, layoutParams);
        TextView textView = new TextView(this.A03);
        LL.A0K(textView);
        textView.setTextColor(this.A02.A0g().A01().A06(true));
        textView.setText(this.A02.A0h().A0E().A06());
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(3, nu.getId());
        relativeLayout.addView(textView, layoutParams2);
        LinearLayout linearLayout = new LinearLayout(this.A03);
        LL.A0K(linearLayout);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        int i4 = A0B;
        layoutParams3.setMargins(i4, 0, i4, i4);
        layoutParams3.addRule(14);
        layoutParams3.addRule(3, textView.getId());
        relativeLayout.addView(linearLayout, layoutParams3);
        NW nw = new NW(this.A03, A0A, 5, A09, -1);
        nw.setGravity(16);
        linearLayout.addView(nw, new LinearLayout.LayoutParams(-2, -1));
        TextView textView2 = new TextView(this.A03);
        textView2.setTextColor(this.A02.A0g().A01().A06(true));
        textView2.setGravity(16);
        textView2.setIncludeFontPadding(false);
        LL.A0X(textView2, false, 14);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.leftMargin = A08;
        linearLayout.addView(textView2, layoutParams4);
        if (TextUtils.isEmpty(this.A02.A0h().A0E().A03())) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
            nw.setRating(Float.parseFloat(this.A02.A0h().A0E().A03()));
            if (this.A02.A0h().A0E().A02() != null) {
                textView2.setText(A03(0, 1, 20) + NumberFormat.getNumberInstance().format(Integer.parseInt(this.A02.A0h().A0E().A02())) + A03(1, 1, 41));
            }
        }
        TextView textView3 = new TextView(this.A03);
        textView3.setTextColor(this.A02.A0g().A01().A06(true));
        textView3.setText(this.A02.A0h().A0E().A01());
        textView3.setGravity(17);
        int i5 = A0B;
        textView3.setPadding(i5, i5, i5, i5);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(14);
        layoutParams5.addRule(3, linearLayout.getId());
        relativeLayout.addView(textView3, layoutParams5);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams6.gravity = 4;
        layoutParams6.weight = 0.8f;
        this.A00.addView(relativeLayout, layoutParams6);
    }

    public static void A06() {
        A07 = new byte[]{110, -124};
    }

    static {
        A06();
        A0B = (int) (C2P.A08 * 12.0f);
        A0C = (int) (C2P.A08 * 84.0f);
        A0A = (int) (C2P.A08 * 14.0f);
        A08 = (int) (C2P.A08 * 8.0f);
        A09 = C04432a.A01(-1, 77);
    }

    public C1079Se(C1203Xc c1203Xc, AbstractC1268Zs abstractC1268Zs, InterfaceC0821Ia interfaceC0821Ia, InterfaceC0903Lj interfaceC0903Lj) {
        super(c1203Xc);
        this.A05 = new LD();
        this.A03 = c1203Xc;
        this.A02 = abstractC1268Zs;
        this.A04 = interfaceC0821Ia;
        this.A06 = interfaceC0903Lj;
        this.A05.A05();
        setRadius(20.0f);
        setMaxCardElevation(75.0f);
        this.A01 = new RelativeLayout(c1203Xc);
        C0950Ne.A00(c1203Xc, this.A01, abstractC1268Zs.A0h().A0D().A07());
        this.A00 = new LinearLayout(this.A03);
        this.A00.setOrientation(1);
        A05();
        A04();
        this.A01.addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A04() {
        View$OnClickListenerC1075Sa view$OnClickListenerC1075Sa = new View$OnClickListenerC1075Sa(this.A03, PN.A04.A02(), this.A02.A0g().A01(), this.A02.A0h().A0F().A06(), this.A04, this.A06, null, this.A05);
        view$OnClickListenerC1075Sa.setViewShowsOverMedia(true);
        LL.A0G(1001, view$OnClickListenerC1075Sa);
        view$OnClickListenerC1075Sa.setCta(this.A02.A0h().A0F(), this.A02.A0m(), new HashMap(), null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int i = A0B;
        view$OnClickListenerC1075Sa.setPadding(i, i, i, i);
        int i2 = A0B;
        layoutParams.setMargins(i2, i2, i2, i2 * 2);
        this.A00.addView(view$OnClickListenerC1075Sa, layoutParams);
    }
}
