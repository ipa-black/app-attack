package com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.interact.WAv;
/* compiled from: SlideUpAndClickTouch.java */
/* loaded from: classes2.dex */
public class fl implements View.OnTouchListener {
    private float CJ;
    private boolean Gm;
    private float Qhi;
    private float ROR;
    private boolean Sf;
    private float Tgh;
    private int WAv;
    private float ac;
    private float cJ;
    private boolean fl = true;
    private WAv hm;

    public fl(WAv wAv, int i, boolean z) {
        this.hm = wAv;
        this.WAv = i;
        this.Gm = z;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        WAv wAv;
        WAv wAv2;
        WAv wAv3;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Qhi = motionEvent.getX();
            this.cJ = motionEvent.getY();
            this.Tgh = motionEvent.getY();
            this.fl = true;
        } else if (action != 1) {
            if (action == 2) {
                float y = motionEvent.getY();
                this.ROR = y;
                if (Math.abs(y - this.Tgh) > 10.0f) {
                    this.Sf = true;
                }
                this.CJ = motionEvent.getX();
                this.ac = motionEvent.getY();
                if (Math.abs(this.CJ - this.Qhi) > 8.0f || Math.abs(this.ac - this.cJ) > 8.0f) {
                    this.fl = false;
                }
            }
        } else if (!this.Sf && !this.fl) {
            return false;
        } else {
            if (!this.Gm && (wAv3 = this.hm) != null) {
                wAv3.Qhi();
            } else {
                int cJ = CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), Math.abs(this.ROR - this.Tgh));
                if (this.ROR - this.Tgh < 0.0f && cJ > this.WAv && (wAv2 = this.hm) != null) {
                    wAv2.Qhi();
                } else if (this.fl && (wAv = this.hm) != null) {
                    wAv.Qhi();
                }
            }
        }
        return true;
    }
}
