package com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.interact.WAv;
/* compiled from: SlideUpTouch.java */
/* loaded from: classes2.dex */
public class Tgh implements View.OnTouchListener {
    private WAv CJ;
    private float Qhi;
    private boolean ac;
    private float cJ;
    private int fl;

    public Tgh(WAv wAv, int i) {
        this.CJ = wAv;
        this.fl = i;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        WAv wAv;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Qhi = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y = motionEvent.getY();
                this.cJ = y;
                if (Math.abs(y - this.Qhi) > 10.0f) {
                    this.ac = true;
                }
            }
        } else if (!this.ac) {
            return false;
        } else {
            int cJ = CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), Math.abs(this.cJ - this.Qhi));
            if (this.cJ - this.Qhi < 0.0f && cJ > this.fl && (wAv = this.CJ) != null) {
                wAv.Qhi();
                this.Qhi = 0.0f;
                this.cJ = 0.0f;
                this.ac = false;
            }
        }
        return true;
    }
}
