package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.utils.hpZ;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.activity.cJ;
import com.bytedance.sdk.openadsdk.core.MQ;
import com.bytedance.sdk.openadsdk.core.model.HzH;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi;
import com.bytedance.sdk.openadsdk.utils.js;
import org.json.JSONObject;
/* compiled from: EndCardScene.java */
/* loaded from: classes2.dex */
public class ac extends ROR implements CQU.Qhi, com.bytedance.sdk.openadsdk.core.video.ac.cJ {
    private static String ABk;
    private static String CJ;
    private static String ROR;
    private static String Tgh;
    private static String fl;
    private boolean HzH;
    protected final CQU Qhi;
    protected com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi ac;
    protected com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJ;
    private cJ.fl hpZ;
    private Bundle iMK;
    private String kYc;
    private int pA;
    private String tP;

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public boolean Qhi(long j, boolean z) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final View WAv() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void hm() {
    }

    public ac(cJ cJVar, tP tPVar, int i) {
        super(cJVar, tPVar, i);
        this.Qhi = new CQU(Looper.getMainLooper(), this);
        this.pA = 0;
        Qhi(tPVar, this.iMK);
        try {
            hpZ();
        } catch (Throwable th) {
            ABk.Qhi("TTAD.EndCardScene", "onCreate: ", th);
            CQU();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void Qhi(Activity activity, Bundle bundle) {
        this.iMK = bundle;
        super.Qhi(activity, bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final View Qhi() {
        return this.ac.yN;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void Qhi(Activity activity, cJ.fl flVar) {
        super.Qhi(activity, flVar);
        this.hpZ = flVar;
        Intent intent = activity.getIntent();
        this.tP = intent.getStringExtra("media_extra");
        this.kYc = intent.getStringExtra("user_id");
        try {
            if (ROR == null) {
                ROR = MQ.Qhi(this.ac.ip, "tt_reward_msg");
                CJ = MQ.Qhi(this.ac.ip, "tt_msgPlayable");
                Tgh = MQ.Qhi(this.ac.ip, "tt_negtiveBtnBtnText");
                ABk = MQ.Qhi(this.ac.ip, "tt_postiveBtnText");
                fl = MQ.Qhi(this.ac.ip, "tt_postiveBtnTextPlayable");
            }
        } catch (Throwable th) {
            ABk.Qhi("TTAD.EndCardScene", th.getMessage());
        }
        kYc();
        Sf();
    }

    private void Qhi(tP tPVar, Bundle bundle) {
        Activity Dww = Dww();
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = new com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi(Dww, this.Qhi, tPVar, this, 2);
        this.ac = qhi;
        qhi.VnT = bxS().Qhi();
        this.ac.Ura = this;
        this.ac.lB = bxS().HzH();
        com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(this.ac, Dww.getIntent(), bundle);
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ Qhi = com.bytedance.sdk.openadsdk.component.reward.cJ.ROR.Qhi(this.ac);
        this.cJ = Qhi;
        this.ac.ReL = Qhi;
        new StringBuilder("init: mAdType = ").append(this.cJ);
    }

    private void hpZ() {
        this.ac.yN.Qhi(this.cJ);
        this.cJ.Qhi(this, this.Qhi);
        this.cJ.Gm();
    }

    private void kYc() {
        if (this.HzH) {
            return;
        }
        this.HzH = true;
        this.cJ.Qhi(this.zc);
        qMt();
    }

    private void qMt() {
        final View WAv = this.ac.es.WAv();
        if (WAv != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.ac.1
                /* JADX WARN: Removed duplicated region for block: B:28:0x00d0 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
                @Override // android.view.View.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onClick(android.view.View r5) {
                    /*
                        Method dump skipped, instructions count: 275
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.ac.AnonymousClass1.onClick(android.view.View):void");
                }
            };
            WAv.setOnClickListener(onClickListener);
            WAv.setTag(WAv.getId(), onClickListener);
        }
        this.ac.js.Qhi(new com.bytedance.sdk.openadsdk.component.reward.top.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.ac.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void Qhi(View view) {
                ac acVar = ac.this;
                if (acVar.Qhi(bxS.Gm(acVar.ac.cJ), false)) {
                    return;
                }
                if (bxS.ac(ac.this.ac.cJ)) {
                    if (ac.this.ac.CQU.tP()) {
                        ac.this.ac.CQU.cJ(5);
                    } else {
                        ac.this.ac.lG.ROR();
                    }
                } else if (bxS.Gm(ac.this.ac.cJ) || (HzH.Qhi(ac.this.ac.cJ) && !ac.this.ac.hpZ.get())) {
                    if (!bxS.ac(ac.this.ac.cJ) && ac.this.ac.CQU.tP()) {
                        ac.this.ac.CQU.cJ(4);
                    }
                    ac.this.CQU();
                } else {
                    ac.this.CQU();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void cJ(View view) {
                if (ac.this.cJ != null && ac.this.cJ.CJ() != null) {
                    ac.this.cJ.CJ().Qhi(ac.this.ac.dIT);
                }
                ac.this.ac.dIT = !ac.this.ac.dIT;
                new Object[]{"rewarded_video", "will set is Mute " + ac.this.ac.dIT + " mLastVolume=" + ac.this.ac.lB.Qhi()};
                ac.this.ac.bxS.cJ(ac.this.ac.dIT);
                if (!bxS.zc(ac.this.ac.cJ) || ac.this.ac.WAv.get()) {
                    if (bxS.cJ(ac.this.ac.cJ)) {
                        ac.this.ac.lB.Qhi(ac.this.ac.dIT, true);
                    }
                    ac.this.ac.lG.CJ(ac.this.ac.dIT);
                    if (ac.this.ac.cJ == null || ac.this.ac.cJ.cJP() == null || ac.this.ac.cJ.cJP().Qhi() == null || ac.this.ac.bxS == null) {
                        return;
                    }
                    if (ac.this.ac.dIT) {
                        ac.this.ac.cJ.cJP().Qhi().Sf(ac.this.ac.bxS.ROR());
                    } else {
                        ac.this.ac.cJ.cJP().Qhi().hm(ac.this.ac.bxS.ROR());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void ac(View view) {
                ac.this.ac.sDy.Qhi(ac.this.cJ);
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

    private boolean EBS() {
        if (this.ac.WAv.get() && this.ac.ROR) {
            return false;
        }
        if (this.Sf.Qhi()) {
            return this.ac.WAv.get();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void cJ(Activity activity) {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar;
        super.cJ(activity);
        if (this.ac == null || (cJVar = this.cJ) == null) {
            return;
        }
        cJVar.HzH();
        this.ac.Qe = true;
        this.ac.Eh.cJ(this.Qhi);
        if (EBS()) {
            this.ac.js.Qhi(this.ac.cJ.rB());
        }
        this.ac.es.pA();
        this.ac.lG.MQ();
        this.ac.CQU.ABk();
        if (this.cJ.cJ()) {
            this.ac.bxS.Qhi(this.cJ);
            this.ac.bxS.Qhi(false, this, this.pA != 0);
        }
        this.pA++;
        if (this.ac.pM != null) {
            this.ac.pM.ROR();
        }
        this.ac.Eh.Qhi(this.Qhi);
        this.cJ.tP();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void ac(Activity activity) {
        super.ac(activity);
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.qMt();
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public final void Qhi(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.Qhi(message);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void CJ() {
        aP();
        this.ac.cJ.wI();
        this.ac.cJ.Qhi(true);
        if (tP.fl(this.ac.cJ)) {
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.ac.cJ, this.ac.fl, this.ac.cJ.gSh());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void c_() {
        aP();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void Tgh() {
        Eh();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void Sf() {
        if (bxS() == null) {
            return;
        }
        this.ac.zn.Qhi(this.hpZ.Qhi.getBoolean("isSkip", false), this.hpZ.Qhi.getBoolean("force", false), this.hpZ.Qhi.getBoolean("isFromLandingPage", false), this.cJ, this.hpZ.cJ);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void CJ(Activity activity) {
        super.CJ(activity);
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.ac;
        if (qhi == null) {
            return;
        }
        qhi.lG.sDy();
        com.bytedance.sdk.openadsdk.utils.ac.Qhi(activity, this.ac.cJ);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void fl(Activity activity) {
        super.fl(activity);
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.MQ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void Gm() {
        if (!this.ac.iMK.getAndSet(true) || bxS.Gm(this.ac.cJ)) {
            this.ac.aP.Qhi();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void zc() {
        ac();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void iMK() {
        boolean z = true;
        boolean z2 = false;
        boolean z3 = (1.0f - (((float) this.ac.CQU.zc()) / ((float) this.ac.cJ.TKG()))) * 100.0f >= ((float) com.bytedance.sdk.openadsdk.core.HzH.CJ().Eh(String.valueOf(this.ac.Tgh)).Tgh);
        int Qhi = com.bytedance.sdk.openadsdk.core.HzH.CJ().Qhi(String.valueOf(this.ac.Tgh));
        if (Qhi == 0) {
            boolean fl2 = this.ac.lG.WAv().fl();
            if (this.ac.CQU.kYc()) {
                fl2 = true;
            }
            if (!z3 || !fl2) {
                z = false;
            }
            z2 = z;
        } else if (Qhi == 1) {
            z2 = z3;
        }
        if (z2) {
            ac();
        }
    }

    public void ac() {
        if (bxS().hm().getBoolean("reward_verify", false) || bxS().ABk()) {
            return;
        }
        bxS().hm().putBoolean("reward_verify", true);
        if (com.bytedance.sdk.openadsdk.core.HzH.CJ().hpZ(String.valueOf(this.ac.Tgh))) {
            Qhi(true, this.ac.cJ.qMt(), this.ac.cJ.MQ(), 0, "");
            return;
        }
        com.bytedance.sdk.openadsdk.core.HzH.ac().Qhi(NFd(), new tP.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.ac.3
            @Override // com.bytedance.sdk.openadsdk.core.tP.cJ
            public void Qhi(int i, String str) {
                ac.this.Qhi(false, 0, "", i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.tP.cJ
            public void Qhi(MQ.cJ cJVar) {
                ac.this.Qhi(cJVar.cJ, cJVar.ac.Qhi(), cJVar.ac.cJ(), 0, "");
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void HzH() {
        super.HzH();
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar != null) {
            cJVar.bxS();
        }
    }

    public void fl() {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.Eh();
        this.ac.zn.cJ();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public boolean tP() {
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.ac;
        return qhi != null && qhi.bxS.Dww();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    protected boolean a_() {
        return this.ac.CJ;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    protected String MQ() {
        return this.ac.MND;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public String b_() {
        return this.ac.fl;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void Qhi(ROR ror, ROR ror2, cJ.fl flVar) {
        super.Qhi(ror, ror2, flVar);
        if (ror != null || ror2 == this) {
            return;
        }
        if (bxS.cJ(this.ac.cJ)) {
            bxS().Qhi(Qhi());
        }
        kYc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Qhi(final boolean z, boolean z2) {
        if (!this.ac.CJ || bxS().hm().getBoolean("reward_verify", false) || bxS().ABk()) {
            return false;
        }
        if (z2 || !bxS().hm().getBoolean("user_has_give_up_reward", false)) {
            if (!com.bytedance.sdk.openadsdk.core.HzH.CJ().Sf(String.valueOf(this.ac.Tgh))) {
                if (!z2) {
                    return false;
                }
                if (z) {
                    CQU();
                    return true;
                }
            }
            this.ac.MQ.set(true);
            if (z) {
                this.ac.CQU.pA();
            }
            final com.bytedance.sdk.openadsdk.core.widget.Qhi qhi = new com.bytedance.sdk.openadsdk.core.widget.Qhi(this.ac.FQ);
            this.cJ.ABk = qhi;
            if (z) {
                this.cJ.ABk.Qhi(CJ).cJ(fl).ac(Tgh);
            } else {
                this.cJ.ABk.Qhi(ROR).cJ(ABk).ac(Tgh);
            }
            this.cJ.ABk.Qhi(new Qhi.InterfaceC0237Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.ac.4
                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.InterfaceC0237Qhi
                public void Qhi() {
                    if (z) {
                        ac.this.ac.CQU.Qhi(1000L);
                    }
                    qhi.dismiss();
                    ac.this.ac.MQ.set(false);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.InterfaceC0237Qhi
                public void cJ() {
                    qhi.dismiss();
                    ac.this.bxS().hm().putBoolean("user_has_give_up_reward", true);
                    ac.this.ac.MQ.set(false);
                    ac.this.ac.CQU.Tgh(Integer.MAX_VALUE);
                    if (z) {
                        if (bxS.ac(ac.this.ac.cJ)) {
                            if (ac.this.ac.CQU.tP()) {
                                ac.this.ac.CQU.cJ(5);
                                return;
                            } else {
                                ac.this.ac.lG.ROR();
                                return;
                            }
                        }
                        ac.this.ac.aP.Tgh();
                        if (ac.this.ac.CQU.tP()) {
                            ac.this.ac.CQU.cJ(4);
                        }
                        ac.this.CQU();
                    }
                }
            }).show();
            return true;
        }
        return false;
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
            jSONObject.put("play_start_ts", 0);
            jSONObject.put("play_end_ts", 0);
            jSONObject.put("duration", MQ);
            jSONObject.put("user_id", this.kYc);
            jSONObject.put("trans_id", com.bytedance.sdk.openadsdk.utils.bxS.Qhi().replace("-", ""));
            return jSONObject;
        } catch (Throwable th) {
            ABk.Qhi("TTAD.EndCardScene", "", th);
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void pA() {
        super.pA();
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.EBS();
    }
}
