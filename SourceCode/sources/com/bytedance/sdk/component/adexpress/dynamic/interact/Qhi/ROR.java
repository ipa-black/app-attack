package com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.interact.WAv;
/* compiled from: TapTouch.java */
/* loaded from: classes2.dex */
public class ROR implements View.OnTouchListener {
    private static int ac = 10;
    private boolean CJ;
    private float Qhi;
    private float cJ;
    private WAv fl;

    public ROR(WAv wAv) {
        this.fl = wAv;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Qhi = motionEvent.getX();
            this.cJ = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.Qhi) >= ac || Math.abs(y - this.cJ) >= ac) {
                    this.CJ = true;
                }
            } else if (action == 3) {
                this.CJ = false;
            }
        } else if (this.CJ) {
            this.CJ = false;
            return false;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (Math.abs(x2 - this.Qhi) >= ac || Math.abs(y2 - this.cJ) >= ac) {
                this.CJ = false;
            } else {
                WAv wAv = this.fl;
                if (wAv != null) {
                    wAv.Qhi();
                }
            }
        }
        return true;
    }
}
