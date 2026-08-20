package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.CJ.tP;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes2.dex */
public class DynamicVideoView extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.Tgh {
    boolean MQ;
    TextView Qhi;
    FrameLayout cJ;

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public boolean fl() {
        return true;
    }

    public DynamicVideoView(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.MQ = false;
        this.pA = new View(context);
        this.pA.setTag(Integer.valueOf(getClickArea()));
        this.Qhi = new TextView(context);
        this.cJ = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) CQU.Qhi(context, 40.0f), (int) CQU.Qhi(context, 15.0f));
        layoutParams.gravity = BadgeDrawable.BOTTOM_END;
        layoutParams.rightMargin = 20;
        layoutParams.bottomMargin = 20;
        this.Qhi.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(25.0f);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.Qhi.setBackground(gradientDrawable);
        this.Qhi.setTextSize(10.0f);
        this.Qhi.setGravity(17);
        this.Qhi.setTextColor(-1);
        this.Qhi.setVisibility(8);
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            addView(this.cJ, new FrameLayout.LayoutParams(-1, -1));
        }
        addView(this.Qhi);
        addView(this.pA, getWidgetLayoutParams());
        if (!com.bytedance.sdk.component.adexpress.fl.cJ()) {
            addView(this.cJ, getWidgetLayoutParams());
        }
        dynamicRootView.ac = this.cJ;
        dynamicRootView.setVideoListener(this);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (hm hmVar = this.ABk; hmVar != null; hmVar = hmVar.zc()) {
            d3 = (d3 + hmVar.Tgh()) - hmVar.CJ();
            d2 = (d2 + hmVar.ROR()) - hmVar.fl();
        }
        try {
            float f2 = (float) d3;
            int Qhi = (int) CQU.Qhi(getContext(), f2);
            int Qhi2 = (int) CQU.Qhi(getContext(), f2 + this.fl);
            if (tP.Qhi(getContext())) {
                DynamicRoot dynamicRoot = (DynamicRoot) this.iMK.getChildAt(0);
                DynamicRoot dynamicRoot2 = dynamicRoot;
                int dynamicWidth = dynamicRoot.getDynamicWidth();
                int i = dynamicWidth - Qhi2;
                Qhi2 = dynamicWidth - Qhi;
                Qhi = i;
            }
            if (!"open_ad".equals(this.iMK.getRenderRequest().CJ())) {
                DynamicRoot dynamicRoot3 = (DynamicRoot) this.iMK.getChildAt(0);
                DynamicRoot dynamicRoot4 = dynamicRoot3;
                float f3 = (float) d2;
                dynamicRoot3.Qhi.Qhi(Qhi, (int) CQU.Qhi(getContext(), f3), Qhi2, (int) CQU.Qhi(getContext(), f3 + this.Tgh));
            } else {
                this.iMK.ac = this.cJ;
            }
        } catch (Exception unused) {
        }
        this.iMK.Qhi(d3, d2, this.fl, this.Tgh, this.zc.pA());
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Tgh
    public void setTimeUpdate(int i) {
        String str;
        String str2;
        if (this.ABk.WAv().fl().eG() && i > 0 && !this.MQ) {
            if (i >= 60) {
                str = "0" + (i / 60);
            } else {
                str = "00";
            }
            String str3 = str + ":";
            int i2 = i % 60;
            if (i2 <= 9) {
                str2 = str3 + "0" + i2;
            } else {
                str2 = str3 + i2;
            }
            this.Qhi.setText(str2);
            this.Qhi.setVisibility(0);
            return;
        }
        this.MQ = true;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            ac(getChildAt(i3));
        }
        this.Qhi.setVisibility(8);
    }

    private void ac(View view) {
        if (view == this.Qhi || view == this.tP) {
            return;
        }
        try {
            if (((Integer) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.Tgh)).intValue() == 1) {
                return;
            }
        } catch (Throwable unused) {
        }
        int i = 0;
        view.setVisibility(0);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return;
            }
            ac(viewGroup.getChildAt(i));
            i++;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Tgh
    public void Qhi() {
        this.Qhi.setVisibility(8);
    }
}
