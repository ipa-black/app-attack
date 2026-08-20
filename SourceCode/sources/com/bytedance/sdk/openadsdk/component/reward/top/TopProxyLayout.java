package com.bytedance.sdk.openadsdk.component.reward.top;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.iMK;
/* loaded from: classes2.dex */
public class TopProxyLayout extends View implements Qhi<TopProxyLayout> {
    private Qhi<TopProxyLayout> Qhi;

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public TopProxyLayout(Context context) {
        this(context, null);
    }

    public TopProxyLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopProxyLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setVisibility(8);
        setWillNotDraw(true);
    }

    public View getITopLayout() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi instanceof View) {
            return (View) qhi;
        }
        return null;
    }

    public TopProxyLayout Qhi(tP tPVar) {
        if (this.Qhi != null) {
            return this;
        }
        TopLayoutDislike2 Qhi = new TopLayoutDislike2(getContext()).Qhi(tPVar);
        this.Qhi = Qhi;
        ViewParent parent = getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            Qhi(Qhi, (ViewGroup) parent);
        }
        return this;
    }

    private void Qhi(View view, ViewGroup viewGroup) {
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
        if (view != null) {
            view.setId(iMK.cBj);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setShowSkip(boolean z) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.setShowSkip(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setSkipEnable(boolean z) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.setSkipEnable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void ac() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.ac();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setSkipText(CharSequence charSequence) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.setSkipText(charSequence);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void CJ() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.CJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void fl() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.fl();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setShowSound(boolean z) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.setShowSound(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setSoundMute(boolean z) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.setSoundMute(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void Qhi(CharSequence charSequence, CharSequence charSequence2) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.Qhi(charSequence, charSequence2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setShowDislike(boolean z) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.setShowDislike(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setListener(cJ cJVar) {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.setListener(cJVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void Qhi() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.Qhi();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void cJ() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.cJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void Tgh() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            qhi.Tgh();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public View getCloseButton() {
        Qhi<TopProxyLayout> qhi = this.Qhi;
        if (qhi != null) {
            return qhi.getCloseButton();
        }
        return null;
    }
}
