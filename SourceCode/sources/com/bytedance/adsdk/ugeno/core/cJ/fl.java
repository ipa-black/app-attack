package com.bytedance.adsdk.ugeno.core.cJ;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.cJ.hm;
import com.bytedance.adsdk.ugeno.core.iMK;
import com.bytedance.adsdk.ugeno.core.zc;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* compiled from: UGSlideRightEvent.java */
/* loaded from: classes2.dex */
public class fl {
    private zc CJ;
    private float Qhi;
    private Context ROR;
    private boolean Sf;
    private String Tgh;
    private int ac = 0;
    private float cJ;
    private zc fl;
    private boolean hm;

    public fl(Context context, zc zcVar, boolean z) {
        this.ROR = context;
        this.CJ = zcVar;
        this.hm = z;
        Qhi();
    }

    public fl(Context context, zc zcVar, zc zcVar2, boolean z) {
        this.ROR = context;
        this.CJ = zcVar;
        this.fl = zcVar2;
        this.hm = z;
        Qhi();
    }

    private void Qhi() {
        zc zcVar = this.CJ;
        if (zcVar == null) {
            return;
        }
        this.ac = zcVar.ac().optInt("slideThreshold");
        this.Tgh = this.CJ.ac().optString("slideDirection", "up");
    }

    public boolean Qhi(iMK imk, com.bytedance.adsdk.ugeno.component.cJ cJVar, MotionEvent motionEvent) {
        if (this.Sf) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Qhi = motionEvent.getX();
            this.cJ = motionEvent.getY();
        } else if (action == 1 || action == 3) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (this.hm && Math.abs(x - this.Qhi) <= 10.0f && Math.abs(y - this.cJ) <= 10.0f && imk != null) {
                imk.Qhi(this.fl, cJVar, cJVar);
                return true;
            } else if (this.ac == 0 && imk != null) {
                imk.Qhi(this.CJ, cJVar, cJVar);
                this.Sf = true;
                return true;
            } else {
                int cJ = hm.cJ(this.ROR, x - this.Qhi);
                int cJ2 = hm.cJ(this.ROR, y - this.cJ);
                if (TextUtils.equals(this.Tgh, "up")) {
                    cJ = -cJ2;
                } else if (TextUtils.equals(this.Tgh, "down")) {
                    cJ = cJ2;
                } else if (TextUtils.equals(this.Tgh, TtmlNode.LEFT)) {
                    cJ = -cJ;
                } else if (!TextUtils.equals(this.Tgh, TtmlNode.RIGHT)) {
                    cJ = 0;
                }
                if (cJ < this.ac) {
                    return false;
                }
                if (imk != null) {
                    imk.Qhi(this.CJ, cJVar, cJVar);
                    this.Sf = true;
                    return true;
                }
            }
        }
        return true;
    }
}
