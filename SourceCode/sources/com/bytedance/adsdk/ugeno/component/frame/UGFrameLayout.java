package com.bytedance.adsdk.ugeno.component.frame;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.bytedance.adsdk.ugeno.ac;
import com.bytedance.adsdk.ugeno.core.zc;
import java.util.Map;
/* loaded from: classes2.dex */
public class UGFrameLayout extends FrameLayout {
    private ac Qhi;
    private Map<Integer, zc> cJ;

    public UGFrameLayout(Context context) {
        super(context);
    }

    public void setEventMap(Map<Integer, zc> map) {
        this.cJ = map;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        ac acVar = this.Qhi;
        if (acVar != null) {
            int[] Qhi = acVar.Qhi(i, i2);
            super.onMeasure(Qhi[0], Qhi[1]);
        } else {
            super.onMeasure(i, i2);
        }
        ac acVar2 = this.Qhi;
        if (acVar2 != null) {
            acVar2.CJ();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ac acVar = this.Qhi;
        if (acVar != null) {
            acVar.fl();
        }
        super.onLayout(z, i, i2, i3, i4);
        ac acVar2 = this.Qhi;
        if (acVar2 != null) {
            acVar2.Qhi(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Map<Integer, zc> map = this.cJ;
        if (map == null || !map.containsKey(4)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    public void Qhi(ac acVar) {
        this.Qhi = acVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ac acVar = this.Qhi;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ac acVar = this.Qhi;
        if (acVar != null) {
            acVar.ROR();
        }
    }
}
