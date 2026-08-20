package com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.interact.WAv;
import java.lang.ref.SoftReference;
/* compiled from: UnlockTapTouch.java */
/* loaded from: classes2.dex */
public class Sf implements View.OnTouchListener {
    private static int ac = 10;
    private WAv CJ;
    private float Qhi;
    private float cJ;
    private int fl;
    private RectF Tgh = new RectF();
    private long ROR = 0;
    private final int Sf = 200;
    private final int hm = 3;
    private SoftReference<View> WAv = new SoftReference<>(null);

    public Sf(WAv wAv, int i, final ViewGroup viewGroup) {
        this.fl = ac;
        this.CJ = wAv;
        if (i > 0) {
            this.fl = i;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.Qhi.Sf.1
                @Override // java.lang.Runnable
                public void run() {
                    View findViewById = viewGroup.findViewById(2097610746);
                    Sf.this.WAv = new SoftReference(findViewById);
                }
            });
        }
    }

    private RectF Qhi(View view) {
        if (view == null) {
            return new RectF();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        return new RectF(i, iArr[1], i + view.getWidth(), iArr[1] + view.getHeight());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        WAv wAv;
        WAv wAv2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Tgh = Qhi(this.WAv.get());
            this.Qhi = motionEvent.getRawX();
            this.cJ = motionEvent.getRawY();
            this.ROR = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.Tgh;
            if (rectF != null && !rectF.contains(this.Qhi, this.cJ)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float abs = Math.abs(rawX - this.Qhi);
            float abs2 = Math.abs(rawY - this.cJ);
            int cJ = CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), Math.abs(rawX - this.Qhi));
            int i = ac;
            if (abs < i || abs2 < i) {
                if ((System.currentTimeMillis() - this.ROR < 200 || (abs < 3.0f && abs2 < 3.0f)) && (wAv = this.CJ) != null) {
                    wAv.Qhi();
                }
            } else if (rawX > this.Qhi && cJ > this.fl && (wAv2 = this.CJ) != null) {
                wAv2.Qhi();
            }
        }
        return true;
    }
}
