package com.bytedance.sdk.openadsdk.core.widget;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: VideoOnTouchLayout.java */
/* loaded from: classes2.dex */
public class fl {
    private float CJ;
    private boolean Gm;
    private final Qhi Qhi;
    private int ROR;
    private int Tgh;
    private float fl;
    private final boolean cJ = false;
    private boolean ac = false;
    private boolean Sf = true;
    private boolean hm = false;
    private final View.OnTouchListener WAv = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.fl.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (fl.this.Qhi.bxS()) {
                return !fl.this.ac;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                fl flVar = fl.this;
                flVar.Gm = flVar.Qhi(motionEvent);
                fl.this.CJ = x;
                fl.this.fl = y;
                fl.this.Tgh = (int) x;
                fl.this.ROR = (int) y;
                fl.this.Sf = true;
                if (fl.this.Qhi != null && fl.this.ac) {
                    fl.this.Qhi.Qhi(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x - fl.this.Tgh) > 20.0f || Math.abs(y - fl.this.ROR) > 20.0f) {
                    fl.this.Sf = false;
                }
                fl.this.Sf = true;
                fl.this.hm = false;
                fl.this.CJ = 0.0f;
                fl.this.fl = 0.0f;
                fl.this.Tgh = 0;
                if (fl.this.Qhi != null) {
                    fl.this.Qhi.Qhi(view, fl.this.Sf);
                }
                fl.this.Gm = false;
            } else if (action == 3) {
                fl.this.Gm = false;
            }
            return !fl.this.ac;
        }
    };

    /* compiled from: VideoOnTouchLayout.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(View view, boolean z);

        boolean bxS();
    }

    public fl(Qhi qhi) {
        this.Qhi = qhi;
    }

    public void Qhi(View view) {
        if (view != null) {
            view.setOnTouchListener(this.WAv);
        }
    }

    public void Qhi(boolean z) {
        this.ac = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Qhi(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            int ac = zn.ac(HzH.Qhi().getApplicationContext());
            int CJ = zn.CJ(HzH.Qhi().getApplicationContext());
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float f2 = ac;
            if (rawX <= f2 * 0.01f || rawX >= f2 * 0.99f) {
                return true;
            }
            float f3 = CJ;
            return rawY <= 0.01f * f3 || rawY >= f3 * 0.99f;
        }
        return false;
    }
}
