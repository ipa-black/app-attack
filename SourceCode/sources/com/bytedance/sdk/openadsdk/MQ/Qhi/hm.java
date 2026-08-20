package com.bytedance.sdk.openadsdk.MQ.Qhi;

import android.view.View;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: PAGVideoMrcTracker.java */
/* loaded from: classes2.dex */
public class hm extends cJ {
    private int CJ;

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    public int Tgh() {
        return 200;
    }

    public hm(Integer num, View view, tP tPVar, Tgh.Qhi qhi) {
        super(num, view, tPVar, 2000, qhi);
        this.CJ = 0;
    }

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    protected boolean ac() {
        return ROR.Qhi(this.Qhi.get(), this.cJ.eN()) && this.CJ == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    public void CJ() {
        super.CJ();
    }

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    public void Qhi() {
        if (this.CJ != 1) {
            return;
        }
        super.Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    protected void cJ(int i) {
        if (hm()) {
            return;
        }
        if (i == 6 || i == 5) {
            this.CJ = 0;
            Sf();
        }
        if (i == 3 || i == 2) {
            this.CJ = 2;
            Sf();
        }
        if (this.CJ == 1 || i != 0) {
            return;
        }
        this.CJ = 1;
        Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    public boolean zc() {
        int i = this.CJ;
        boolean z = i == 2 || i == 0;
        if (z) {
            this.ac.set(false);
        }
        return !z || super.zc();
    }
}
