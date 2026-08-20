package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.tP;
import org.json.JSONObject;
/* compiled from: RewardFullDownloadManager.java */
/* loaded from: classes2.dex */
public class fl {
    private boolean CJ;
    com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl Qhi;
    private final String ac;
    private final tP cJ;
    private final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi fl;

    /* compiled from: RewardFullDownloadManager.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, int i, int i2, int i3);

        void Qhi(String str, JSONObject jSONObject);
    }

    public fl(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        this.fl = qhi;
        this.cJ = qhi.cJ;
        this.ac = qhi.fl;
    }

    public void Qhi() {
        if (this.CJ) {
            return;
        }
        this.CJ = true;
        CJ();
    }

    private void CJ() {
        if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac() && this.cJ.ip() == 4) {
            this.Qhi = com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(this.fl.ip, this.cJ, this.ac);
        }
        if (this.Qhi == null) {
            this.Qhi = com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(this.fl.FQ, this.cJ, this.ac);
        }
    }

    public void cJ() {
        com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl flVar = this.Qhi;
        if (flVar != null) {
            flVar.CJ();
        }
    }

    public com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl ac() {
        return this.Qhi;
    }

    public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, int i, int i2, int i3, Qhi qhi) {
        if (this.Qhi != null) {
            int id = view.getId();
            if (id == com.bytedance.sdk.openadsdk.utils.iMK.fl) {
                qhi.Qhi("click_play_star_level", null);
                return;
            } else if (id == com.bytedance.sdk.openadsdk.utils.iMK.CJ) {
                qhi.Qhi("click_play_star_nums", null);
                return;
            } else if (id == com.bytedance.sdk.openadsdk.utils.iMK.ac) {
                qhi.Qhi("click_play_source", null);
                return;
            } else if (id == com.bytedance.sdk.openadsdk.utils.iMK.cJ) {
                qhi.Qhi("click_play_logo", null);
                return;
            } else {
                return;
            }
        }
        qhi.Qhi(view, f2, f3, f4, f5, sparseArray, i, i2, i3);
    }
}
