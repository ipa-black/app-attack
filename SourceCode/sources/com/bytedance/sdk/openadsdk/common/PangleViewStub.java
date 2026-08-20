package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes2.dex */
public class PangleViewStub extends View {
    private final Qhi Qhi;
    private View cJ;

    /* loaded from: classes2.dex */
    public interface Qhi {
        View Qhi(Context context);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public PangleViewStub(Context context, Qhi qhi) {
        super(context);
        this.Qhi = qhi;
        Qhi();
    }

    private void Qhi() {
        setVisibility(8);
        setWillNotDraw(true);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        View view = this.cJ;
        if (view != null) {
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            cJ();
        }
    }

    private View cJ() {
        Qhi qhi;
        if (this.cJ == null && (qhi = this.Qhi) != null) {
            this.cJ = qhi.Qhi(getContext());
            Qhi(this.cJ, (ViewGroup) getParent());
        }
        return this.cJ;
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
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }
}
