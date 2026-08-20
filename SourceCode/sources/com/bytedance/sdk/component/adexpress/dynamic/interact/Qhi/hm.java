package com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.interact.WAv;
/* compiled from: ValidateSlideUpTouch.java */
/* loaded from: classes2.dex */
public class hm implements View.OnTouchListener {
    private float CJ;
    private final WAv Qhi;
    private float ROR;
    private float Tgh;
    private final int ac = 10;
    private final boolean cJ;
    private float fl;

    public hm(WAv wAv, boolean z) {
        this.Qhi = wAv;
        this.cJ = z;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        WAv wAv;
        WAv wAv2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.CJ = motionEvent.getX();
            this.fl = motionEvent.getY();
            new Object[]{"mStartX: ", Float.valueOf(this.CJ), ", mStartY: " + this.fl};
        } else if (action == 1) {
            this.Tgh = motionEvent.getX();
            this.ROR = motionEvent.getY();
            new Object[]{"mEndX: ", Float.valueOf(this.Tgh), ", mEndY: " + this.ROR};
            if (!this.cJ && (wAv2 = this.Qhi) != null) {
                wAv2.Qhi();
            } else {
                float f2 = this.Tgh - this.CJ;
                float f3 = this.ROR - this.fl;
                float sqrt = (float) Math.sqrt((f2 * f2) + (f3 * f3));
                new Object[]{"slideDistancePx: ", Float.valueOf(sqrt)};
                float cJ = CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), Math.abs(sqrt));
                new Object[]{"slideDistanceDp:", Float.valueOf(cJ), " and ", "mSlideThreshold:", 10};
                if (cJ > 10.0f && (wAv = this.Qhi) != null) {
                    wAv.Qhi();
                }
            }
        }
        return true;
    }
}
