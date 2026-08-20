package com.bytedance.adsdk.ugeno.core.cJ;

import android.content.Context;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.core.iMK;
import com.bytedance.adsdk.ugeno.core.zc;
/* compiled from: UGOnlyTapEvent.java */
/* loaded from: classes2.dex */
public class ac {
    private Context CJ;
    private float Qhi;
    private zc ac;
    private float cJ;
    private boolean fl;

    public ac(Context context, zc zcVar) {
        this.CJ = context;
        this.ac = zcVar;
    }

    public boolean Qhi(iMK imk, com.bytedance.adsdk.ugeno.component.cJ cJVar, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Qhi = motionEvent.getX();
            this.cJ = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.Qhi) >= 15.0f || Math.abs(y - this.cJ) >= 15.0f) {
                    this.fl = true;
                }
            } else if (action == 3) {
                this.fl = false;
            }
        } else if (this.fl) {
            this.fl = false;
            return false;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (Math.abs(x2 - this.Qhi) >= 15.0f || Math.abs(y2 - this.cJ) >= 15.0f) {
                this.fl = false;
            } else if (imk != null) {
                imk.Qhi(this.ac, cJVar, cJVar);
                return true;
            }
        }
        return true;
    }
}
