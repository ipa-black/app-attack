package com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer;
import com.bytedance.sdk.component.adexpress.dynamic.interact.WAv;
/* compiled from: LongPressTouch.java */
/* loaded from: classes2.dex */
public class cJ implements View.OnTouchListener {
    private boolean CJ;
    private float Qhi;
    private WAv Tgh;
    private long ac;
    private float cJ;
    private InteractViewContainer fl;

    public cJ(InteractViewContainer interactViewContainer, WAv wAv) {
        this.fl = interactViewContainer;
        this.Tgh = wAv;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ac = System.currentTimeMillis();
            this.Qhi = motionEvent.getX();
            this.cJ = motionEvent.getY();
            this.fl.fl();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.Qhi) >= CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), 10.0f) || Math.abs(y - this.cJ) >= CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), 10.0f)) {
                    this.CJ = true;
                    this.fl.Tgh();
                }
            }
        } else if (this.CJ) {
            return false;
        } else {
            if (System.currentTimeMillis() - this.ac >= 1500) {
                WAv wAv = this.Tgh;
                if (wAv != null) {
                    wAv.Qhi();
                }
            }
            this.fl.Tgh();
        }
        return true;
    }
}
