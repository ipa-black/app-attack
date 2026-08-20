package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.component.reward.Qhi.fl;
import com.bytedance.sdk.openadsdk.core.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.Gm;
import com.bytedance.sdk.openadsdk.core.model.MQ;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.pgl.ssdk.ces.out.DungeonFlag;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RewardFullReportManager.java */
/* loaded from: classes2.dex */
public class hm {
    private final Qhi Qhi;
    private final com.bytedance.sdk.openadsdk.core.cJ.Tgh ac;
    private final com.bytedance.sdk.openadsdk.core.cJ.cJ cJ;

    @DungeonFlag
    public hm(Qhi qhi) {
        this.Qhi = qhi;
        this.ac = Qhi(qhi, qhi.cJ);
        this.cJ = new com.bytedance.sdk.openadsdk.core.cJ.cJ(qhi.FQ, qhi.cJ, qhi.fl, qhi.CJ ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hm.1
            @Override // com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
            public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
                try {
                    hm.this.Qhi(view, f2, f3, f4, f5, sparseArray, this.NFd, this.Eh, this.aP);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFReportManager", "onClickReport error :" + e2.getMessage());
                }
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(hm.this.Qhi.cJ, 9);
                hm.this.Qhi.bxS.lG();
            }
        };
    }

    @DungeonFlag
    public void Qhi() {
        if (this.Qhi.ABk.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        tP tPVar = this.Qhi.cJ;
        Qhi(jSONObject);
        if (this.Qhi.ABk.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, this.Qhi.fl, jSONObject);
            this.Qhi.PAe.Tgh();
            Tgh.Qhi qhi = new Tgh.Qhi(-1);
            if (this.Qhi.VnT && this.Qhi.Ura != null) {
                qhi.cJ = this.Qhi.Ura.hm;
            }
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Qhi.FQ.findViewById(16908290), tPVar, qhi);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(JSONObject jSONObject) {
        tP tPVar = this.Qhi.cJ;
        if ((tPVar instanceof MQ) && ((MQ) tPVar).vk()) {
            try {
                jSONObject.put("choose_one_ad_real_show", true);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFReportManager", "reportShow json error", e2);
            }
        }
        if (!this.Qhi.VnT || this.Qhi.Ura == null) {
            return;
        }
        try {
            jSONObject.put("ad_show_order", this.Qhi.Ura.hm + 1);
        } catch (JSONException unused) {
        }
    }

    @DungeonFlag
    public void cJ() {
        boolean z;
        if (this.Qhi.ABk.get()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.Qhi.cJ.Qhi() || this.Qhi.pM == null) {
                z = false;
            } else {
                jSONObject.put("dynamic_show_type", this.Qhi.pM.hm());
                this.Qhi.pM.Qhi(jSONObject);
                z = true;
            }
            tP tPVar = this.Qhi.cJ;
            Qhi(jSONObject);
            View findViewById = this.Qhi.FQ.findViewById(16908290);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(IabUtils.KEY_WIDTH, findViewById.getWidth());
                jSONObject2.put(IabUtils.KEY_HEIGHT, findViewById.getHeight());
                jSONObject2.put("alpha", findViewById.getAlpha());
            } catch (Throwable unused) {
            }
            jSONObject.put("root_view", jSONObject2.toString());
            if (this.Qhi.ABk.compareAndSet(false, true)) {
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, this.Qhi.fl, jSONObject);
                this.Qhi.PAe.Tgh();
                Tgh.Qhi qhi = new Tgh.Qhi(z ? this.Qhi.pM.hm() : -1);
                if (this.Qhi.VnT && this.Qhi.Ura != null) {
                    qhi.cJ = this.Qhi.Ura.hm;
                }
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Qhi.FQ.findViewById(16908290), tPVar, qhi);
            }
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFReportManager", "reportShowWhenBindVideoAd error", e2);
        }
    }

    @DungeonFlag
    public void Qhi(final Map<String, Object> map) {
        if (this.Qhi.ABk.get()) {
            return;
        }
        this.Qhi.ABk.set(true);
        final View findViewById = this.Qhi.FQ.findViewById(16908290);
        if (findViewById == null) {
            findViewById = this.Qhi.FQ.getWindow().getDecorView();
        }
        findViewById.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hm.2
            @Override // java.lang.Runnable
            public void run() {
                Map map2;
                JSONObject jSONObject;
                boolean z = false;
                if (hm.this.Qhi.iMK.compareAndSet(false, true)) {
                    tP tPVar = hm.this.Qhi.cJ;
                    JSONObject jSONObject2 = null;
                    try {
                        if (map != null) {
                            jSONObject = new JSONObject(map);
                        } else {
                            jSONObject = new JSONObject();
                        }
                        jSONObject2 = jSONObject;
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put(IabUtils.KEY_WIDTH, findViewById.getWidth());
                        jSONObject3.put(IabUtils.KEY_HEIGHT, findViewById.getHeight());
                        jSONObject3.put("alpha", findViewById.getAlpha());
                        jSONObject2.put("root_view", jSONObject3.toString());
                        hm.this.Qhi(jSONObject2);
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFReportManager", "run: ", th);
                    }
                    com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, hm.this.Qhi.fl, jSONObject2);
                    hm.this.Qhi.PAe.Tgh();
                    if (hm.this.Qhi.pM != null && (map2 = map) != null && map2.containsKey("dynamic_show_type")) {
                        z = true;
                    }
                    Tgh.Qhi qhi = new Tgh.Qhi(z ? hm.this.Qhi.pM.hm() : -1);
                    if (hm.this.Qhi.VnT && hm.this.Qhi.Ura != null) {
                        qhi.cJ = hm.this.Qhi.Ura.hm;
                    }
                    com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(hm.this.Qhi.FQ.findViewById(16908290), tPVar, qhi);
                }
            }
        });
    }

    public void Qhi(boolean z) {
        if (this.Qhi.cJ == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.Gm.Qhi.fl fl = com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi(z ? 7 : 8).ac(String.valueOf(this.Qhi.cJ.Hy())).fl(this.Qhi.cJ.jWV());
        fl.cJ(this.Qhi.lG.qMt()).Tgh(this.Qhi.lG.EBS());
        fl.ROR(this.Qhi.cJ.EGK()).CJ(this.Qhi.cJ.HLI());
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi().cJ(fl);
    }

    public com.bytedance.sdk.openadsdk.core.cJ.Tgh ac() {
        this.ac.Qhi(this.Qhi.FQ.findViewById(16908290));
        this.ac.cJ(this.Qhi.yN.findViewById(520093713));
        if (this.Qhi.Dww.ac() != null) {
            this.ac.Qhi(this.Qhi.Dww.ac());
        }
        this.Qhi.CQU.Qhi(this.ac);
        this.ac.Qhi(new Qhi.InterfaceC0224Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hm.3
            @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi.InterfaceC0224Qhi
            public long getVideoProgress() {
                return hm.this.Qhi.bxS.ROR();
            }
        });
        com.bytedance.sdk.openadsdk.component.reward.view.Tgh tgh = this.Qhi.es;
        com.bytedance.sdk.openadsdk.core.cJ.Tgh tgh2 = this.ac;
        tgh.Qhi(tgh2, tgh2, this.cJ);
        this.Qhi.zn.Qhi(this.ac);
        return this.ac;
    }

    public com.bytedance.sdk.openadsdk.core.cJ.cJ CJ() {
        return this.cJ;
    }

    public com.bytedance.sdk.openadsdk.core.cJ.Tgh fl() {
        return this.ac;
    }

    @DungeonFlag
    public void cJ(boolean z) {
        Qhi qhi = this.Qhi;
        if (qhi == null) {
            return;
        }
        if (!z && qhi.ABk.get() && this.Qhi.HLI > 0) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(String.valueOf(SystemClock.elapsedRealtime() - this.Qhi.HLI), this.Qhi.cJ, this.Qhi.fl, this.Qhi.bxS.Qhi());
            this.Qhi.HLI = 0L;
        } else {
            this.Qhi.HLI = SystemClock.elapsedRealtime();
        }
        com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.Qhi.cJ, z ? 4 : 8);
    }

    public void Tgh() {
        JSONObject jSONObject = new JSONObject();
        if (bxS.Gm(this.Qhi.cJ)) {
            this.Qhi.CQU.Qhi(jSONObject);
        }
        int i = 1;
        try {
            if (this.Qhi.WAv.get()) {
                if (!this.Qhi.lG.ac()) {
                    if (this.Qhi.Jma.CJ()) {
                        i = 3;
                    } else {
                        i = this.Qhi.lG.CJ() ? 2 : 0;
                    }
                }
                jSONObject.put("endcard_content", i);
            } else {
                jSONObject.put("endCardNotShow", 1);
            }
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.Qhi.cJ, this.Qhi.fl, "click_close", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, int i, int i2, int i3) {
        if (view == null) {
            return;
        }
        if (view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.fl) {
            Qhi("click_play_star_level", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.CJ || view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.ROR) {
            Qhi("click_play_star_nums", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.ac) {
            Qhi("click_play_source", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.cJ) {
            Qhi("click_play_logo", (JSONObject) null);
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.zc || view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.mZ || view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.HzH) {
            Qhi("click_start_play_bar", hm());
        } else if (view.getId() == 520093705) {
            Qhi("click_start_play", hm());
        } else if (view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.Gm) {
            Qhi("click_video", hm());
        } else if (view.getId() == 520093707 || view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.Sf) {
            Qhi("fallback_endcard_click", hm());
        }
        cJ(view, f2, f3, f4, f5, sparseArray, i, i2, i3);
    }

    private void cJ(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, int i, int i2, int i3) {
        if (!Sf() || this.Qhi.cJ == null || view == null) {
            return;
        }
        int id = view.getId();
        if (id == com.bytedance.sdk.openadsdk.utils.iMK.fl || id == com.bytedance.sdk.openadsdk.utils.iMK.CJ || id == com.bytedance.sdk.openadsdk.utils.iMK.ac || id == com.bytedance.sdk.openadsdk.utils.iMK.cJ || id == com.bytedance.sdk.openadsdk.utils.iMK.zc || id == com.bytedance.sdk.openadsdk.utils.iMK.mZ || id == com.bytedance.sdk.openadsdk.utils.iMK.HzH || id == 520093705 || id == com.bytedance.sdk.openadsdk.utils.iMK.Gm || id == 520093707 || id == com.bytedance.sdk.openadsdk.utils.iMK.ROR) {
            int ROR = zn.ROR(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
            com.bytedance.sdk.openadsdk.core.model.Gm Qhi = new Gm.Qhi().Tgh(f2).fl(f3).CJ(f4).ac(f5).cJ(System.currentTimeMillis()).Qhi(0L).cJ(zn.Qhi(this.Qhi.es.Gm())).Qhi(zn.Qhi((View) null)).ac(zn.ac(this.Qhi.es.Gm())).CJ(zn.ac((View) null)).CJ(i2).fl(i3).Tgh(i).Qhi(sparseArray).cJ(com.bytedance.sdk.openadsdk.core.hm.cJ().Qhi() ? 1 : 2).ac(ROR).Qhi(zn.fl(com.bytedance.sdk.openadsdk.core.HzH.Qhi())).cJ(zn.Tgh(com.bytedance.sdk.openadsdk.core.HzH.Qhi())).Qhi();
            HashMap hashMap = new HashMap();
            hashMap.put("duration", Long.valueOf(this.Qhi.bxS.ROR()));
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi("click_other", this.Qhi.cJ, Qhi, this.Qhi.fl, true, (Map<String, Object>) hashMap, -1);
        }
    }

    private boolean Sf() {
        return this.Qhi.cJ != null && this.Qhi.cJ.yN() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str, JSONObject jSONObject) {
        tP tPVar = this.Qhi.cJ;
        String str2 = this.Qhi.fl;
        if (!this.Qhi.CJ) {
            jSONObject = null;
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, str2, str, jSONObject);
    }

    private JSONObject hm() {
        try {
            long hpZ = this.Qhi.bxS.hpZ();
            int HzH = this.Qhi.bxS.HzH();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", hpZ);
                jSONObject.put("percent", HzH);
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public void ac(boolean z) {
        Qhi qhi = this.Qhi;
        if (qhi != null && z && qhi.cJ.qb() && !this.Qhi.cJ.ZRq()) {
            this.Qhi.cJ.ROR(true);
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.Qhi.cJ, this.Qhi.fl, this.Qhi.cJ.up());
        }
    }

    public void ROR() {
        JSONObject jSONObject = new JSONObject();
        Qhi(jSONObject);
        com.bytedance.sdk.openadsdk.cJ.ac.fl(this.Qhi.cJ, this.Qhi.fl, jSONObject);
    }

    public com.bytedance.sdk.openadsdk.core.cJ.Tgh Qhi(final Qhi qhi, final tP tPVar) {
        return new com.bytedance.sdk.openadsdk.core.cJ.Tgh(qhi.FQ, tPVar, qhi.fl, qhi.CJ ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hm.4
            @Override // com.bytedance.sdk.openadsdk.core.cJ.Tgh
            public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, int i, int i2, int i3, boolean z) {
                if (tPVar.IC() && view != null) {
                    Object tag = view.getTag(570425345);
                    if (tag instanceof String) {
                        Qhi((String) tag);
                    }
                }
                HashMap hashMap = new HashMap();
                hashMap.put("duration", Long.valueOf(qhi.bxS.ROR()));
                if (qhi.WAv.get()) {
                    hashMap.put("click_scence", 2);
                } else if (bxS.Gm(tPVar)) {
                    hashMap.put("click_scence", 3);
                } else {
                    hashMap.put("click_scence", 1);
                }
                Qhi(hashMap);
                qhi.PAe.c_();
                if (view.getId() == com.bytedance.sdk.openadsdk.utils.iMK.Ewb && bxS.Gm(tPVar)) {
                    JSONObject jSONObject = new JSONObject();
                    if (tPVar.FQ() != null) {
                        try {
                            jSONObject.put("playable_url", tPVar.FQ().zc());
                        } catch (JSONException e2) {
                            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFReportManager", "onRewardBarClick json error", e2);
                        }
                    }
                    com.bytedance.sdk.openadsdk.cJ.ac.cJ(tPVar, qhi.fl, "click_playable_download_button_loading", jSONObject);
                }
                qhi.Dww.Qhi(view, f2, f3, f4, f5, sparseArray, i, i2, i3, new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hm.4.1
                    @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.fl.Qhi
                    public void Qhi(String str, JSONObject jSONObject2) {
                        hm.this.Qhi(str, jSONObject2);
                    }

                    @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.fl.Qhi
                    public void Qhi(View view2, float f6, float f7, float f8, float f9, SparseArray<ac.Qhi> sparseArray2, int i4, int i5, int i6) {
                        hm.this.Qhi(view2, f6, f7, f8, f9, sparseArray2, i4, i5, i6);
                    }
                });
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(tPVar, 9);
                qhi.bxS.lG();
            }
        };
    }
}
