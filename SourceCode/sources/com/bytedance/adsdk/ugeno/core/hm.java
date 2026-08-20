package com.bytedance.adsdk.ugeno.core;

import android.animation.AnimatorSet;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
/* compiled from: UGenAnimation.java */
/* loaded from: classes2.dex */
public class hm {
    private View CJ;
    Paint Qhi;
    private String ROR;
    private int Tgh;
    private AnimatorSet ac = new AnimatorSet();
    private Qhi cJ;
    private int fl;

    public hm(View view, Qhi qhi) {
        this.CJ = view;
        this.cJ = qhi;
        Paint paint = new Paint();
        this.Qhi = paint;
        paint.setAntiAlias(true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0187, code lost:
        if (r2.equals("accelerate") == false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi() {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.core.hm.Qhi():void");
    }

    public void cJ() {
        AnimatorSet animatorSet = this.ac;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void Qhi(Canvas canvas, IAnimation iAnimation) {
        try {
            if (iAnimation.getRipple() == 0.0f || TextUtils.isEmpty(this.ROR)) {
                return;
            }
            this.Qhi.setColor(com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(this.ROR));
            this.Qhi.setAlpha(90);
            ViewGroup viewGroup = (ViewGroup) this.CJ.getParent();
            ViewGroup viewGroup2 = viewGroup;
            viewGroup.setClipChildren(true);
            int i = this.fl;
            int i2 = this.Tgh;
            canvas.drawCircle(i, i2, Math.min(i, i2) * 2 * iAnimation.getRipple(), this.Qhi);
        } catch (Throwable th) {
            Log.d("UGenAnimation", "ripple animation error " + th.getMessage());
        }
    }

    public void Qhi(int i, int i2) {
        this.fl = i / 2;
        this.Tgh = i2 / 2;
    }
}
