package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.cJ.cJ;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.MQ;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: RewardFullEndCardManager.java */
/* loaded from: classes2.dex */
public class Tgh {
    private final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi Qhi;
    private Qhi ac;
    private final com.bytedance.sdk.openadsdk.component.reward.view.cJ cJ;

    /* compiled from: RewardFullEndCardManager.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(boolean z, boolean z2, boolean z3, com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar, int i);

        void hpZ();
    }

    public Tgh(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        this.Qhi = qhi;
        this.cJ = new com.bytedance.sdk.openadsdk.component.reward.view.cJ(qhi);
    }

    public void Qhi() {
        this.cJ.Qhi();
    }

    public void cJ() {
        this.cJ.ac();
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.cJ.Tgh tgh) {
        this.cJ.Qhi(tgh);
    }

    public void Qhi(boolean z, boolean z2, boolean z3, com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar, int i) {
        int i2;
        new StringBuilder("showEndCard() called with: isSkip = [").append(z).append("], force = [").append(z2).append("], isFromLandingPage = [").append(z3).append("], mAdType = [").append(cJVar);
        if (this.Qhi.FQ.isFinishing() || cJVar == null) {
            return;
        }
        this.Qhi.es.zc();
        if (z2) {
            this.Qhi.pA.set(true);
        }
        if (this.Qhi.EGK && !this.Qhi.hpZ.get() && !com.bytedance.sdk.openadsdk.core.model.HzH.Sf(this.Qhi.cJ) && (!com.bytedance.sdk.openadsdk.core.model.HzH.cJ(this.Qhi.cJ) || !this.Qhi.pA.get() || !this.Qhi.HzH.get())) {
            if (com.bytedance.sdk.openadsdk.core.model.HzH.cJ(this.Qhi.cJ) && z3) {
                return;
            }
            if (com.bytedance.sdk.openadsdk.core.model.HzH.cJ(this.Qhi.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.ac(this.Qhi.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.Qhi.cJ)) {
                this.Qhi.js.ac(false);
                cJVar.pA();
                return;
            }
        }
        if (this.Qhi.FQ.isDestroyed() || this.Qhi.FQ.isFinishing()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.nativeexpress.cJ cJVar2 = null;
        if (this.Qhi.cJ.Ewb()) {
            com.bytedance.sdk.openadsdk.component.reward.view.ac acVar = this.Qhi.pM;
            if (acVar != null && acVar.Qhi() != null) {
                cJVar2 = acVar.Qhi().getBrandBannerController();
            }
            if (cJVar2 != null) {
                cJVar2.cJ();
            }
            this.Qhi.FQ.finish();
            return;
        }
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(z, z2, z3, cJVar, i);
            return;
        }
        this.Qhi.bxS.ABk();
        this.Qhi.lG.pM();
        this.Qhi.Gm.set(false);
        this.Qhi.zc.set(false);
        this.Qhi.sDy.Qhi();
        this.Qhi.js.Qhi(!this.Qhi.ROR && this.Qhi.cJ.rB());
        if (this.Qhi.WAv.getAndSet(true)) {
            return;
        }
        if (bxS.cJ(this.Qhi.cJ)) {
            HashMap hashMap = new HashMap();
            if (this.Qhi.lG.js()) {
                i2 = 1;
            } else {
                i2 = !this.Qhi.lG.HzH() ? -1 : 2;
            }
            hashMap.put("webview_state", Integer.valueOf(i2));
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.Qhi.cJ, this.Qhi.fl, z, z2, z3, this.Qhi.FQ.isFinishing(), i, hashMap);
        }
        if (this.Qhi.cJ.Qhi() && bxS.cJ(this.Qhi.cJ) && z) {
            this.Qhi.js.CJ(true);
        }
        if (bxS.cJ(this.Qhi.cJ)) {
            this.Qhi.js.ac(true);
        }
        Sf();
        if (bxS.Gm(this.Qhi.cJ)) {
            return;
        }
        this.Qhi.kYc.set(z);
        cJVar.iMK();
        if (this.Qhi.cJ.IC()) {
            this.Qhi.js.CJ(false);
        } else {
            this.Qhi.js.CJ(bxS.Gm(this.Qhi.cJ));
        }
        this.Qhi.js.ac(bxS.cJ(this.Qhi.cJ));
        if (this.Qhi.cJ.Qhi() && bxS.cJ(this.Qhi.cJ) && z) {
            this.Qhi.js.CJ(true);
        }
        this.Qhi.lG.Eh();
        if (this.Qhi.es.pA != null) {
            this.Qhi.es.pA.CJ();
        }
        this.Qhi.es.ac();
        if (this.Qhi.pM != null) {
            this.Qhi.pM.Tgh();
        }
        if (!TextUtils.isEmpty(tP.Qhi(this.Qhi.ip, this.Qhi.cJ))) {
            MQ.Qhi(this.Qhi.FQ, bxS.Tgh(this.Qhi.cJ), this.Qhi.cJ, cJ.Qhi.ac);
            return;
        }
        if (tP.ac(this.Qhi.cJ) && this.Qhi.Jma != null) {
            this.Qhi.Jma.Tgh();
        }
        if (tP.Qhi(this.Qhi.cJ) || ((!tP.ac(this.Qhi.cJ) && this.Qhi.lG.es()) || (!tP.Qhi(this.Qhi.cJ, this.Qhi.lG.hpZ(), this.Qhi.CQU.CJ(), this.Qhi.Jma.zc(), this.Qhi.lG.aP()) && !bxS.cJ(this.Qhi.cJ)))) {
            CJ();
            return;
        }
        if (!tP.CJ(this.Qhi.cJ) && !bxS.cJ(this.Qhi.cJ) && !tP.ac(this.Qhi.cJ)) {
            this.Qhi.lG.Qhi(true, 0, (String) null);
        }
        if (bxS.cJ(this.Qhi.cJ)) {
            if (bxS.hpZ(this.Qhi.cJ) && !this.Qhi.lG.js()) {
                if (!this.Qhi.lG.hpZ()) {
                    if (this.Qhi.CQU.MQ() != null) {
                        this.Qhi.CQU.MQ().Qhi(2);
                    }
                    this.Qhi.CQU.Sf();
                    return;
                }
                if (this.Qhi.CQU.MQ() != null) {
                    this.Qhi.CQU.MQ().Qhi(-1);
                }
                this.Qhi.CQU.hm();
                this.Qhi.js.CJ(false);
                this.Qhi.CQU.Qhi(this.Qhi.aP.fl());
                return;
            }
            if (this.Qhi.lG.js() && this.Qhi.CQU.MQ() != null) {
                this.Qhi.CQU.MQ().Qhi(1);
            }
            cJ(cJVar);
        } else {
            ac(cJVar);
        }
        Qhi(cJVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar) {
        this.Qhi.lG.Qhi(0.0f);
        this.Qhi.es.Qhi(0.0f);
        if (!tP.ac(this.Qhi.cJ)) {
            this.Qhi.Jma.Qhi(8);
            this.Qhi.lG.cJ(0);
            this.Qhi.lG.yN();
        } else {
            this.Qhi.lG.cJ(8);
            this.Qhi.Jma.Qhi(0);
            this.Qhi.Jma.ROR();
        }
        if (this.Qhi.ROR) {
            zn.Qhi((View) cJVar.iMK, 0);
            this.Qhi.es.fl(8);
        }
        this.Qhi.es.ac(8);
        this.Qhi.es.ROR();
        if (tP.ac(this.Qhi.cJ)) {
            this.Qhi.xyz.sendEmptyMessageDelayed(800, 100L);
            return;
        }
        this.Qhi.xyz.sendEmptyMessageDelayed(500, 100L);
        this.Qhi.lG.Qhi(this.Qhi.dIT, true);
        this.Qhi.lG.ac(true);
        this.Qhi.lG.cJ(true);
        NFd WAv = this.Qhi.lG.WAv();
        if (WAv != null) {
            WAv.Qhi("prerender_page_show", (JSONObject) null);
        }
    }

    public void cJ(com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar) {
        int Wrw = this.Qhi.cJ.Wrw();
        if (bxS.Gm(this.Qhi.cJ)) {
            Wrw = (this.Qhi.cJ.TKG() + 1) * 1000;
        }
        if (Wrw == -1) {
            if (bxS.ac(this.Qhi.cJ)) {
                if (bxS.hpZ(this.Qhi.cJ) && this.Qhi.CQU.HzH()) {
                    cJVar.pA();
                    return;
                } else {
                    cJVar.Dww();
                    return;
                }
            }
            cJVar.pA();
        } else if (Wrw < 0) {
            return;
        } else {
            this.Qhi.js.CJ(false);
            if (bxS.ac(this.Qhi.cJ)) {
                if (bxS.hpZ(this.Qhi.cJ) && this.Qhi.CQU.HzH()) {
                    this.Qhi.xyz.sendEmptyMessageDelayed(600, Wrw);
                } else {
                    this.Qhi.xyz.sendEmptyMessageDelayed(1, Wrw);
                    return;
                }
            } else {
                this.Qhi.xyz.sendEmptyMessageDelayed(600, Wrw);
            }
        }
        if (this.Qhi.gga != null) {
            this.Qhi.gga.Qhi(Wrw);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0066, code lost:
        if (com.bytedance.sdk.openadsdk.core.model.bxS.ac(r4.Qhi.cJ) == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean ac(com.bytedance.sdk.openadsdk.component.reward.cJ.cJ r5) {
        /*
            r4 = this;
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            int r1 = r4.ROR()
            r0.Sf = r1
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            int r0 = r0.Sf
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            boolean r0 = r0.fl()
            r1 = 0
            if (r0 != 0) goto L8b
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            int r0 = r0.Sf
            r2 = -1
            r3 = 1
            if (r0 != r2) goto L3c
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            com.bytedance.sdk.openadsdk.core.model.tP r0 = r0.cJ
            boolean r0 = com.bytedance.sdk.openadsdk.core.model.bxS.ac(r0)
            if (r0 == 0) goto L37
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ r0 = r0.lG
            boolean r0 = r0.hpZ()
            if (r0 == 0) goto L37
            r5.Dww()
            goto L69
        L37:
            r5.pA()
        L3a:
            r5 = r3
            goto L6a
        L3c:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r5 = r4.Qhi
            int r5 = r5.Sf
            if (r5 < 0) goto L69
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r5 = r4.Qhi
            java.util.concurrent.atomic.AtomicBoolean r5 = r5.qMt
            r5.set(r1)
            android.os.Message r5 = android.os.Message.obtain()
            r0 = 700(0x2bc, float:9.81E-43)
            r5.what = r0
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            int r0 = r0.Sf
            r5.arg1 = r0
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            com.bytedance.sdk.component.utils.CQU r0 = r0.xyz
            r0.sendMessage(r5)
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r5 = r4.Qhi
            com.bytedance.sdk.openadsdk.core.model.tP r5 = r5.cJ
            boolean r5 = com.bytedance.sdk.openadsdk.core.model.bxS.ac(r5)
            if (r5 != 0) goto L69
            goto L3a
        L69:
            r5 = r1
        L6a:
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ r0 = r0.lG
            boolean r0 = r0.Dww()
            if (r0 == 0) goto L75
            goto L76
        L75:
            r1 = r5
        L76:
            if (r1 == 0) goto L8a
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r5 = r4.Qhi
            com.bytedance.sdk.openadsdk.utils.zc r5 = r5.gga
            if (r5 == 0) goto L8a
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r5 = r4.Qhi
            com.bytedance.sdk.openadsdk.utils.zc r5 = r5.gga
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi r0 = r4.Qhi
            int r0 = r0.Sf
            long r0 = (long) r0
            r5.Qhi(r0)
        L8a:
            return r3
        L8b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.Qhi.Tgh.ac(com.bytedance.sdk.openadsdk.component.reward.cJ.cJ):boolean");
    }

    private int ROR() {
        int vml = this.Qhi.cJ.vml();
        if (vml <= 5000 && vml >= 0) {
            if (vml < 1000) {
                vml += 1000;
            }
            int Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.CJ().Qhi(this.Qhi.cJ.Hy());
            if (Qhi2 <= 5000 && Qhi2 >= 0) {
                if (Qhi2 < 1000) {
                    Qhi2 += 1000;
                }
                return Math.min(vml, Qhi2);
            }
        }
        return -1;
    }

    private void Sf() {
        if (bxS.zc(this.Qhi.cJ) && this.Qhi.dIT) {
            this.Qhi.js.cJ(true);
            this.Qhi.lB.Qhi(true);
        }
    }

    public void ac() {
        this.cJ.CJ();
    }

    public void CJ() {
        Qhi(true);
    }

    public void Qhi(boolean z) {
        if (!tP.CJ(this.Qhi.cJ)) {
            this.Qhi.lG.Qhi(false, TTAdConstant.DOWNLOAD_URL_CODE, "end_card_timeout");
        }
        this.Qhi.lG.NFd();
        this.Qhi.lG.cJ(8);
        this.Qhi.Jma.Qhi(8);
        if (this.Qhi.ROR) {
            zn.Qhi((View) this.Qhi.ReL.iMK, 8);
            this.Qhi.es.fl(0);
        }
        this.Qhi.es.ac(8);
        if (this.Qhi.cJ.IC()) {
            if (!this.cJ.Qhi(this.Qhi.bxS)) {
                this.Qhi.FQ.finish();
            }
        } else {
            com.bytedance.sdk.openadsdk.activity.ROR ror = this.Qhi.Ura;
            if (ror != null) {
                this.cJ.Qhi(ror.bxS().Tgh());
            }
            this.cJ.cJ();
        }
        this.Qhi.es.ROR();
        if (z) {
            ac(this.Qhi.ReL);
        }
        this.Qhi.js.ac(false);
        this.Qhi.aP.Qhi(this.Qhi.cJ.LpL());
    }

    public boolean fl() {
        com.bytedance.sdk.openadsdk.component.reward.view.cJ cJVar = this.cJ;
        if (cJVar != null) {
            return cJVar.fl();
        }
        return false;
    }

    public void Qhi(Qhi qhi) {
        this.ac = qhi;
    }

    public Qhi Tgh() {
        return this.ac;
    }
}
