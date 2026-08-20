package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.Dww;
import com.bytedance.sdk.openadsdk.core.model.HzH;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.qMt;
import com.explorestack.iab.vast.VastError;
/* loaded from: classes2.dex */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {
    private static com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ zc;
    private boolean ABk;
    private com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ Gm;

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean HzH() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void iMK() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        zc = this.Gm;
        super.onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        FullRewardExpressView Qhi;
        super.onResume();
        if (this.cJ == null || (Qhi = this.cJ.pM.Qhi()) == null) {
            return;
        }
        Qhi.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.ac() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.ac
            public void Qhi() {
                TTFullScreenVideoActivity.this.tP();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.cJ == null || tP.fl(this.cJ.cJ)) {
            return;
        }
        com.bykv.vk.openvk.component.video.api.ac.cJ FQ = this.cJ.cJ.FQ();
        if (FQ == null) {
            com.bykv.vk.openvk.component.video.api.ac.cJ cJVar = new com.bykv.vk.openvk.component.video.api.ac.cJ();
            cJVar.Qhi(10.0d);
            this.cJ.cJ.Qhi(cJVar);
        } else if (FQ.Tgh() <= 0.0d) {
            FQ.Qhi(10.0d);
        }
    }

    private void Qhi(final String str) {
        lG.ac(new hm("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTFullScreenVideoActivity.this.cJ(1).executeFullVideoCallback(TTFullScreenVideoActivity.this.cJ.MND, str);
                } catch (Throwable th) {
                    ABk.Qhi("TTAD.FSVA", "fullscreen_interstitial_ad", "executeFullVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public void Qhi(Intent intent) {
        super.Qhi(intent);
        this.cJ.ots = intent.getBooleanExtra("is_verity_playable", false);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(Bundle bundle) {
        if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            this.Gm = Dww.Qhi().CJ();
        }
        if (this.Gm != null || bundle == null) {
            return;
        }
        this.Gm = zc;
        zc = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void hpZ() {
        final View WAv = this.cJ.es.WAv();
        if (WAv != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.3
                /* JADX WARN: Removed duplicated region for block: B:30:0x00db A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:31:0x00dc  */
                @Override // android.view.View.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onClick(android.view.View r5) {
                    /*
                        Method dump skipped, instructions count: 253
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.AnonymousClass3.onClick(android.view.View):void");
                }
            };
            WAv.setOnClickListener(onClickListener);
            WAv.setTag(WAv.getId(), onClickListener);
        }
        this.cJ.js.Qhi(new com.bytedance.sdk.openadsdk.component.reward.top.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void Qhi(View view) {
                if (bxS.ac(TTFullScreenVideoActivity.this.cJ.cJ) && (bxS.Gm(TTFullScreenVideoActivity.this.cJ.cJ) || TTFullScreenVideoActivity.this.cJ.WAv.get())) {
                    if (TTFullScreenVideoActivity.this.cJ.CQU.tP()) {
                        TTFullScreenVideoActivity.this.cJ.CQU.cJ(5);
                    } else {
                        TTFullScreenVideoActivity.this.cJ.lG.ROR();
                    }
                } else if (bxS.Gm(TTFullScreenVideoActivity.this.cJ.cJ) || (HzH.Qhi(TTFullScreenVideoActivity.this.cJ.cJ) && !TTFullScreenVideoActivity.this.cJ.hpZ.get())) {
                    if (!bxS.ac(TTFullScreenVideoActivity.this.cJ.cJ) && TTFullScreenVideoActivity.this.cJ.CQU.tP()) {
                        TTFullScreenVideoActivity.this.cJ.CQU.cJ(4);
                    }
                    TTFullScreenVideoActivity.this.finish();
                } else if (TTFullScreenVideoActivity.this.cJ.cJ.Em()) {
                    if (TTFullScreenVideoActivity.this.cJ.es.Gm() != null) {
                        TTFullScreenVideoActivity.this.cJ.cJ.Jma(2);
                        TTFullScreenVideoActivity.this.cJ.es.HzH();
                    }
                } else {
                    if (!TTFullScreenVideoActivity.this.cJ.ac && TTFullScreenVideoActivity.this.cJ.cJ.YCN() && !TTFullScreenVideoActivity.this.cJ.cJ.IC()) {
                        TTFullScreenVideoActivity.this.cJ.cJ.Jma(13);
                        try {
                            TTFullScreenVideoActivity.this.cJ.es.HzH();
                            return;
                        } catch (Exception unused) {
                        }
                    }
                    hpZ.Qhi qhi = new hpZ.Qhi();
                    qhi.Qhi(TTFullScreenVideoActivity.this.cJ.bxS.ROR());
                    qhi.ac(TTFullScreenVideoActivity.this.cJ.bxS.tP());
                    qhi.cJ(TTFullScreenVideoActivity.this.cJ.bxS.Gm());
                    qhi.ac(3);
                    qhi.CJ(TTFullScreenVideoActivity.this.cJ.bxS.kYc());
                    com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(TTFullScreenVideoActivity.this.cJ.bxS.ac(), qhi, TTFullScreenVideoActivity.this.cJ.bxS.Qhi());
                    com.bytedance.sdk.openadsdk.core.bxS.ac(TTFullScreenVideoActivity.this.cJ.Tgh);
                    TTFullScreenVideoActivity.this.cJ.bxS.Qhi("skip", false);
                    TTFullScreenVideoActivity.this.cJ.js.CJ(false);
                    if (TTFullScreenVideoActivity.this.cJ.ac) {
                        TTFullScreenVideoActivity.this.Qhi(true, 4);
                    } else {
                        TTFullScreenVideoActivity.this.finish();
                    }
                    if (TTFullScreenVideoActivity.this.cJ.cJ != null && TTFullScreenVideoActivity.this.cJ.cJ.cJP() != null && TTFullScreenVideoActivity.this.cJ.bxS != null) {
                        TTFullScreenVideoActivity.this.cJ.cJ.cJP().Qhi().Tgh(TTFullScreenVideoActivity.this.cJ.bxS.ROR());
                        TTFullScreenVideoActivity.this.cJ.cJ.cJP().Qhi().fl(TTFullScreenVideoActivity.this.cJ.bxS.ROR());
                    }
                    com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(TTFullScreenVideoActivity.this.cJ.cJ, 5);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void cJ(View view) {
                TTFullScreenVideoActivity.this.cJ.dIT = !TTFullScreenVideoActivity.this.cJ.dIT;
                if (TTFullScreenVideoActivity.this.ac != null && TTFullScreenVideoActivity.this.ac.CJ() != null) {
                    TTFullScreenVideoActivity.this.ac.CJ().Qhi(TTFullScreenVideoActivity.this.cJ.dIT);
                }
                TTFullScreenVideoActivity.this.cJ.bxS.cJ(TTFullScreenVideoActivity.this.cJ.dIT);
                if (!bxS.zc(TTFullScreenVideoActivity.this.cJ.cJ) || TTFullScreenVideoActivity.this.cJ.WAv.get()) {
                    if (bxS.cJ(TTFullScreenVideoActivity.this.cJ.cJ)) {
                        TTFullScreenVideoActivity.this.cJ.lB.Qhi(TTFullScreenVideoActivity.this.cJ.dIT, true);
                    }
                    TTFullScreenVideoActivity.this.cJ.lG.CJ(TTFullScreenVideoActivity.this.cJ.dIT);
                    if (TTFullScreenVideoActivity.this.cJ.cJ == null || TTFullScreenVideoActivity.this.cJ.cJ.cJP() == null || TTFullScreenVideoActivity.this.cJ.cJ.cJP().Qhi() == null || TTFullScreenVideoActivity.this.cJ.bxS == null) {
                        return;
                    }
                    if (TTFullScreenVideoActivity.this.cJ.dIT) {
                        TTFullScreenVideoActivity.this.cJ.cJ.cJP().Qhi().Sf(TTFullScreenVideoActivity.this.cJ.bxS.ROR());
                    } else {
                        TTFullScreenVideoActivity.this.cJ.cJ.cJP().Qhi().hm(TTFullScreenVideoActivity.this.cJ.bxS.ROR());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void ac(View view) {
                TTFullScreenVideoActivity.this.cJ.sDy.Qhi(TTFullScreenVideoActivity.this.ac);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void CJ(View view) {
                View view2 = WAv;
                if (view2 != null) {
                    view2.performClick();
                }
            }
        });
    }

    public boolean Qhi(long j, boolean z) {
        Sf sf = new Sf();
        sf.Qhi(System.currentTimeMillis(), 1.0f);
        if (this.ac != null && (this.ac instanceof com.bytedance.sdk.openadsdk.component.reward.cJ.hm)) {
            this.cJ.bxS.Qhi(((com.bytedance.sdk.openadsdk.component.reward.cJ.hm) this.ac).NFd(), sf);
        } else {
            this.cJ.bxS.Qhi(this.cJ.es.Tgh(), sf);
        }
        fl.Qhi qhi = new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.5
            boolean Qhi;

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, int i) {
                if (this.Qhi) {
                    return;
                }
                this.Qhi = true;
                TTFullScreenVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTFullScreenVideoActivity.this.pA();
                TTFullScreenVideoActivity.this.cJ.bxS.Qhi(j2, j2);
                TTFullScreenVideoActivity.this.cJ.tP.set(true);
                if (TTFullScreenVideoActivity.this.cJ.cJ.hpZ() == 36 && TTFullScreenVideoActivity.this.cJ.ac) {
                    TTFullScreenVideoActivity.this.cJ.Dww.ac().CJ();
                    com.bytedance.sdk.openadsdk.utils.ABk.cJ();
                }
                if (TTFullScreenVideoActivity.this.cJ.cJ.YAV()) {
                    TTFullScreenVideoActivity.this.cJ.cJ.Jma(1);
                    TTFullScreenVideoActivity.this.cJ.es.HzH();
                }
                if (TTFullScreenVideoActivity.this.cJ.cJ.hpZ() == 21 && !TTFullScreenVideoActivity.this.cJ.cJ.CJ()) {
                    TTFullScreenVideoActivity.this.cJ.cJ.cJ(true);
                    TTFullScreenVideoActivity.this.cJ.es.HzH();
                }
                if (TTFullScreenVideoActivity.this.cJ.ac) {
                    if (TTFullScreenVideoActivity.this.cJ.cJ.TGC()) {
                        TTFullScreenVideoActivity.this.cJ.js.ac();
                        return;
                    }
                    TTFullScreenVideoActivity.this.Qhi(false, 5);
                    if (HzH.cJ(TTFullScreenVideoActivity.this.cJ.cJ) && TTFullScreenVideoActivity.this.cJ.gga != null) {
                        TTFullScreenVideoActivity.this.cJ.gga.Qhi(0L);
                    }
                    if (tP.fl(TTFullScreenVideoActivity.this.cJ.cJ)) {
                        return;
                    }
                    TTFullScreenVideoActivity.this.cJ.bxS.Qhi("skip", true);
                } else if (TTFullScreenVideoActivity.this.cJ.cJ.TGC()) {
                    TTFullScreenVideoActivity.this.cJ.js.ac();
                } else {
                    if (!tP.fl(TTFullScreenVideoActivity.this.cJ.cJ)) {
                        TTFullScreenVideoActivity.this.cJ.bxS.Qhi("skip", true);
                    }
                    TTFullScreenVideoActivity.this.finish();
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void cJ(long j2, int i) {
                TTFullScreenVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (TTFullScreenVideoActivity.this.cJ.bxS.cJ()) {
                    TTFullScreenVideoActivity.this.ABk();
                    return;
                }
                TTFullScreenVideoActivity.this.cJ.bxS.ABk();
                ABk.Qhi("TTAD.FSVA", "fullscreen_interstitial_ad", "onError、、、、、、、、");
                if (TTFullScreenVideoActivity.this.cJ.ac) {
                    TTFullScreenVideoActivity.this.Qhi(false, true, 3);
                    TTFullScreenVideoActivity.this.cJ.bxS.Qhi(!TTFullScreenVideoActivity.this.cJ.bxS.Eh(), 2);
                    return;
                }
                TTFullScreenVideoActivity.this.finish();
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi() {
                TTFullScreenVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTFullScreenVideoActivity.this.pA();
                new Object[]{"fullscreen_interstitial_ad", "onTimeOut、、、、、、、、"};
                if (TTFullScreenVideoActivity.this.cJ.ac) {
                    TTFullScreenVideoActivity.this.Qhi(false, true, 6);
                } else {
                    TTFullScreenVideoActivity.this.finish();
                }
                TTFullScreenVideoActivity.this.cJ.bxS.Qhi(!TTFullScreenVideoActivity.this.cJ.bxS.Eh(), 1 ^ TTFullScreenVideoActivity.this.cJ.bxS.Eh());
                TTFullScreenVideoActivity.this.cJ.bxS.ABk();
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, long j3) {
                if (!TTFullScreenVideoActivity.this.cJ.Qe && TTFullScreenVideoActivity.this.cJ.bxS.cJ()) {
                    TTFullScreenVideoActivity.this.cJ.bxS.pA();
                }
                if (TTFullScreenVideoActivity.this.cJ.WAv.get()) {
                    return;
                }
                TTFullScreenVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (j2 != TTFullScreenVideoActivity.this.cJ.bxS.Sf()) {
                    TTFullScreenVideoActivity.this.pA();
                }
                TTFullScreenVideoActivity.this.cJ.bxS.Qhi(j2, j3);
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                long j4 = j2 / 1000;
                tTFullScreenVideoActivity.Tgh = (int) (tTFullScreenVideoActivity.cJ.bxS.aP() - j4);
                int i = (int) j4;
                if ((TTFullScreenVideoActivity.this.cJ.MQ.get() || TTFullScreenVideoActivity.this.cJ.Gm.get()) && TTFullScreenVideoActivity.this.cJ.bxS.cJ()) {
                    TTFullScreenVideoActivity.this.cJ.bxS.pA();
                }
                TTFullScreenVideoActivity.this.ac(i);
                if (TTFullScreenVideoActivity.this.Tgh >= 0) {
                    TTFullScreenVideoActivity.this.cJ.js.Qhi(String.valueOf(TTFullScreenVideoActivity.this.Tgh), null);
                }
            }
        };
        this.cJ.bxS.Qhi(qhi);
        if (this.cJ.es.pA != null) {
            this.cJ.es.pA.Qhi(qhi);
        }
        return this.cJ.bxS.Qhi(j, z, null, this.ac);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ac(int i) {
        int tP = com.bytedance.sdk.openadsdk.core.HzH.CJ().tP(String.valueOf(this.cJ.Tgh));
        if (!com.bytedance.sdk.openadsdk.core.HzH.CJ().Tgh(String.valueOf(this.cJ.Tgh)) || (!tP.fl(this.cJ.cJ) && !this.cJ.ac)) {
            if (i >= tP) {
                if (!this.cJ.zjb) {
                    this.cJ.Qhi(true);
                }
                Qhi();
                return;
            }
            return;
        }
        if (!this.cJ.zjb) {
            this.cJ.Qhi(true);
        }
        if (i <= tP) {
            CJ(tP - i);
            this.cJ.js.fl(false);
            return;
        }
        Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Qhi() {
        if (!tP.fl(this.cJ.cJ) && !this.cJ.ac) {
            this.cJ.js.Qhi(null, "X");
        } else {
            this.cJ.js.Qhi(null, TTAdDislikeToast.getSkipText());
        }
        this.cJ.js.fl(true);
    }

    private void CJ(int i) {
        this.cJ.js.Qhi(null, String.format(MQ.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), "tt_skip_ad_time_text"), Integer.valueOf(i)));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void c_() {
        if (this.cJ.cJ.Oy() != 100.0f) {
            this.ABk = true;
        }
        tP();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void fl() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdShow");
        } else {
            com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar = this.Gm;
            if (cJVar != null) {
                cJVar.Qhi();
            }
        }
        if (kYc()) {
            this.cJ.pM.WAv();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void CJ() {
        tP();
        this.cJ.cJ.wI();
        this.cJ.cJ.Qhi(true);
        if (tP.fl(this.cJ.cJ)) {
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.cJ.cJ, this.cJ.fl, this.cJ.cJ.gSh());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tP() {
        qMt.Qhi("BVA", "invoke callback onAdClicked, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdVideoBarClick");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar = this.Gm;
        if (cJVar != null) {
            cJVar.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        if (this.cJ != null) {
            this.cJ.CQU.cJ(this.cJ.ots);
        }
        try {
            MQ();
        } catch (Exception unused) {
        }
        super.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MQ();
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("recycleRes");
        }
        this.Gm = null;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        zc = null;
    }

    private void MQ() {
        if (this.Sf) {
            return;
        }
        this.Sf = true;
        qMt.Qhi("BVA", "invoke callback onAdClose, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdClose");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar = this.Gm;
        if (cJVar != null) {
            cJVar.cJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.cJ == null || !cJ(this.cJ.cJ) || Qhi(this.cJ.cJ)) {
            return;
        }
        if (this.ABk) {
            this.ABk = false;
            finish();
        } else if (this.cJ.lG.lB()) {
            finish();
        }
    }

    private boolean Qhi(tP tPVar) {
        return tPVar == null || tPVar.Oy() == 100.0f;
    }

    private boolean cJ(tP tPVar) {
        if (tPVar == null) {
            return false;
        }
        return com.bytedance.sdk.openadsdk.core.HzH.CJ().MQ(String.valueOf(this.cJ.Tgh));
    }
}
