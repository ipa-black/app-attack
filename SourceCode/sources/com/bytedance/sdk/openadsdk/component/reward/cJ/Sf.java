package com.bytedance.sdk.openadsdk.component.reward.cJ;

import android.app.Activity;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.component.reward.view.RatioImageView;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.js;
import java.util.HashMap;
import java.util.List;
/* compiled from: RewardFullTypeImage.java */
/* loaded from: classes2.dex */
public class Sf extends cJ {
    private RatioImageView HzH;
    private ViewGroup hpZ;
    private String kYc;
    private final int pA;

    public Sf(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        super(qhi);
        this.kYc = "fullscreen_interstitial_ad";
        this.pA = this.cJ.gga();
    }

    private void NFd() {
        FrameLayout.LayoutParams layoutParams;
        FrameLayout frameLayout = new FrameLayout(this.Qhi.FQ);
        this.hpZ = frameLayout;
        frameLayout.setId(iMK.jN);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        this.hpZ.setLayoutParams(layoutParams2);
        View Gm = this.Qhi.es.Gm();
        if (Gm != null) {
            layoutParams2.bottomMargin = Gm.getHeight();
        }
        RatioImageView ratioImageView = new RatioImageView(this.Qhi.FQ);
        this.HzH = ratioImageView;
        ratioImageView.setId(iMK.TKG);
        if (this.Qhi.cJ.SL() == 1) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -1);
        }
        layoutParams.gravity = 17;
        this.HzH.setLayoutParams(layoutParams);
        this.hpZ.addView(this.HzH);
        sDy();
    }

    private void sDy() {
        if (this.hpZ == null) {
            return;
        }
        Qhi((View) this.HzH);
    }

    private void cJ(tP tPVar) {
        RatioImageView ratioImageView;
        if (tPVar == null || (ratioImageView = this.HzH) == null) {
            return;
        }
        int i = this.pA;
        if (i == 33) {
            ratioImageView.setRatio(1.0f);
        } else if (i == 3) {
            ratioImageView.setRatio(1.91f);
        } else {
            ratioImageView.setRatio(0.56f);
        }
        Qhi((ImageView) this.HzH);
    }

    private void Qhi(ImageView imageView) {
        List<hpZ> cjC;
        hpZ hpz;
        if (this.cJ == null || (cjC = this.cJ.cjC()) == null || cjC.size() <= 0 || (hpz = cjC.get(0)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ROR.fl.Qhi(cjC.get(0)).ac(2).Qhi(com.bytedance.sdk.openadsdk.ROR.ac.Qhi(this.cJ, hpz.Qhi(), imageView));
    }

    protected void Qhi(View view) {
        com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar;
        if (view == null || this.Qhi.FQ == null || this.cJ == null) {
            return;
        }
        if (this.zc == null) {
            Activity activity = this.Qhi.FQ;
            tP tPVar = this.cJ;
            String str = this.kYc;
            cJVar = new com.bytedance.sdk.openadsdk.core.cJ.Qhi(activity, tPVar, str, js.Qhi(str));
            cJVar.Qhi(ac(this.cJ));
            HashMap hashMap = new HashMap();
            if (bxS.Gm(this.cJ)) {
                hashMap.put("click_scence", 3);
            } else {
                hashMap.put("click_scence", 1);
            }
            cJVar.Qhi(hashMap);
        } else {
            cJVar = this.zc;
        }
        if (this.Qhi.FQ != null) {
            cJVar.Qhi(this.Qhi.FQ);
        }
        view.setOnTouchListener(cJVar);
        view.setOnClickListener(cJVar);
    }

    private com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl ac(tP tPVar) {
        if (tPVar.ip() == 4) {
            return new com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.ac(HzH.Qhi(), tPVar, this.kYc);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void Qhi(FrameLayout frameLayout) {
        try {
            NFd();
            cJ(this.cJ);
            frameLayout.addView(this.hpZ);
        } catch (Exception e2) {
            Log.e("TTAD.RFTI", "bindAd: ", e2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void Qhi(RewardFullBaseLayout rewardFullBaseLayout) {
        if (com.bytedance.sdk.openadsdk.core.model.HzH.cJ(this.cJ)) {
            ac.cJ(rewardFullBaseLayout);
            this.Qhi.gga.Qhi((long) (this.Qhi.bxS.aP() * 1000.0d));
        } else if (com.bytedance.sdk.openadsdk.core.model.HzH.ac(this.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.cJ)) {
            ac.ac(rewardFullBaseLayout);
            this.Qhi.gga.Qhi((long) (this.Qhi.bxS.aP() * 1000.0d));
        } else {
            super.Qhi(rewardFullBaseLayout);
        }
    }

    public static boolean Qhi(tP tPVar) {
        return !tP.fl(tPVar) && tPVar.Oy() == 100.0f;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public boolean fl() {
        return lB() || bxS.cJ(this.cJ);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public boolean Tgh() {
        return lB();
    }

    private boolean lB() {
        return this.cJ != null && this.cJ.EBS() == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void ROR() {
        if (com.bytedance.sdk.openadsdk.core.model.HzH.cJ(this.cJ)) {
            this.Tgh.cJ(8);
        }
        this.Sf.ac(false);
        this.Sf.CJ(false);
        if (this.cJ.EBS() == 2) {
            this.Sf.Qhi(false);
            this.Tgh.fl(8);
            return;
        }
        this.Sf.Qhi(this.cJ.rB());
        if (this.Qhi.EGK) {
            Message obtain = Message.obtain();
            obtain.what = 900;
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.Qhi;
            int aP = (int) (this.Qhi.bxS.aP() * 1000.0d);
            qhi.hm = aP;
            obtain.arg1 = aP;
            this.Qhi.xyz.sendMessage(obtain);
        }
    }
}
