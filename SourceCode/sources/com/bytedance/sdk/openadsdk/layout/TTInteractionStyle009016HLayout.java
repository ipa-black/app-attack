package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class TTInteractionStyle009016HLayout extends TTInteractionStyleBaseFrameLayout {
    public TTInteractionStyle009016HLayout(Context context) {
        this(context, null);
    }

    public TTInteractionStyle009016HLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTInteractionStyle009016HLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected void Qhi(Context context) {
        int cJ = zn.cJ(context, 10.0f);
        int cJ2 = zn.cJ(context, 5.0f);
        int cJ3 = zn.cJ(context, 6.0f);
        int cJ4 = zn.cJ(context, 16.0f);
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
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, zn.cJ(context, 48.0f));
        layoutParams2.setMargins(cJ2, cJ2, cJ2, cJ2);
        layoutParams2.addRule(12);
        pAGRelativeLayout2.setBackgroundColor(Color.parseColor("#26000000"));
        pAGRelativeLayout2.setGravity(16);
        pAGRelativeLayout2.setLayoutParams(layoutParams2);
        pAGRelativeLayout.addView(pAGRelativeLayout2);
        this.ac = ROR(context);
        this.ac.setId(iMK.XH);
        int cJ5 = zn.cJ(context, 25.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(cJ5, cJ5);
        layoutParams3.addRule(20);
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        this.ac.setLayoutParams(layoutParams3);
        pAGRelativeLayout2.addView(this.ac);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams4.addRule(17, iMK.XH);
        layoutParams4.addRule(1, iMK.XH);
        pAGLinearLayout.setLayoutParams(layoutParams4);
        pAGLinearLayout.setGravity(16);
        pAGLinearLayout.setOrientation(1);
        pAGRelativeLayout2.addView(pAGLinearLayout);
        this.CJ = cJ(context);
        this.CJ.setId(iMK.IC);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.leftMargin = cJ3;
        layoutParams5.setMarginStart(cJ3);
        this.CJ.setLayoutParams(layoutParams5);
        pAGLinearLayout.addView(this.CJ);
        this.fl = ac(context);
        this.fl.setId(iMK.cJP);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.leftMargin = cJ3;
        layoutParams6.setMarginStart(cJ3);
        this.fl.setLayoutParams(layoutParams6);
        pAGLinearLayout.addView(this.fl);
        this.Tgh = CJ(context);
        this.Tgh.setId(iMK.HUk);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(21);
        layoutParams7.addRule(11);
        layoutParams7.addRule(15);
        this.Tgh.setLayoutParams(layoutParams7);
        int cJ6 = zn.cJ(context, 4.0f);
        this.Tgh.setPadding(cJ6, cJ6, cJ6, cJ6);
        pAGRelativeLayout2.addView(this.Tgh);
        View Sf = Sf(context);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(2, iMK.SO);
        layoutParams8.leftMargin = cJ4;
        layoutParams8.bottomMargin = cJ;
        Sf.setLayoutParams(layoutParams8);
        pAGRelativeLayout.addView(Sf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView CJ(Context context) {
        PAGTextView CJ = super.CJ(context);
        CJ.setBackground(hm.Qhi(context, "tt_download_corner_bg"));
        CJ.setTextSize(2, 8.0f);
        return CJ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView cJ(Context context) {
        PAGTextView cJ = super.cJ(context);
        cJ.setGravity(16);
        cJ.setMaxWidth(zn.cJ(context, 53.0f));
        cJ.setTextColor(-1);
        cJ.setTextSize(2, 10.0f);
        return cJ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView ac(Context context) {
        PAGTextView ac = super.ac(context);
        ac.setGravity(16);
        ac.setMaxWidth(zn.cJ(context, 53.0f));
        ac.setTextColor(-1);
        ac.setTextSize(2, 8.0f);
        return ac;
    }
}
