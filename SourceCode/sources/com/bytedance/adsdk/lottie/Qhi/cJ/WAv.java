package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.Path;
import android.graphics.PointF;
/* compiled from: PathKeyframe.java */
/* loaded from: classes2.dex */
public class WAv extends com.bytedance.adsdk.lottie.ROR.Qhi<PointF> {
    private final com.bytedance.adsdk.lottie.ROR.Qhi<PointF> Gm;
    private Path WAv;

    public WAv(com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ROR.Qhi<PointF> qhi) {
        super(ror, qhi.Qhi, qhi.cJ, qhi.ac, qhi.CJ, qhi.fl, qhi.Tgh, qhi.ROR);
        this.Gm = qhi;
        Qhi();
    }

    public void Qhi() {
        boolean z = (this.cJ == 0 || this.Qhi == 0 || !((PointF) this.Qhi).equals(((PointF) this.cJ).x, ((PointF) this.cJ).y)) ? false : true;
        if (this.Qhi == 0 || this.cJ == 0 || z) {
            return;
        }
        this.WAv = com.bytedance.adsdk.lottie.Tgh.ROR.Qhi((PointF) this.Qhi, (PointF) this.cJ, this.Gm.Sf, this.Gm.hm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Path cJ() {
        return this.WAv;
    }
}
