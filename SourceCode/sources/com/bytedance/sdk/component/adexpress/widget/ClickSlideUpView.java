package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.ac.Qhi;
/* loaded from: classes2.dex */
public class ClickSlideUpView extends SlideUpView {
    private TextView Qhi;
    private AnimatorSet ac;
    private View cJ;

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    protected void Qhi(Context context) {
    }

    public ClickSlideUpView(Context context) {
        super(context);
        this.ac = new AnimatorSet();
        cJ(context);
    }

    private void cJ(Context context) {
        View Qhi = Qhi.Qhi(context);
        this.cJ = Qhi;
        addView(Qhi);
        setClipChildren(false);
        this.Qhi = (TextView) findViewById(2097610748);
    }

    public void setButtonText(String str) {
        if (this.Qhi == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.Qhi.setText(str);
    }

    private void CJ() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.cJ, "translationY", 0.0f, CQU.Qhi(getContext(), -3.0f));
        ofFloat.setInterpolator(new CycleInterpolator(1.0f));
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.cJ, "alpha", 1.0f, 0.8f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setInterpolator(new CycleInterpolator(1.0f));
        ofFloat2.setRepeatCount(-1);
        this.ac.playTogether(ofFloat, ofFloat2);
        this.ac.setDuration(1000L);
        this.ac.start();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void Qhi() {
        CJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void cJ() {
        this.ac.cancel();
    }
}
