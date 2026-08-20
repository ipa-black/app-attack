package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class TTInteractionStyle002003HLayout extends TTInteractionStyleBaseFrameLayout {
    public TTInteractionStyle002003HLayout(Context context) {
        this(context, null);
    }

    public TTInteractionStyle002003HLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTInteractionStyle002003HLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    protected void Qhi(Context context) {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        pAGLinearLayout.setOrientation(1);
        addView(pAGLinearLayout);
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 2.0f;
        pAGFrameLayout.setLayoutParams(layoutParams);
        pAGLinearLayout.addView(pAGFrameLayout);
        this.Qhi = fl(context);
        this.Qhi.setId(iMK.bM);
        this.Qhi.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout.addView(this.Qhi);
        this.cJ = Tgh(context);
        this.cJ.setId(iMK.gT);
        this.cJ.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout.addView(this.cJ);
        PAGLogoView Sf = Sf(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 80;
        int cJ = zn.cJ(context, 10.0f);
        layoutParams2.leftMargin = cJ;
        layoutParams2.topMargin = cJ;
        layoutParams2.bottomMargin = cJ;
        Sf.setLayoutParams(layoutParams2);
        pAGFrameLayout.addView(Sf);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 1.0f;
        pAGLinearLayout2.setLayoutParams(layoutParams3);
        pAGLinearLayout2.setOrientation(1);
        pAGLinearLayout2.setGravity(81);
        int cJ2 = zn.cJ(context, 16.0f);
        pAGLinearLayout2.setPadding(cJ2, cJ2, cJ2, cJ2);
        pAGLinearLayout.addView(pAGLinearLayout2);
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        pAGRelativeLayout.setId(iMK.Wrw);
        pAGRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, zn.cJ(context, 40.0f)));
        pAGRelativeLayout.setGravity(17);
        pAGLinearLayout2.addView(pAGRelativeLayout);
        this.ac = ROR(context);
        this.ac.setId(iMK.XH);
        int cJ3 = zn.cJ(context, 35.0f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(cJ3, cJ3);
        layoutParams4.addRule(20);
        layoutParams4.addRule(9);
        layoutParams4.addRule(15);
        this.ac.setLayoutParams(layoutParams4);
        pAGRelativeLayout.addView(this.ac);
        this.CJ = cJ(context);
        this.CJ.setId(iMK.IC);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, cJ * 2);
        int cJ4 = zn.cJ(context, 6.0f);
        layoutParams5.leftMargin = cJ4;
        layoutParams5.setMarginStart(cJ4);
        layoutParams5.addRule(1, this.ac.getId());
        layoutParams5.addRule(17, this.ac.getId());
        this.CJ.setLayoutParams(layoutParams5);
        pAGRelativeLayout.addView(this.CJ);
        this.fl = ac(context);
        this.fl.setId(iMK.cJP);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, zn.cJ(context, 20.0f));
        layoutParams6.addRule(3, this.CJ.getId());
        layoutParams6.addRule(8, this.ac.getId());
        layoutParams6.addRule(17, this.ac.getId());
        layoutParams6.addRule(1, this.ac.getId());
        layoutParams6.leftMargin = cJ4;
        layoutParams6.setMarginStart(cJ4);
        this.fl.setLayoutParams(layoutParams6);
        pAGRelativeLayout.addView(this.fl);
        this.Tgh = CJ(context);
        this.Tgh.setId(iMK.HUk);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, zn.cJ(context, 22.0f));
        layoutParams7.topMargin = cJ2;
        this.Tgh.setLayoutParams(layoutParams7);
        pAGLinearLayout2.addView(this.Tgh);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView cJ(Context context) {
        PAGTextView cJ = super.cJ(context);
        cJ.setTextColor(-1);
        cJ.setTextSize(2, 13.0f);
        cJ.setText("Pangle");
        return cJ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.layout.TTInteractionStyleBaseFrameLayout
    public PAGTextView ac(Context context) {
        PAGTextView ac = super.ac(context);
        ac.setTextColor(-1);
        return ac;
    }
}
