package com.bytedance.adsdk.ugeno.swiper;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import com.bytedance.adsdk.ugeno.ac;
/* loaded from: classes2.dex */
public class Swiper extends BaseSwiper<com.bytedance.adsdk.ugeno.component.cJ> {
    private ac ac;

    public Swiper(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.swiper.BaseSwiper
    public View ROR(int i) {
        return ((com.bytedance.adsdk.ugeno.component.cJ) this.Qhi.get(i)).hm();
    }

    public void Qhi(ac acVar) {
        this.ac = acVar;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        ac acVar = this.ac;
        if (acVar != null) {
            int[] Qhi = acVar.Qhi(i, i2);
            super.onMeasure(Qhi[0], Qhi[1]);
        } else {
            super.onMeasure(i, i2);
        }
        ac acVar2 = this.ac;
        if (acVar2 != null) {
            acVar2.CJ();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ac acVar = this.ac;
        if (acVar != null) {
            acVar.fl();
        }
        super.onLayout(z, i, i2, i3, i4);
        ac acVar2 = this.ac;
        if (acVar2 != null) {
            acVar2.Qhi(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ac acVar = this.ac;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ac acVar = this.ac;
        if (acVar != null) {
            acVar.ROR();
        }
    }
}
