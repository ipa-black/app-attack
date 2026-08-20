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
public class TTInteractionStyle016009HLayout extends TTInteractionStyleBaseFrameLayout {
    public TTInteractionStyle016009HLayout(Context context) {
        this(context, null);
    }

    public TTInteractionStyle016009HLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTInteractionStyle016009HLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected void Qhi(Context context) {
        int cJ = zn.cJ(context, 10.0f);
        int cJ2 = zn.cJ(context, 16.0f);
        int cJ3 = zn.cJ(context, 15.0f);
        int cJ4 = zn.cJ(context, 20.0f);
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
        layoutParams2.rightMargin = cJ3;
        layoutParams2.leftMargin = cJ3;
        layoutParams2.bottomMargin = cJ3;
        layoutParams2.setMarginEnd(cJ3);
        layoutParams2.setMarginStart(cJ3);
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
        this.ac.setLayoutParams(layoutParams3);
        pAGRelativeLayout2.addView(this.ac);
        this.CJ = cJ(context);
        this.CJ.setId(iMK.IC);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(15);
        layoutParams4.leftMargin = cJ4;
        layoutParams4.setMarginStart(cJ4);
        layoutParams4.addRule(1, iMK.XH);
        layoutParams4.addRule(17, iMK.XH);
        this.CJ.setLayoutParams(layoutParams4);
        pAGRelativeLayout2.addView(this.CJ);
        this.Tgh = CJ(context);
        this.Tgh.setId(iMK.HUk);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(zn.cJ(context, 100.0f), zn.cJ(context, 30.0f));
        layoutParams5.addRule(21);
        layoutParams5.addRule(11);
        layoutParams5.addRule(15);
        layoutParams5.rightMargin = cJ;
        layoutParams5.setMarginEnd(cJ);
        this.Tgh.setLayoutParams(layoutParams5);
        pAGRelativeLayout2.addView(this.Tgh);
        View Sf = Sf(context);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(2, iMK.SO);
        layoutParams6.leftMargin = cJ2;
        layoutParams6.bottomMargin = cJ;
        Sf.setLayoutParams(layoutParams6);
        pAGRelativeLayout.addView(Sf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView CJ(Context context) {
        PAGTextView CJ = super.CJ(context);
        CJ.setBackground(hm.Qhi(context, "tt_download_corner_bg"));
        CJ.setTextSize(2, 15.0f);
        return CJ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView cJ(Context context) {
        PAGTextView cJ = super.cJ(context);
        cJ.setGravity(16);
        cJ.setMaxWidth(zn.cJ(context, 250.0f));
        cJ.setTextColor(-1);
        cJ.setTextSize(2, 17.0f);
        cJ.setText("APP NAME");
        return cJ;
    }
}
