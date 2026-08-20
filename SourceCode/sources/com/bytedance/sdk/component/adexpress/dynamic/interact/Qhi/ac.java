package com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.interact.WAv;
/* compiled from: SlideRightTouch.java */
/* loaded from: classes2.dex */
public class ac implements View.OnTouchListener {
    private float CJ;
    private float Qhi;
    private int ROR;
    private boolean Sf;
    private WAv Tgh;
    private float ac;
    private float cJ;
    private boolean fl;
    private boolean hm;

    public ac(WAv wAv) {
        this(wAv, 5);
    }

    public ac(WAv wAv, int i) {
        this.ROR = 5;
        this.Sf = true;
        this.Tgh = wAv;
        if (i > 0) {
            this.ROR = i;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        WAv wAv;
        WAv wAv2;
        WAv wAv3;
        if (this.hm) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Qhi = motionEvent.getX();
            this.cJ = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                this.CJ = motionEvent.getX();
                this.ac = motionEvent.getY();
                if (Math.abs(this.CJ - this.Qhi) > 10.0f) {
                    this.fl = true;
                }
                if (Math.abs(this.CJ - this.Qhi) > 8.0f || Math.abs(this.ac - this.cJ) > 8.0f) {
                    this.Sf = false;
                }
                int cJ = CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), Math.abs(this.CJ - this.Qhi));
                if (this.CJ > this.Qhi && cJ > this.ROR && (wAv3 = this.Tgh) != null) {
                    wAv3.Qhi();
                    this.hm = true;
                }
            }
        } else if (!this.fl && !this.Sf) {
            return false;
        } else {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int cJ2 = CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), Math.abs(this.CJ - this.Qhi));
            if (this.CJ > this.Qhi && cJ2 > this.ROR && (wAv2 = this.Tgh) != null) {
                wAv2.Qhi();
                this.hm = true;
            }
            float abs = Math.abs(x - this.Qhi);
            float abs2 = Math.abs(y - this.cJ);
            if ((abs < 8.0f || abs2 < 8.0f) && (wAv = this.Tgh) != null) {
                wAv.cJ();
                this.hm = true;
            }
        }
        return true;
    }
}
