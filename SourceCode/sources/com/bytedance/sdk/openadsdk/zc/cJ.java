package com.bytedance.sdk.openadsdk.zc;

import java.util.ArrayList;
import java.util.List;
/* compiled from: FeatureDurationModel.java */
/* loaded from: classes2.dex */
public class cJ {
    private long Qhi = 0;
    private long cJ = 0;
    private final List<ac> ac = new ArrayList();
    private long CJ = 0;

    public void Qhi(long j) {
        this.Qhi = j;
    }

    public void cJ(long j) {
        this.cJ = j;
    }

    public void ac(long j) {
        this.CJ = j;
    }

    public void CJ(long j) {
        this.ac.add(new ac(this.CJ, j));
        this.CJ = 0L;
    }

    public long Qhi(long j, long j2) {
        long j3;
        long cJ;
        int i = 0;
        for (ac acVar : this.ac) {
            if (j < acVar.Qhi()) {
                cJ = i + (acVar.cJ() - acVar.Qhi());
            } else {
                cJ = i + (acVar.cJ() - j);
            }
            i = (int) cJ;
        }
        long j4 = this.Qhi;
        if (j4 < j) {
            long j5 = this.cJ;
            if (j5 == 0) {
                j5 = this.CJ;
                if (j5 == 0) {
                    j3 = j2 - j;
                }
            }
            return (j5 - j) - i;
        }
        long j6 = this.cJ;
        if (j6 == 0) {
            j6 = this.CJ;
            if (j6 == 0) {
                j3 = j2 - j4;
            }
        }
        return (j6 - j4) - i;
        return j3 - i;
    }
}
