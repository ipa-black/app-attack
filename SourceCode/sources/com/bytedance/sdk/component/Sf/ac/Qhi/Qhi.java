package com.bytedance.sdk.component.Sf.ac.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.component.Sf.ac.cJ;
/* compiled from: PAGRunnableLogModel.java */
/* loaded from: classes2.dex */
public class Qhi {
    private long CJ;
    private String Qhi;
    private long Tgh;
    private long ac;
    private int cJ = 0;
    private long fl;

    public String Qhi() {
        return this.Qhi;
    }

    public int cJ() {
        return this.cJ;
    }

    public long ac() {
        return this.ac;
    }

    public long CJ() {
        return this.CJ;
    }

    public long fl() {
        return this.fl;
    }

    public long Tgh() {
        return this.Tgh;
    }

    public void Qhi(cJ cJVar) {
        synchronized (this) {
            if (TextUtils.isEmpty(this.Qhi)) {
                this.Qhi = cJVar.cJ();
            }
            this.ac += cJVar.Tgh();
            this.CJ += cJVar.ROR();
            this.fl = Math.max(this.fl, cJVar.Tgh());
            this.Tgh = Math.max(this.Tgh, cJVar.ROR());
            this.cJ++;
        }
        new Object[]{"recordTask: task wait=", Long.valueOf(cJVar.Tgh()), "  run=", Long.valueOf(cJVar.ROR()), toString()};
    }

    public String toString() {
        return this.Qhi + " times=" + this.cJ + ",waitMaxTime=" + this.fl + ",runMaxTime=" + this.Tgh + ",runTotalTime=" + this.CJ + ",waitTotalTime=" + this.ac;
    }
}
