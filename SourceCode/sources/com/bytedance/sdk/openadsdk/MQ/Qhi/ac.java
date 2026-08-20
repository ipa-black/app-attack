package com.bytedance.sdk.openadsdk.MQ.Qhi;

import android.view.View;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: PAGDisplayMrcTracker.java */
/* loaded from: classes2.dex */
public class ac extends cJ {
    private int CJ;

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    public int Tgh() {
        return 100;
    }

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    protected void cJ(int i) {
    }

    public ac(Integer num, View view, tP tPVar, Tgh.Qhi qhi) {
        super(num, view, tPVar, 1000, qhi);
        this.CJ = -1;
        cJ(view);
    }

    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    protected boolean ac() {
        if (this.Qhi == null || this.Qhi.get() == null) {
            return false;
        }
        View view = this.Qhi.get();
        if (this.CJ == -1) {
            cJ(view);
        }
        return ROR.Qhi(view, this.CJ == 1, this.cJ.eN());
    }

    private void cJ(View view) {
        if (view != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            this.CJ = width * height >= 242500 ? 1 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.MQ.Qhi.cJ
    public void CJ() {
        super.CJ();
    }
}
