package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.utils.hpZ;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.Dww;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.MQ;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.qMt;
import com.explorestack.iab.vast.VastError;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private static String HzH;
    private static String hpZ;
    private static String iMK;
    private static String kYc;
    private static String pA;
    private static com.bytedance.sdk.openadsdk.apiImpl.CJ.ac qMt;
    protected com.bytedance.sdk.openadsdk.apiImpl.CJ.ac ABk;
    private boolean Dww;
    protected int Gm;
    private String MQ;
    private String tP;
    protected int zc;
    private final AtomicBoolean EBS = new AtomicBoolean(false);
    private int bxS = -1;

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean HzH() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        qMt = this.ABk;
        if (this.EBS.get() && this.cJ != null) {
            this.cJ.cJ.id();
        }
        super.onSaveInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            if (iMK == null) {
                iMK = MQ.Qhi(this, "tt_reward_msg");
                pA = MQ.Qhi(this, "tt_msgPlayable");
                hpZ = MQ.Qhi(this, "tt_negtiveBtnBtnText");
                HzH = MQ.Qhi(this, "tt_postiveBtnText");
                kYc = MQ.Qhi(this, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th) {
            ABk.Qhi("TTAD.RVA", th.getMessage());
        }
        if (bundle == null || this.cJ == null || !this.cJ.cJ.yoW()) {
            return;
        }
        this.EBS.set(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        FullRewardExpressView Qhi;
        super.onResume();
        if (this.cJ == null || (Qhi = this.cJ.pM.Qhi()) == null) {
            return;
        }
        Qhi.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.ac() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.ac
            public void Qhi() {
                TTRewardVideoActivity.this.qMt();
            }
        });
    }

    protected void Qhi(String str) {
        Qhi(str, false, 0, "", 0, "");
    }

    protected void finalize() throws Throwable {
        super.finalize();
        qMt = null;
    }

    private void Qhi(final String str, final boolean z, final int i, final String str2, final int i2, final String str3) {
        lG.ac(new hm("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTRewardVideoActivity.this.cJ(0).executeRewardVideoCallback(TTRewardVideoActivity.this.cJ.MND, str, z, i, str2, i2, str3);
                } catch (Throwable th) {
                    ABk.Qhi("TTAD.RVA", "rewarded_video", "executeRewardVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(Bundle bundle) {
        if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            this.ABk = Dww.Qhi().ac();
        }
        if (this.ABk != null || bundle == null) {
            return;
        }
        this.ABk = qMt;
        qMt = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Qhi() {
        this.cJ.js.Qhi(null, TTAdDislikeToast.getSkipText());
        this.cJ.js.fl(true);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void hpZ() {
        final View WAv = this.cJ.es.WAv();
        if (WAv != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.3
                /* JADX WARN: Removed duplicated region for block: B:30:0x00dc A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:31:0x00dd  */
                @Override // android.view.View.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onClick(android.view.View r5) {
                    /*
                        Method dump skipped, instructions count: 284
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.AnonymousClass3.onClick(android.view.View):void");
                }
            };
            WAv.setOnClickListener(onClickListener);
            WAv.setTag(WAv.getId(), onClickListener);
        }
        this.cJ.js.Qhi(new com.bytedance.sdk.openadsdk.component.reward.top.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void Qhi(View view) {
                if (TTRewardVideoActivity.this.cJ.cJ.Em()) {
                    if (TTRewardVideoActivity.this.cJ.es.Gm() != null) {
                        TTRewardVideoActivity.this.cJ.cJ.Jma(2);
                        TTRewardVideoActivity.this.cJ.es.HzH();
                        return;
                    }
                    return;
                }
                if (!TTRewardVideoActivity.this.cJ.ac && TTRewardVideoActivity.this.cJ.cJ.YCN() && !TTRewardVideoActivity.this.cJ.cJ.IC()) {
                    TTRewardVideoActivity.this.cJ.cJ.Jma(13);
                    try {
                        TTRewardVideoActivity.this.cJ.es.HzH();
                        return;
                    } catch (Exception unused) {
                    }
                }
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                tTRewardVideoActivity.Qhi(bxS.Gm(tTRewardVideoActivity.cJ.cJ), false);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void cJ(View view) {
                if (TTRewardVideoActivity.this.ac != null && TTRewardVideoActivity.this.ac.CJ() != null) {
                    TTRewardVideoActivity.this.ac.CJ().Qhi(TTRewardVideoActivity.this.cJ.dIT);
                }
                TTRewardVideoActivity.this.cJ.dIT = !TTRewardVideoActivity.this.cJ.dIT;
                new Object[]{"rewarded_video", "will set is Mute " + TTRewardVideoActivity.this.cJ.dIT + " mLastVolume=" + TTRewardVideoActivity.this.cJ.lB.Qhi()};
                TTRewardVideoActivity.this.cJ.bxS.cJ(TTRewardVideoActivity.this.cJ.dIT);
                if (!bxS.zc(TTRewardVideoActivity.this.cJ.cJ) || TTRewardVideoActivity.this.cJ.WAv.get()) {
                    if (bxS.cJ(TTRewardVideoActivity.this.cJ.cJ)) {
                        TTRewardVideoActivity.this.cJ.lB.Qhi(TTRewardVideoActivity.this.cJ.dIT, true);
                    }
                    TTRewardVideoActivity.this.cJ.lG.CJ(TTRewardVideoActivity.this.cJ.dIT);
                    if (TTRewardVideoActivity.this.cJ.cJ == null || TTRewardVideoActivity.this.cJ.cJ.cJP() == null || TTRewardVideoActivity.this.cJ.cJ.cJP().Qhi() == null || TTRewardVideoActivity.this.cJ.bxS == null) {
                        return;
                    }
                    if (TTRewardVideoActivity.this.cJ.dIT) {
                        TTRewardVideoActivity.this.cJ.cJ.cJP().Qhi().Sf(TTRewardVideoActivity.this.cJ.bxS.ROR());
                    } else {
                        TTRewardVideoActivity.this.cJ.cJ.cJP().Qhi().hm(TTRewardVideoActivity.this.cJ.bxS.ROR());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void ac(View view) {
                TTRewardVideoActivity.this.cJ.sDy.Qhi(TTRewardVideoActivity.this.ac);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final boolean z, boolean z2) {
        if (!z2 && this.Dww && this.cJ.WAv.get() && bxS.ac(this.cJ.cJ)) {
            this.cJ.lG.ROR();
        } else if (!HzH.CJ().Sf(String.valueOf(this.cJ.Tgh))) {
            if (!z2 && this.cJ.WAv.get() && bxS.ac(this.cJ.cJ)) {
                this.cJ.lG.ROR();
            } else if (z) {
                finish();
            } else {
                MQ();
            }
        } else if (this.EBS.get()) {
            if (this.cJ.WAv.get() && bxS.ac(this.cJ.cJ)) {
                this.cJ.lG.ROR();
            } else if (z) {
                finish();
            } else {
                MQ();
            }
        } else if (bxS.ac(this.cJ.cJ) && this.cJ.lG.hm().getVisibility() == 0) {
            this.cJ.lG.ROR();
        } else {
            this.cJ.MQ.set(true);
            this.cJ.bxS.pA();
            if (z) {
                this.cJ.CQU.pA();
            }
            final com.bytedance.sdk.openadsdk.core.widget.Qhi qhi = new com.bytedance.sdk.openadsdk.core.widget.Qhi(this);
            this.ac.ABk = qhi;
            if (z) {
                this.ac.ABk.Qhi(pA).cJ(kYc).ac(hpZ);
            } else {
                this.ac.ABk.Qhi(iMK).cJ(HzH).ac(hpZ);
            }
            this.ac.ABk.Qhi(new Qhi.InterfaceC0237Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.InterfaceC0237Qhi
                public void Qhi() {
                    TTRewardVideoActivity.this.cJ.bxS.iMK();
                    if (z) {
                        TTRewardVideoActivity.this.cJ.CQU.Qhi(1000L);
                    }
                    qhi.dismiss();
                    TTRewardVideoActivity.this.cJ.MQ.set(false);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.InterfaceC0237Qhi
                public void cJ() {
                    qhi.dismiss();
                    TTRewardVideoActivity.this.Dww = true;
                    TTRewardVideoActivity.this.cJ.MQ.set(false);
                    TTRewardVideoActivity.this.cJ.CQU.Tgh(Integer.MAX_VALUE);
                    if (!z) {
                        TTRewardVideoActivity.this.MQ();
                    } else if (bxS.ac(TTRewardVideoActivity.this.cJ.cJ)) {
                        if (TTRewardVideoActivity.this.cJ.CQU.tP()) {
                            TTRewardVideoActivity.this.cJ.CQU.cJ(5);
                        } else {
                            TTRewardVideoActivity.this.cJ.lG.ROR();
                        }
                    } else {
                        TTRewardVideoActivity.this.cJ.aP.Tgh();
                        if (TTRewardVideoActivity.this.cJ.CQU.tP()) {
                            TTRewardVideoActivity.this.cJ.CQU.cJ(4);
                        }
                        TTRewardVideoActivity.this.finish();
                    }
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0076, code lost:
        if (r3.cJ.hpZ.get() == false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void MQ() {
        /*
            r3 = this;
            com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ$Qhi r0 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ$Qhi
            r0.<init>()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.ROR()
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.tP()
            r0.ac(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.Gm()
            r0.cJ(r1)
            r1 = 3
            r0.ac(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            int r1 = r1.kYc()
            r0.CJ(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            com.bykv.vk.openvk.component.video.api.cJ.Qhi r1 = r1.ac()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r2 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r2 = r2.bxS
            com.bytedance.sdk.openadsdk.cJ.Sf r2 = r2.Qhi()
            com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(r1, r0, r2)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.cJ
            int r0 = r0.Tgh
            com.bytedance.sdk.openadsdk.core.bxS.ac(r0)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r0 = r0.bxS
            java.lang.String r1 = "skip"
            r2 = 0
            r0.Qhi(r1, r2)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.cJ
            boolean r0 = r0.ac
            if (r0 == 0) goto L78
            r0 = 1
            r1 = 4
            r3.Qhi(r0, r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.cJ
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.HzH.Qhi(r0)
            if (r0 == 0) goto L7b
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.cJ
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.hpZ
            boolean r0 = r0.get()
            if (r0 != 0) goto L7b
        L78:
            r3.finish()
        L7b:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.cJ
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            com.bytedance.sdk.openadsdk.core.ROR.Qhi r0 = r0.cJP()
            if (r0 == 0) goto L97
            com.bytedance.sdk.openadsdk.core.ROR.fl r0 = r0.Qhi()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.ROR()
            r0.Tgh(r1)
            r0.fl(r1)
        L97:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.cJ
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            r1 = 5
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.MQ():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public void Qhi(Intent intent) {
        super.Qhi(intent);
        this.tP = intent.getStringExtra("media_extra");
        this.MQ = intent.getStringExtra("user_id");
    }

    public boolean Qhi(long j, boolean z) {
        Sf sf = new Sf();
        sf.Qhi(System.currentTimeMillis(), 1.0f);
        this.cJ.bxS.Qhi(this.cJ.es.Tgh(), sf);
        fl.Qhi qhi = new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.6
            boolean Qhi;

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, int i) {
                if (this.Qhi) {
                    return;
                }
                this.Qhi = true;
                TTRewardVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTRewardVideoActivity.this.pA();
                TTRewardVideoActivity.this.tP();
                TTRewardVideoActivity.this.cJ.bxS.Qhi(j2, j2);
                TTRewardVideoActivity.this.cJ.tP.set(true);
                if (TTRewardVideoActivity.this.cJ.cJ.hpZ() == 36 && TTRewardVideoActivity.this.cJ.ac) {
                    TTRewardVideoActivity.this.cJ.Dww.ac().CJ();
                    com.bytedance.sdk.openadsdk.utils.ABk.cJ();
                }
                if (TTRewardVideoActivity.this.cJ.cJ.YAV()) {
                    TTRewardVideoActivity.this.cJ.cJ.Jma(1);
                    TTRewardVideoActivity.this.cJ.es.HzH();
                }
                if (TTRewardVideoActivity.this.cJ.cJ.hpZ() == 21 && !TTRewardVideoActivity.this.cJ.cJ.CJ()) {
                    TTRewardVideoActivity.this.cJ.cJ.cJ(true);
                    TTRewardVideoActivity.this.cJ.es.HzH();
                }
                TTRewardVideoActivity.this.zc = (int) (System.currentTimeMillis() / 1000);
                if (com.bytedance.sdk.openadsdk.core.model.HzH.ac(TTRewardVideoActivity.this.cJ.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.cJ(TTRewardVideoActivity.this.cJ.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.CJ(TTRewardVideoActivity.this.cJ.cJ)) {
                    TTRewardVideoActivity.this.Qhi(false, 5);
                    if (!com.bytedance.sdk.openadsdk.core.model.HzH.cJ(TTRewardVideoActivity.this.cJ.cJ) || TTRewardVideoActivity.this.cJ.gga == null) {
                        return;
                    }
                    TTRewardVideoActivity.this.cJ.gga.Qhi(0L);
                } else if (com.bytedance.sdk.openadsdk.core.model.HzH.Qhi(TTRewardVideoActivity.this.cJ.cJ) && !TTRewardVideoActivity.this.cJ.hpZ.get()) {
                    TTRewardVideoActivity.this.cJ.Qhi(true);
                    TTRewardVideoActivity.this.cJ.js.fl(true);
                } else if (TTRewardVideoActivity.this.cJ.ac) {
                    if (TTRewardVideoActivity.this.cJ.cJ.TGC()) {
                        TTRewardVideoActivity.this.cJ.js.ac();
                        return;
                    }
                    TTRewardVideoActivity.this.Qhi(false, 5);
                    if (tP.fl(TTRewardVideoActivity.this.cJ.cJ)) {
                        return;
                    }
                    TTRewardVideoActivity.this.cJ.bxS.Qhi("skip", true);
                } else if (TTRewardVideoActivity.this.cJ.cJ.TGC()) {
                    TTRewardVideoActivity.this.cJ.js.ac();
                } else {
                    if (!tP.fl(TTRewardVideoActivity.this.cJ.cJ)) {
                        TTRewardVideoActivity.this.cJ.bxS.Qhi("skip", true);
                    }
                    TTRewardVideoActivity.this.finish();
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void cJ(long j2, int i) {
                TTRewardVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (TTRewardVideoActivity.this.cJ.bxS.cJ()) {
                    TTRewardVideoActivity.this.ABk();
                    return;
                }
                TTRewardVideoActivity.this.cJ.bxS.ABk();
                TTRewardVideoActivity.this.tP();
                if (TTRewardVideoActivity.this.cJ.ac) {
                    TTRewardVideoActivity.this.Qhi(false, true, 3);
                } else {
                    TTRewardVideoActivity.this.finish();
                }
                TTRewardVideoActivity.this.cJ.bxS.Qhi(1 ^ TTRewardVideoActivity.this.cJ.bxS.Eh(), 2);
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi() {
                TTRewardVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTRewardVideoActivity.this.pA();
                TTRewardVideoActivity.this.tP();
                if (TTRewardVideoActivity.this.cJ.ac) {
                    TTRewardVideoActivity.this.Qhi(false, true, 6);
                } else {
                    TTRewardVideoActivity.this.finish();
                }
                TTRewardVideoActivity.this.cJ.bxS.Qhi(!TTRewardVideoActivity.this.cJ.bxS.Eh(), 1 ^ TTRewardVideoActivity.this.cJ.bxS.Eh());
                TTRewardVideoActivity.this.cJ.bxS.ABk();
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, long j3) {
                if (!TTRewardVideoActivity.this.cJ.Qe && TTRewardVideoActivity.this.cJ.bxS.cJ()) {
                    TTRewardVideoActivity.this.cJ.bxS.pA();
                }
                if (TTRewardVideoActivity.this.cJ.WAv.get()) {
                    return;
                }
                TTRewardVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (j2 != TTRewardVideoActivity.this.cJ.bxS.Sf()) {
                    TTRewardVideoActivity.this.pA();
                }
                TTRewardVideoActivity.this.cJ.bxS.Qhi(j2, j3);
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                long j4 = j2 / 1000;
                double d2 = j4;
                tTRewardVideoActivity.Tgh = (int) (tTRewardVideoActivity.cJ.bxS.aP() - d2);
                if (TTRewardVideoActivity.this.Tgh >= 0) {
                    TTRewardVideoActivity.this.cJ.js.Qhi(String.valueOf(TTRewardVideoActivity.this.Tgh), null);
                }
                TTRewardVideoActivity tTRewardVideoActivity2 = TTRewardVideoActivity.this;
                tTRewardVideoActivity2.Tgh = (int) (tTRewardVideoActivity2.cJ.bxS.aP() - d2);
                int i = (int) j4;
                int WAv = HzH.CJ().WAv(String.valueOf(TTRewardVideoActivity.this.cJ.Tgh));
                boolean z2 = WAv >= 0;
                if ((TTRewardVideoActivity.this.cJ.MQ.get() || TTRewardVideoActivity.this.cJ.Gm.get()) && TTRewardVideoActivity.this.cJ.bxS.cJ()) {
                    TTRewardVideoActivity.this.cJ.bxS.pA();
                }
                TTRewardVideoActivity.this.cJ.es.CJ(i);
                TTRewardVideoActivity.this.Qhi(j2, j3);
                if (TTRewardVideoActivity.this.Tgh > 0) {
                    TTRewardVideoActivity.this.cJ.js.CJ(true);
                    if (z2 && i >= WAv) {
                        TTRewardVideoActivity.this.cJ.Qhi(true);
                        TTRewardVideoActivity.this.cJ.js.Qhi(String.valueOf(TTRewardVideoActivity.this.Tgh), TTAdDislikeToast.getSkipText());
                        TTRewardVideoActivity.this.cJ.js.fl(true);
                        return;
                    }
                    TTRewardVideoActivity.this.cJ.js.Qhi(String.valueOf(TTRewardVideoActivity.this.Tgh), null);
                }
            }
        };
        this.cJ.bxS.Qhi(qhi);
        if (this.cJ.es.pA != null) {
            this.cJ.es.pA.Qhi(qhi);
        }
        boolean Qhi = this.cJ.bxS.Qhi(j, z, null, this.ac);
        if (Qhi && !z) {
            this.Gm = (int) (System.currentTimeMillis() / 1000);
        }
        return Qhi;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void c_() {
        qMt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void qMt() {
        qMt.Qhi("BVA", "invoke callback onAdClicked, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdVideoBarClick");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar = this.ABk;
        if (acVar != null) {
            acVar.onAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final boolean z, final int i, final String str, final int i2, final String str2) {
        qMt.Qhi("BVA", "invoke callback onRewardVerify: " + z + ", " + i + ", " + str + ", " + i2 + ", " + str2 + "; " + this);
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onRewardVerify", z, i, str, i2, str2);
        } else {
            this.CJ.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.7
                @Override // java.lang.Runnable
                public void run() {
                    if (TTRewardVideoActivity.this.ABk != null) {
                        TTRewardVideoActivity.this.ABk.Qhi(z, i, str, i2, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void fl() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdShow");
        } else {
            com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar = this.ABk;
            if (acVar != null) {
                acVar.Qhi();
            }
        }
        if (kYc()) {
            this.cJ.pM.WAv();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void zc() {
        tP();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tP() {
        if (this.EBS.get()) {
            return;
        }
        this.EBS.set(true);
        if (HzH.CJ().hpZ(String.valueOf(this.cJ.Tgh))) {
            Qhi(true, this.cJ.cJ.qMt(), this.cJ.cJ.MQ(), 0, "");
            return;
        }
        HzH.ac().Qhi(EBS(), new tP.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.8
            @Override // com.bytedance.sdk.openadsdk.core.tP.cJ
            public void Qhi(int i, String str) {
                TTRewardVideoActivity.this.Qhi(false, 0, "", i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.tP.cJ
            public void Qhi(MQ.cJ cJVar) {
                boolean z = cJVar.cJ;
                TTRewardVideoActivity.this.Qhi(cJVar.cJ, cJVar.ac.Qhi(), cJVar.ac.cJ(), 0, "");
            }
        });
    }

    private JSONObject EBS() {
        JSONObject jSONObject = new JSONObject();
        int MQ = (int) this.cJ.bxS.MQ();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("reward_name", this.cJ.cJ.MQ());
            jSONObject.put("reward_amount", this.cJ.cJ.qMt());
            jSONObject.put("network", hpZ.ac(getApplicationContext()));
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            int zn = this.cJ.cJ.zn();
            String str = "unKnow";
            if (zn == 2) {
                str = js.cJ();
            } else if (zn == 1) {
                str = js.ac();
            }
            jSONObject.put("user_agent", str);
            jSONObject.put("extra", this.cJ.cJ.KW());
            jSONObject.put("media_extra", this.tP);
            jSONObject.put("video_duration", this.cJ.cJ.FQ().Tgh());
            jSONObject.put("play_start_ts", this.Gm);
            jSONObject.put("play_end_ts", this.zc);
            jSONObject.put("duration", MQ);
            jSONObject.put("user_id", this.MQ);
            jSONObject.put("trans_id", com.bytedance.sdk.openadsdk.utils.bxS.Qhi().replace("-", ""));
            return jSONObject;
        } catch (Throwable th) {
            ABk.Qhi("TTAD.RVA", "", th);
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void CJ() {
        qMt();
        this.cJ.cJ.wI();
        this.cJ.cJ.Qhi(true);
        if (com.bytedance.sdk.openadsdk.core.model.tP.fl(this.cJ.cJ)) {
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.cJ.cJ, this.cJ.fl, this.cJ.cJ.gSh());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(int i) {
        if (i == 10000) {
            tP();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        bxS();
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("recycleRes");
        }
        this.ABk = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        bxS();
        super.finish();
    }

    private void bxS() {
        if (this.Sf) {
            return;
        }
        this.Sf = true;
        qMt.Qhi("BVA", "invoke callback onAdClose, ".concat(String.valueOf(this)));
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdClose");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar = this.ABk;
        if (acVar != null) {
            acVar.cJ();
        }
    }

    public void Qhi(long j, long j2) {
        long j3 = j + (this.cJ.YB * 1000);
        if (this.bxS == -1) {
            this.bxS = HzH.CJ().Eh(String.valueOf(this.cJ.Tgh)).Tgh;
        }
        if (j2 <= 0) {
            return;
        }
        if (j2 >= 30000 && j3 >= 27000) {
            tP();
        } else if (((float) (j3 * 100)) / ((float) j2) >= this.bxS) {
            tP();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0085, code lost:
        if (r1 != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0033, code lost:
        if (((1.0d - (r8.Tgh / r8.cJ.bxS.aP())) * 100.0d) >= r0) goto L6;
     */
    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void iMK() {
        /*
            r8 = this;
            com.bytedance.sdk.openadsdk.core.settings.ROR r0 = com.bytedance.sdk.openadsdk.core.HzH.CJ()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.cJ
            int r1 = r1.Tgh
            java.lang.String r1 = java.lang.String.valueOf(r1)
            com.bytedance.sdk.openadsdk.core.settings.cJ r0 = r0.Eh(r1)
            int r0 = r0.Tgh
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.cJ
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r1.cJ
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.bxS.zc(r1)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L39
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            double r4 = r1.aP()
            int r1 = r8.Tgh
            double r6 = (double) r1
            double r6 = r6 / r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r4 = r4 - r6
            r6 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r4 = r4 * r6
            double r0 = (double) r0
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L36
            goto L37
        L36:
            r2 = r3
        L37:
            r3 = r2
            goto L8b
        L39:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.cJ
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r1.cJ
            int r1 = r1.TKG()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r4 = r8.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf r4 = r4.CQU
            int r4 = r4.zc()
            float r4 = (float) r4
            float r1 = (float) r1
            float r4 = r4 / r1
            r1 = 1065353216(0x3f800000, float:1.0)
            float r1 = r1 - r4
            r4 = 1120403456(0x42c80000, float:100.0)
            float r1 = r1 * r4
            float r0 = (float) r0
            int r0 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r0 < 0) goto L59
            r0 = r2
            goto L5a
        L59:
            r0 = r3
        L5a:
            com.bytedance.sdk.openadsdk.core.settings.ROR r1 = com.bytedance.sdk.openadsdk.core.HzH.CJ()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r4 = r8.cJ
            int r4 = r4.Tgh
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r1 = r1.Qhi(r4)
            if (r1 != 0) goto L88
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ r1 = r1.lG
            com.bytedance.sdk.openadsdk.core.NFd r1 = r1.WAv()
            boolean r1 = r1.fl()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r4 = r8.cJ
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf r4 = r4.CQU
            boolean r4 = r4.kYc()
            if (r4 == 0) goto L83
            r1 = r2
        L83:
            if (r0 == 0) goto L36
            if (r1 == 0) goto L36
            goto L37
        L88:
            if (r1 != r2) goto L8b
            r3 = r0
        L8b:
            if (r3 == 0) goto L90
            r8.tP()
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.iMK():void");
    }
}
