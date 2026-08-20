package com.bytedance.sdk.openadsdk.component.reward.cJ;

import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.cJ.pA;
import com.bytedance.sdk.openadsdk.component.reward.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.model.MQ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RewardFullTypeDoubleAds.java */
/* loaded from: classes2.dex */
public class Tgh extends cJ implements com.bytedance.sdk.openadsdk.WAv.ROR {
    private boolean hpZ;
    private final MQ pA;

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void Qhi(FrameLayout frameLayout) {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void ROR() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public boolean Tgh() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    protected boolean aP() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public boolean fl() {
        return true;
    }

    public Tgh(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        super(qhi);
        this.pA = (MQ) qhi.cJ;
    }

    public static void Qhi(tP tPVar, boolean z, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("is_backup", Boolean.valueOf(z));
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi("choose_ad_start_show", tPVar, str, hashMap);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("req_id", tPVar.jWV());
            jSONObject.put("is_backup", z);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi("choose_ad_start_show", jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void Qhi(RewardFullBaseLayout rewardFullBaseLayout) {
        if (ac.Qhi(this.pA)) {
            ac.Qhi(this.pA, rewardFullBaseLayout, this.Qhi);
        } else {
            super.Qhi(rewardFullBaseLayout);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.Qhi
    public boolean cJ() {
        return this.hpZ;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void pM() {
        NFd jsObject;
        if (this.Qhi.FQ.isFinishing()) {
            return;
        }
        if (this.Qhi.pM.Sf() || this.hpZ) {
            super.pM();
            if (this.Qhi.pM.Sf()) {
                Eh();
                this.Qhi.zn.cJ();
                return;
            }
            return;
        }
        FullRewardExpressView Qhi = this.Qhi.pM.Qhi();
        if (Qhi == null || (jsObject = Qhi.getJsObject()) == null) {
            return;
        }
        jsObject.Qhi(this);
    }

    @Override // com.bytedance.sdk.openadsdk.WAv.ROR
    public void Qhi(int i, long j) {
        this.hpZ = true;
        int i2 = i - 1;
        this.pA.jPH(i2);
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.pA, this.Qhi.fl, i, j);
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi(this.pA.XJ(), i2, this.Qhi.CJ);
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.cJ.Tgh.1
            @Override // java.lang.Runnable
            public void run() {
                Tgh.this.pM();
                if (Tgh.this.Qhi.jPH) {
                    Tgh.this.Eh();
                    Tgh.this.Qhi.zn.cJ();
                    return;
                }
                Tgh.Qhi Tgh = Tgh.this.Qhi.zn.Tgh();
                if (Tgh != null) {
                    Tgh.hpZ();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.WAv.ROR
    public void Qhi(pA pAVar) {
        this.Qhi.pM.Qhi().cJ(pAVar);
    }

    public void cJ(boolean z) {
        if (this.hpZ) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("has_focus", Boolean.valueOf(z));
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi("choose_ad_focus_changed", this.pA, this.Qhi.fl, hashMap);
    }
}
