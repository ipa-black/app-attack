package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class TTInteractionStyle009016VLayout extends TTInteractionStyleBaseFrameLayout {
    public TTInteractionStyle009016VLayout(Context context) {
        this(context, null);
    }

    public TTInteractionStyle009016VLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTInteractionStyle009016VLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected void Qhi(Context context) {
        int cJ = zn.cJ(context, 10.0f);
        int cJ2 = zn.cJ(context, 5.0f);
        int cJ3 = zn.cJ(context, 16.0f);
        int cJ4 = zn.cJ(context, 15.0f);
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        pAGRelativeLayout.setLayoutParams(layoutParams);
        addView(pAGRelativeLayout);
        this.Qhi = fl(context);
        this.Qhi.setId(iMK.bM);
        this.Qhi.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        pAGRelativeLayout.addView(this.Qhi);
        this.cJ = Tgh(context);
        this.cJ.setId(iMK.gT);
        this.cJ.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        pAGRelativeLayout.addView(this.cJ);
        PAGRelativeLayout pAGRelativeLayout2 = new PAGRelativeLayout(context);
        pAGRelativeLayout2.setId(iMK.SO);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, zn.cJ(context, 60.0f));
        layoutParams2.addRule(12);
        pAGRelativeLayout2.setBackgroundColor(Color.parseColor("#26000000"));
        pAGRelativeLayout2.setLayoutParams(layoutParams2);
        pAGRelativeLayout.addView(pAGRelativeLayout2);
        this.ac = ROR(context);
        this.ac.setId(iMK.XH);
        int cJ5 = zn.cJ(context, 50.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(cJ5, cJ5);
        layoutParams3.addRule(20);
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        layoutParams3.leftMargin = cJ4;
        layoutParams3.setMarginStart(cJ4);
        this.ac.setLayoutParams(layoutParams3);
        pAGRelativeLayout2.addView(this.ac);
        this.CJ = cJ(context);
        this.CJ.setId(iMK.IC);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(15);
        layoutParams4.leftMargin = cJ2;
        layoutParams4.setMarginStart(cJ2);
        layoutParams4.addRule(1, iMK.XH);
        layoutParams4.addRule(17, iMK.XH);
        this.CJ.setLayoutParams(layoutParams4);
        pAGRelativeLayout2.addView(this.CJ);
        this.Tgh = CJ(context);
        this.Tgh.setId(iMK.HUk);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(zn.cJ(context, 70.0f), zn.cJ(context, 36.0f));
        layoutParams5.addRule(21);
        layoutParams5.addRule(11);
        layoutParams5.addRule(15);
        layoutParams5.rightMargin = cJ4;
        layoutParams5.setMarginEnd(cJ4);
        this.Tgh.setLayoutParams(layoutParams5);
        pAGRelativeLayout2.addView(this.Tgh);
        View Sf = Sf(context);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(2, iMK.SO);
        layoutParams6.leftMargin = cJ3;
        layoutParams6.bottomMargin = cJ;
        Sf.setLayoutParams(layoutParams6);
        pAGRelativeLayout.addView(Sf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView CJ(Context context) {
        PAGTextView CJ = super.CJ(context);
        CJ.setBackground(hm.Qhi(context, "tt_download_corner_bg"));
        CJ.setTextSize(2, 14.0f);
        return CJ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView cJ(Context context) {
        PAGTextView cJ = super.cJ(context);
        cJ.setGravity(16);
        cJ.setMaxWidth(zn.cJ(context, 150.0f));
        cJ.setTextColor(Color.parseColor("#B7B7B7"));
        cJ.setTextSize(2, 15.0f);
        cJ.setText("APP NAME");
        return cJ;
    }
}
