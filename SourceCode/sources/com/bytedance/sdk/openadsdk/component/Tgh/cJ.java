package com.bytedance.sdk.openadsdk.component.Tgh;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* compiled from: TTAppOpenAdTopLayoutHelper.java */
/* loaded from: classes2.dex */
public class cJ implements Handler.Callback {
    private boolean ROR;
    private Qhi ac;
    private final com.bytedance.sdk.openadsdk.component.Sf.Qhi cJ;
    private Handler Qhi = new Handler(Looper.myLooper(), this);
    private int CJ = 0;
    private int fl = 5;
    private int Tgh = 0;

    public cJ(com.bytedance.sdk.openadsdk.component.Sf.Qhi qhi) {
        this.cJ = qhi;
    }

    public void Qhi(int i) {
        this.CJ = i;
        int i2 = this.fl - i;
        this.cJ.Qhi(i2);
        if (i <= 0) {
            Qhi qhi = this.ac;
            if (qhi != null && !this.ROR) {
                qhi.cJ();
                this.ROR = true;
            }
            i = 0;
        }
        boolean z = i2 >= this.Tgh;
        Qhi qhi2 = this.ac;
        if (qhi2 != null) {
            qhi2.Qhi(i, i2, z);
        }
    }

    public void Qhi(float f2) {
        int i = (int) f2;
        this.fl = i;
        if (i <= 0) {
            this.fl = 5;
        }
    }

    public void Qhi(Qhi qhi) {
        this.ac = qhi;
    }

    public int Qhi() {
        return this.Tgh;
    }

    public void cJ(int i) {
        this.Tgh = i;
    }

    public void cJ() {
        Handler handler = this.Qhi;
        if (handler != null) {
            handler.sendMessage(handler.obtainMessage(100, this.fl, 0));
        }
    }

    public void ac() {
        if (this.Qhi != null) {
            Message obtain = Message.obtain();
            obtain.what = 100;
            obtain.arg1 = this.CJ;
            this.Qhi.sendMessage(obtain);
        }
    }

    public void CJ() {
        Handler handler = this.Qhi;
        if (handler != null) {
            handler.removeMessages(100);
        }
    }

    public void fl() {
        this.Qhi.removeCallbacksAndMessages(null);
        this.Qhi = null;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 100 && this.Qhi != null) {
            int i = message.arg1;
            Qhi(i);
            if (i > 0) {
                Message obtain = Message.obtain();
                obtain.what = 100;
                obtain.arg1 = i - 1;
                this.Qhi.sendMessageDelayed(obtain, 1000L);
            }
        }
        return true;
    }
}
