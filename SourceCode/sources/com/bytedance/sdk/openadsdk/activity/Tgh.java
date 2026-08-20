package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.utils.hpZ;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.activity.cJ;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.MQ;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi;
import com.bytedance.sdk.openadsdk.utils.js;
import com.explorestack.iab.vast.VastError;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RewardAdScene.java */
/* loaded from: classes2.dex */
public class Tgh extends Qhi {
    private static String ABk;
    private static String HzH;
    private static String hpZ;
    private static String iMK;
    private static String pA;
    private int MQ;
    int ROR;
    protected int Tgh;
    protected int fl;
    private String kYc;
    private String tP;

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    protected boolean a_() {
        return true;
    }

    public Tgh(cJ cJVar, tP tPVar, int i) {
        super(cJVar, tPVar, i);
        this.MQ = -1;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi, com.bytedance.sdk.openadsdk.activity.ROR
    public void Qhi(Activity activity, cJ.fl flVar) {
        super.Qhi(activity, flVar);
        if (activity.isFinishing()) {
            return;
        }
        Intent intent = activity.getIntent();
        this.tP = intent.getStringExtra("media_extra");
        this.kYc = intent.getStringExtra("user_id");
        try {
            if (hpZ == null) {
                hpZ = MQ.Qhi(this.ac.ip, "tt_reward_msg");
                ABk = MQ.Qhi(this.ac.ip, "tt_msgPlayable");
                pA = MQ.Qhi(this.ac.ip, "tt_negtiveBtnBtnText");
                HzH = MQ.Qhi(this.ac.ip, "tt_postiveBtnText");
                iMK = MQ.Qhi(this.ac.ip, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th) {
            ABk.Qhi("TTAD.RewardAdScene", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public String b_() {
        return "rewarded_video";
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi
    protected void cJ() {
        this.ac.js.Qhi(null, TTAdDislikeToast.getSkipText());
        this.ac.js.fl(true);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi
    protected void ac() {
        final View WAv = this.ac.es.WAv();
        if (WAv != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.Tgh.1
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
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.Tgh.AnonymousClass1.onClick(android.view.View):void");
                }
            };
            WAv.setOnClickListener(onClickListener);
            WAv.setTag(WAv.getId(), onClickListener);
        }
        this.ac.js.Qhi(new com.bytedance.sdk.openadsdk.component.reward.top.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.Tgh.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void Qhi(View view) {
                if (Tgh.this.ac.cJ.Em()) {
                    if (Tgh.this.ac.es.Gm() != null) {
                        Tgh.this.ac.cJ.Jma(2);
                        Tgh.this.ac.es.HzH();
                        return;
                    }
                    return;
                }
                if (!Tgh.this.ac.ac && Tgh.this.ac.cJ.YCN() && !Tgh.this.ac.cJ.IC()) {
                    Tgh.this.ac.cJ.Jma(13);
                    try {
                        Tgh.this.ac.es.HzH();
                        return;
                    } catch (Exception unused) {
                    }
                }
                Tgh tgh = Tgh.this;
                tgh.Qhi(bxS.Gm(tgh.ac.cJ), false);
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void cJ(View view) {
                if (Tgh.this.cJ != null && Tgh.this.cJ.CJ() != null) {
                    Tgh.this.cJ.CJ().Qhi(Tgh.this.ac.dIT);
                }
                Tgh.this.ac.dIT = !Tgh.this.ac.dIT;
                new Object[]{"rewarded_video", "will set is Mute " + Tgh.this.ac.dIT + " mLastVolume=" + Tgh.this.ac.lB.Qhi()};
                Tgh.this.ac.bxS.cJ(Tgh.this.ac.dIT);
                if (!bxS.zc(Tgh.this.ac.cJ) || Tgh.this.ac.WAv.get()) {
                    if (bxS.cJ(Tgh.this.ac.cJ)) {
                        Tgh.this.ac.lB.Qhi(Tgh.this.ac.dIT, true);
                    }
                    Tgh.this.ac.lG.CJ(Tgh.this.ac.dIT);
                    if (Tgh.this.ac.cJ == null || Tgh.this.ac.cJ.cJP() == null || Tgh.this.ac.cJ.cJP().Qhi() == null || Tgh.this.ac.bxS == null) {
                        return;
                    }
                    if (Tgh.this.ac.dIT) {
                        Tgh.this.ac.cJ.cJP().Qhi().Sf(Tgh.this.ac.bxS.ROR());
                    } else {
                        Tgh.this.ac.cJ.cJP().Qhi().hm(Tgh.this.ac.bxS.ROR());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void ac(View view) {
                Tgh.this.ac.sDy.Qhi(Tgh.this.cJ);
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

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(int i) {
        if (i == 10000) {
            EBS();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public boolean Qhi(long j, boolean z) {
        Sf sf;
        if (this.Sf.Qhi()) {
            if (this.ac.pM != null && this.ac.pM.Qhi() != null) {
                sf = this.ac.pM.Qhi().getAdShowTime();
            } else {
                sf = new Sf();
            }
            this.ac.bxS.Qhi(this.ac.pM.cJ(), sf);
            HashMap hashMap = new HashMap();
            if (this.ac.pM != null) {
                hashMap.put("dynamic_show_type", Integer.valueOf(this.ac.pM.hm()));
                JSONObject Qhi = this.ac.pM.Qhi((JSONObject) null);
                if (Qhi != null) {
                    Iterator<String> keys = Qhi.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        try {
                            hashMap.put(next, Qhi.get(next));
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
            this.ac.bxS.Qhi(new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.Tgh.3
                boolean Qhi;

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void Qhi(long j2, int i) {
                    if (this.Qhi) {
                        return;
                    }
                    this.Qhi = true;
                    Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    Tgh.this.ABk();
                    Tgh.this.ac.bxS.Qhi(j2, j2);
                    Tgh.this.ac.pM.cJ(true);
                    if (Tgh.this.ac.cJ.hpZ() == 36 && Tgh.this.ac.ac) {
                        Tgh.this.ac.Dww.ac().CJ();
                        com.bytedance.sdk.openadsdk.utils.ABk.cJ();
                    }
                    if (Tgh.this.ac.cJ.hpZ() == 21 && !Tgh.this.ac.cJ.CJ()) {
                        Tgh.this.ac.cJ.cJ(true);
                        Tgh.this.ac.es.HzH();
                    }
                    if (Tgh.this.ac.VnT) {
                        cJ bxS = Tgh.this.bxS();
                        Tgh tgh = Tgh.this;
                        bxS.Qhi(tgh, tgh.cJ(5));
                    } else if (Tgh.this.ac.ac) {
                        if (Tgh.this.ac.cJ.TGC()) {
                            if (Tgh.this.ac.pM.hm() == 1) {
                                Tgh.this.ac.js.ac();
                            }
                        } else {
                            Tgh.this.Qhi(false, 5);
                            if (!tP.fl(Tgh.this.ac.cJ)) {
                                Tgh.this.ac.bxS.Qhi("skip", true);
                            }
                        }
                    } else if (Tgh.this.ac.cJ.TGC()) {
                        if (Tgh.this.ac.pM.hm() == 1) {
                            Tgh.this.ac.js.ac();
                        }
                    } else {
                        if (!tP.fl(Tgh.this.ac.cJ)) {
                            Tgh.this.ac.bxS.Qhi("skip", true);
                        }
                        Tgh.this.CQU();
                    }
                    Tgh.this.fl = (int) (System.currentTimeMillis() / 1000);
                    if (Tgh.this.ac.VnT) {
                        return;
                    }
                    Tgh.this.EBS();
                }

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void cJ(long j2, int i) {
                    Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (Tgh.this.ac.bxS.cJ()) {
                        Tgh.this.fl();
                        return;
                    }
                    Tgh.this.EBS();
                    Tgh.this.ac.bxS.ABk();
                    Tgh.this.ac.pM.Qhi(true);
                    cJ bxS = Tgh.this.bxS();
                    Tgh tgh = Tgh.this;
                    bxS.Qhi(tgh, tgh.cJ(3));
                }

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void Qhi() {
                    Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    Tgh.this.ABk();
                    Tgh.this.EBS();
                    cJ bxS = Tgh.this.bxS();
                    Tgh tgh = Tgh.this;
                    bxS.Qhi(tgh, tgh.cJ(6));
                }

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void Qhi(long j2, long j3) {
                    if (!Tgh.this.ac.Qe && Tgh.this.ac.bxS.cJ()) {
                        Tgh.this.ac.bxS.pA();
                    }
                    if (Tgh.this.ac.WAv.get()) {
                        return;
                    }
                    Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != Tgh.this.ac.bxS.Sf()) {
                        Tgh.this.ABk();
                    }
                    if (Tgh.this.ac.bxS.cJ()) {
                        Tgh.this.ac.bxS.Qhi(j2, j3);
                        int WAv = HzH.CJ().WAv(String.valueOf(Tgh.this.ac.Tgh));
                        boolean z2 = Tgh.this.ac.pM.Sf() && WAv != -1 && WAv >= 0;
                        Tgh tgh = Tgh.this;
                        long j4 = j2 / 1000;
                        tgh.ROR = (int) (tgh.ac.bxS.aP() - j4);
                        int i = (int) j4;
                        if ((Tgh.this.ac.MQ.get() || Tgh.this.ac.Gm.get()) && Tgh.this.ac.bxS.cJ()) {
                            Tgh.this.ac.bxS.pA();
                        }
                        if (Tgh.this.ROR >= 0) {
                            Tgh.this.ac.js.Qhi(String.valueOf(Tgh.this.ROR), null);
                        }
                        Tgh.this.ac.es.CJ(i);
                        Tgh.this.Qhi(j2, j3);
                        if (Tgh.this.ac.pM != null && Tgh.this.ac.pM.Qhi() != null) {
                            Tgh.this.ac.pM.Qhi().Qhi(String.valueOf(Tgh.this.ROR), i, 0, false);
                        }
                        Tgh.this.Qhi((((float) j2) * 1.0f) / ((float) j3));
                        if (Tgh.this.ROR > 0) {
                            if (z2 && i >= WAv && Tgh.this.ac.cJ.hpZ() != 5) {
                                Tgh.this.ac.Qhi(true);
                                Tgh.this.ac.js.Qhi(String.valueOf(Tgh.this.ROR), TTAdDislikeToast.getSkipText());
                                Tgh.this.ac.js.fl(true);
                                return;
                            }
                            Tgh.this.ac.js.Qhi(String.valueOf(Tgh.this.ROR), null);
                        }
                    }
                }
            });
            boolean Qhi2 = this.ac.bxS.Qhi(j, z, hashMap, this.cJ);
            if (Qhi2 && !z) {
                this.Tgh = (int) (System.currentTimeMillis() / 1000);
            }
            return Qhi2;
        }
        Sf sf2 = new Sf();
        sf2.Qhi(System.currentTimeMillis(), 1.0f);
        this.ac.bxS.Qhi(this.ac.es.Tgh(), sf2);
        fl.Qhi qhi = new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.Tgh.4
            boolean Qhi;

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, int i) {
                if (this.Qhi) {
                    return;
                }
                this.Qhi = true;
                Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                Tgh.this.ABk();
                if (!Tgh.this.ac.VnT) {
                    Tgh.this.EBS();
                }
                Tgh.this.ac.bxS.Qhi(j2, j2);
                Tgh.this.ac.tP.set(true);
                if (Tgh.this.ac.cJ.YAV()) {
                    Tgh.this.ac.cJ.Jma(1);
                    Tgh.this.ac.es.HzH();
                }
                if (Tgh.this.ac.cJ.hpZ() == 21 && !Tgh.this.ac.cJ.CJ()) {
                    Tgh.this.ac.cJ.cJ(true);
                    Tgh.this.ac.es.HzH();
                }
                Tgh.this.fl = (int) (System.currentTimeMillis() / 1000);
                if (Tgh.this.ac.VnT) {
                    cJ.fl cJ = Tgh.this.cJ(5);
                    cJ.CJ = true;
                    Tgh.this.bxS().Qhi(Tgh.this, cJ);
                } else if (com.bytedance.sdk.openadsdk.core.model.HzH.ac(Tgh.this.ac.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.cJ(Tgh.this.ac.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.CJ(Tgh.this.ac.cJ)) {
                    Tgh.this.Qhi(false, 5);
                    if (!com.bytedance.sdk.openadsdk.core.model.HzH.cJ(Tgh.this.ac.cJ) || Tgh.this.ac.gga == null) {
                        return;
                    }
                    Tgh.this.ac.gga.Qhi(0L);
                } else if (com.bytedance.sdk.openadsdk.core.model.HzH.Qhi(Tgh.this.ac.cJ) && !Tgh.this.ac.hpZ.get()) {
                    Tgh.this.ac.Qhi(true);
                    Tgh.this.ac.js.fl(true);
                } else if (Tgh.this.ac.ac) {
                    if (Tgh.this.ac.cJ.TGC()) {
                        Tgh.this.ac.js.ac();
                        return;
                    }
                    Tgh.this.Qhi(false, 5);
                    if (tP.fl(Tgh.this.ac.cJ)) {
                        return;
                    }
                    Tgh.this.ac.bxS.Qhi("skip", true);
                } else if (Tgh.this.ac.cJ.TGC()) {
                    Tgh.this.ac.js.ac();
                } else {
                    if (!tP.fl(Tgh.this.ac.cJ)) {
                        Tgh.this.ac.bxS.Qhi("skip", true);
                    }
                    Tgh.this.CQU();
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void cJ(long j2, int i) {
                Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (Tgh.this.ac.bxS.cJ()) {
                    Tgh.this.fl();
                    return;
                }
                Tgh.this.ac.bxS.ABk();
                Tgh.this.EBS();
                cJ bxS = Tgh.this.bxS();
                Tgh tgh = Tgh.this;
                bxS.Qhi(tgh, tgh.cJ(3));
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi() {
                Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                Tgh.this.ABk();
                Tgh.this.EBS();
                cJ bxS = Tgh.this.bxS();
                Tgh tgh = Tgh.this;
                bxS.Qhi(tgh, tgh.cJ(6));
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, long j3) {
                if (!Tgh.this.ac.Qe && Tgh.this.ac.bxS.cJ()) {
                    Tgh.this.ac.bxS.pA();
                }
                if (Tgh.this.ac.WAv.get()) {
                    return;
                }
                Tgh.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (j2 != Tgh.this.ac.bxS.Sf()) {
                    Tgh.this.ABk();
                }
                Tgh.this.ac.bxS.Qhi(j2, j3);
                Tgh tgh = Tgh.this;
                long j4 = j2 / 1000;
                double d2 = j4;
                tgh.ROR = (int) (tgh.ac.bxS.aP() - d2);
                if (Tgh.this.ROR >= 0) {
                    Tgh.this.ac.js.Qhi(String.valueOf(Tgh.this.ROR), null);
                }
                Tgh tgh2 = Tgh.this;
                tgh2.ROR = (int) (tgh2.ac.bxS.aP() - d2);
                int i = (int) j4;
                int WAv = HzH.CJ().WAv(String.valueOf(Tgh.this.ac.Tgh));
                boolean z2 = WAv >= 0;
                if ((Tgh.this.ac.MQ.get() || Tgh.this.ac.Gm.get()) && Tgh.this.ac.bxS.cJ()) {
                    Tgh.this.ac.bxS.pA();
                }
                Tgh.this.ac.es.CJ(i);
                Tgh.this.Qhi(j2, j3);
                Tgh.this.Qhi((((float) j2) * 1.0f) / ((float) j3));
                if (Tgh.this.ROR > 0) {
                    Tgh.this.ac.js.CJ(true);
                    if (z2 && i >= WAv) {
                        Tgh.this.ac.Qhi(true);
                        Tgh.this.ac.js.Qhi(String.valueOf(Tgh.this.ROR), TTAdDislikeToast.getSkipText());
                        Tgh.this.ac.js.fl(true);
                        return;
                    }
                    Tgh.this.ac.js.Qhi(String.valueOf(Tgh.this.ROR), null);
                }
            }
        };
        this.ac.bxS.Qhi(qhi);
        if (this.ac.es.pA != null) {
            this.ac.es.pA.Qhi(qhi);
        }
        boolean Qhi3 = this.ac.bxS.Qhi(j, z, null, this.cJ);
        if (Qhi3 && !z) {
            this.Tgh = (int) (System.currentTimeMillis() / 1000);
        }
        return Qhi3;
    }

    protected void Qhi(long j, long j2) {
        if (this.ac.VnT) {
            return;
        }
        long j3 = j + (this.ac.YB * 1000);
        if (this.MQ == -1) {
            this.MQ = HzH.CJ().Eh(String.valueOf(this.ac.Tgh)).Tgh;
        }
        if (j2 <= 0) {
            return;
        }
        if (j2 >= 30000 && j3 >= 27000) {
            EBS();
        } else if (((float) (j3 * 100)) / ((float) j2) >= this.MQ) {
            EBS();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void c_() {
        aP();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi
    protected void ROR() {
        Eh();
        if (this.Sf.Qhi()) {
            this.ac.pM.WAv();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void zc() {
        EBS();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008c, code lost:
        if (r1 != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003c, code lost:
        if (((1.0d - (r8.ROR / r8.ac.bxS.aP())) * 100.0d) >= r0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        r2 = true;
     */
    @Override // com.bytedance.sdk.openadsdk.activity.Qhi, com.bytedance.sdk.openadsdk.activity.ROR, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void iMK() {
        /*
            r8 = this;
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r8.Sf
            boolean r0 = r0.LpL()
            if (r0 != 0) goto L9
            return
        L9:
            com.bytedance.sdk.openadsdk.core.settings.ROR r0 = com.bytedance.sdk.openadsdk.core.HzH.CJ()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.ac
            int r1 = r1.Tgh
            java.lang.String r1 = java.lang.String.valueOf(r1)
            com.bytedance.sdk.openadsdk.core.settings.cJ r0 = r0.Eh(r1)
            int r0 = r0.Tgh
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.ac
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r1.cJ
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.bxS.zc(r1)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L40
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            double r4 = r1.aP()
            int r1 = r8.ROR
            double r6 = (double) r1
            double r6 = r6 / r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r4 = r4 - r6
            r6 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r4 = r4 * r6
            double r0 = (double) r0
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L92
        L3e:
            r2 = r3
            goto L92
        L40:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.ac
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r1.cJ
            int r1 = r1.TKG()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r4 = r8.ac
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
            if (r0 < 0) goto L60
            r0 = r3
            goto L61
        L60:
            r0 = r2
        L61:
            com.bytedance.sdk.openadsdk.core.settings.ROR r1 = com.bytedance.sdk.openadsdk.core.HzH.CJ()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r4 = r8.ac
            int r4 = r4.Tgh
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r1 = r1.Qhi(r4)
            if (r1 != 0) goto L8f
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r8.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ r1 = r1.lG
            com.bytedance.sdk.openadsdk.core.NFd r1 = r1.WAv()
            boolean r1 = r1.fl()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r4 = r8.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf r4 = r4.CQU
            boolean r4 = r4.kYc()
            if (r4 == 0) goto L8a
            r1 = r3
        L8a:
            if (r0 == 0) goto L92
            if (r1 == 0) goto L92
            goto L3e
        L8f:
            if (r1 != r3) goto L92
            r2 = r0
        L92:
            if (r2 == 0) goto L97
            r8.EBS()
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.Tgh.iMK():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final boolean z, boolean z2) {
        if (!z2 && bxS().hm().getBoolean("user_has_give_up_reward", false) && bxS.ac(this.ac.cJ)) {
            sDy();
        } else if (!HzH.CJ().Sf(String.valueOf(this.ac.Tgh))) {
            if (z) {
                CQU();
            } else {
                sDy();
            }
        } else if (bxS().hm().getBoolean("reward_verify", false)) {
            if (bxS.ac(this.ac.cJ)) {
                sDy();
            } else if (z) {
                CQU();
            } else {
                sDy();
            }
        } else {
            this.ac.MQ.set(true);
            this.ac.bxS.pA();
            if (z) {
                this.ac.CQU.pA();
            }
            final com.bytedance.sdk.openadsdk.core.widget.Qhi qhi = new com.bytedance.sdk.openadsdk.core.widget.Qhi(Dww());
            this.cJ.ABk = qhi;
            if (z) {
                this.cJ.ABk.Qhi(ABk).cJ(iMK).ac(pA);
            } else {
                this.cJ.ABk.Qhi(hpZ).cJ(HzH).ac(pA);
            }
            this.cJ.ABk.Qhi(new Qhi.InterfaceC0237Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.Tgh.5
                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.InterfaceC0237Qhi
                public void Qhi() {
                    Tgh.this.ac.bxS.iMK();
                    if (z) {
                        Tgh.this.ac.CQU.Qhi(1000L);
                    }
                    qhi.dismiss();
                    Tgh.this.ac.MQ.set(false);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.InterfaceC0237Qhi
                public void cJ() {
                    qhi.dismiss();
                    Tgh.this.bxS().hm().putBoolean("user_has_give_up_reward", true);
                    Tgh.this.ac.MQ.set(false);
                    Tgh.this.ac.CQU.Tgh(Integer.MAX_VALUE);
                    if (!z) {
                        Tgh.this.sDy();
                    } else if (bxS.ac(Tgh.this.ac.cJ)) {
                        if (!Tgh.this.ac.CQU.tP()) {
                            Tgh.this.sDy();
                        } else {
                            Tgh.this.ac.CQU.cJ(5);
                        }
                    } else {
                        Tgh.this.ac.aP.Tgh();
                        if (Tgh.this.ac.CQU.tP()) {
                            Tgh.this.ac.CQU.cJ(4);
                        }
                        Tgh.this.CQU();
                    }
                }
            }).show();
        }
    }

    private JSONObject NFd() {
        JSONObject jSONObject = new JSONObject();
        int MQ = (int) this.ac.bxS.MQ();
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("reward_name", this.ac.cJ.MQ());
            jSONObject.put("reward_amount", this.ac.cJ.qMt());
            jSONObject.put("network", hpZ.ac(this.ac.ip));
            jSONObject.put("sdk_version", BuildConfig.VERSION_NAME);
            int zn = this.ac.cJ.zn();
            String str = "unKnow";
            if (zn == 2) {
                str = js.cJ();
            } else if (zn == 1) {
                str = js.ac();
            }
            jSONObject.put("user_agent", str);
            jSONObject.put("extra", this.ac.cJ.KW());
            jSONObject.put("media_extra", this.tP);
            jSONObject.put("video_duration", this.ac.cJ.FQ().Tgh());
            jSONObject.put("play_start_ts", this.Tgh);
            jSONObject.put("play_end_ts", this.fl);
            jSONObject.put("duration", MQ);
            jSONObject.put("user_id", this.kYc);
            jSONObject.put("trans_id", com.bytedance.sdk.openadsdk.utils.bxS.Qhi().replace("-", ""));
            return jSONObject;
        } catch (Throwable th) {
            ABk.Qhi("TTAD.RewardAdScene", "", th);
            return null;
        }
    }

    public void EBS() {
        if (bxS().hm().getBoolean("reward_verify", false) || bxS().ABk()) {
            return;
        }
        bxS().hm().putBoolean("reward_verify", true);
        if (HzH.CJ().hpZ(String.valueOf(this.ac.Tgh))) {
            Qhi(true, this.ac.cJ.qMt(), this.ac.cJ.MQ(), 0, "");
            return;
        }
        HzH.ac().Qhi(NFd(), new tP.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.Tgh.6
            @Override // com.bytedance.sdk.openadsdk.core.tP.cJ
            public void Qhi(int i, String str) {
                Tgh.this.Qhi(false, 0, "", i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.tP.cJ
            public void Qhi(MQ.cJ cJVar) {
                boolean z = cJVar.cJ;
                Tgh.this.Qhi(cJVar.cJ, cJVar.ac.Qhi(), cJVar.ac.cJ(), 0, "");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0076, code lost:
        if (r3.ac.hpZ.get() == false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sDy() {
        /*
            r3 = this;
            com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ$Qhi r0 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ$Qhi
            r0.<init>()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.ROR()
            r0.Qhi(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.tP()
            r0.ac(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.Gm()
            r0.cJ(r1)
            r1 = 3
            r0.ac(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            int r1 = r1.kYc()
            r0.CJ(r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            com.bykv.vk.openvk.component.video.api.cJ.Qhi r1 = r1.ac()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r2 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r2 = r2.bxS
            com.bytedance.sdk.openadsdk.cJ.Sf r2 = r2.Qhi()
            com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(r1, r0, r2)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.ac
            int r0 = r0.Tgh
            com.bytedance.sdk.openadsdk.core.bxS.ac(r0)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r0 = r0.bxS
            java.lang.String r1 = "skip"
            r2 = 0
            r0.Qhi(r1, r2)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.ac
            boolean r0 = r0.ac
            if (r0 == 0) goto L78
            r0 = 1
            r1 = 4
            r3.Qhi(r0, r1)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.ac
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.HzH.Qhi(r0)
            if (r0 == 0) goto L7b
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.ac
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.hpZ
            boolean r0 = r0.get()
            if (r0 != 0) goto L7b
        L78:
            r3.CQU()
        L7b:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.ac
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            com.bytedance.sdk.openadsdk.core.ROR.Qhi r0 = r0.cJP()
            if (r0 == 0) goto L97
            com.bytedance.sdk.openadsdk.core.ROR.fl r0 = r0.Qhi()
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r1 = r3.ac
            com.bytedance.sdk.openadsdk.component.reward.Qhi.pA r1 = r1.bxS
            long r1 = r1.ROR()
            r0.Tgh(r1)
            r0.fl(r1)
        L97:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r3.ac
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            r1 = 5
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.Tgh.sDy():void");
    }
}
