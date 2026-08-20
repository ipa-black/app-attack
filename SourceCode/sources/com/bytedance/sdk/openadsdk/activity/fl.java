package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.activity.cJ;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.component.reward.cJ.hm;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.ABk;
import com.explorestack.iab.vast.VastError;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FullscreenAdScene.java */
/* loaded from: classes2.dex */
public class fl extends Qhi {
    private boolean Tgh;
    int fl;

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    protected boolean a_() {
        return false;
    }

    public fl(cJ cJVar, tP tPVar, int i) {
        super(cJVar, tPVar, i);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi
    public void cJ() {
        if (!tP.fl(this.ac.cJ) && !this.ac.ac) {
            this.ac.js.Qhi(null, "X");
        } else {
            this.ac.js.Qhi(null, TTAdDislikeToast.getSkipText());
        }
        this.ac.js.fl(true);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi, com.bytedance.sdk.openadsdk.activity.ROR
    public void ac(Activity activity) {
        super.ac(activity);
        if (this.ac == null || !cJ(this.ac.cJ) || Qhi(this.ac.cJ)) {
            return;
        }
        if (this.Tgh) {
            this.Tgh = false;
            CQU();
        } else if (this.ac.lG.lB()) {
            CQU();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public String b_() {
        return "fullscreen_interstitial_ad";
    }

    private boolean Qhi(tP tPVar) {
        return tPVar == null || tPVar.Oy() == 100.0f;
    }

    private boolean cJ(tP tPVar) {
        if (tPVar == null) {
            return false;
        }
        return HzH.CJ().MQ(String.valueOf(this.ac.Tgh));
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi
    protected void ac() {
        final View WAv = this.ac.es.WAv();
        if (WAv != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.fl.1
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
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.fl.AnonymousClass1.onClick(android.view.View):void");
                }
            };
            WAv.setOnClickListener(onClickListener);
            WAv.setTag(WAv.getId(), onClickListener);
        }
        this.ac.js.Qhi(new com.bytedance.sdk.openadsdk.component.reward.top.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.fl.2
            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void Qhi(View view) {
                if (bxS.ac(fl.this.ac.cJ) && (bxS.Gm(fl.this.ac.cJ) || fl.this.ac.WAv.get())) {
                    if (fl.this.ac.CQU.tP()) {
                        fl.this.ac.CQU.cJ(5);
                    } else {
                        fl.this.ac.lG.ROR();
                    }
                } else if (bxS.Gm(fl.this.ac.cJ) || (com.bytedance.sdk.openadsdk.core.model.HzH.Qhi(fl.this.ac.cJ) && !fl.this.ac.hpZ.get())) {
                    if (!bxS.ac(fl.this.ac.cJ) && fl.this.ac.CQU.tP()) {
                        fl.this.ac.CQU.cJ(4);
                    }
                    fl.this.CQU();
                } else if (fl.this.ac.cJ.Em()) {
                    if (fl.this.ac.es.Gm() != null) {
                        fl.this.ac.cJ.Jma(2);
                        fl.this.ac.es.HzH();
                    }
                } else {
                    if (!fl.this.ac.ac && fl.this.ac.cJ.YCN() && !fl.this.ac.cJ.IC()) {
                        fl.this.ac.cJ.Jma(13);
                        try {
                            fl.this.ac.es.HzH();
                            return;
                        } catch (Exception unused) {
                        }
                    }
                    hpZ.Qhi qhi = new hpZ.Qhi();
                    qhi.Qhi(fl.this.ac.bxS.ROR());
                    qhi.ac(fl.this.ac.bxS.tP());
                    qhi.cJ(fl.this.ac.bxS.Gm());
                    qhi.ac(3);
                    qhi.CJ(fl.this.ac.bxS.kYc());
                    com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(fl.this.ac.bxS.ac(), qhi, fl.this.ac.bxS.Qhi());
                    com.bytedance.sdk.openadsdk.core.bxS.ac(fl.this.ac.Tgh);
                    fl.this.ac.bxS.Qhi("skip", false);
                    fl.this.ac.js.CJ(false);
                    if (fl.this.ac.ac) {
                        fl.this.Qhi(true, 4);
                    } else {
                        fl.this.CQU();
                    }
                    if (fl.this.ac.cJ != null && fl.this.ac.cJ.cJP() != null && fl.this.ac.bxS != null) {
                        fl.this.ac.cJ.cJP().Qhi().Tgh(fl.this.ac.bxS.ROR());
                        fl.this.ac.cJ.cJP().Qhi().fl(fl.this.ac.bxS.ROR());
                    }
                    com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(fl.this.ac.cJ, 5);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void cJ(View view) {
                fl.this.ac.dIT = !fl.this.ac.dIT;
                if (fl.this.cJ != null && fl.this.cJ.CJ() != null) {
                    fl.this.cJ.CJ().Qhi(fl.this.ac.dIT);
                }
                fl.this.ac.bxS.cJ(fl.this.ac.dIT);
                if (!bxS.zc(fl.this.ac.cJ) || fl.this.ac.WAv.get()) {
                    if (bxS.cJ(fl.this.ac.cJ)) {
                        fl.this.ac.lB.Qhi(fl.this.ac.dIT, true);
                    }
                    fl.this.ac.lG.CJ(fl.this.ac.dIT);
                    if (fl.this.ac.cJ == null || fl.this.ac.cJ.cJP() == null || fl.this.ac.cJ.cJP().Qhi() == null || fl.this.ac.bxS == null) {
                        return;
                    }
                    if (fl.this.ac.dIT) {
                        fl.this.ac.cJ.cJP().Qhi().Sf(fl.this.ac.bxS.ROR());
                    } else {
                        fl.this.ac.cJ.cJP().Qhi().hm(fl.this.ac.bxS.ROR());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.top.cJ
            public void ac(View view) {
                fl.this.ac.sDy.Qhi(fl.this.cJ);
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

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public boolean Qhi(long j, boolean z) {
        Sf sf;
        if (this.Sf.Qhi()) {
            if (this.ac.pM != null && this.ac.pM.Qhi() != null) {
                sf = this.ac.pM.Qhi().getAdShowTime();
            } else {
                sf = new Sf();
            }
            if (this.cJ != null && (this.cJ instanceof hm) && !this.ac.cjC) {
                this.ac.bxS.Qhi(((hm) this.cJ).NFd(), sf);
            } else {
                this.ac.bxS.Qhi(this.ac.pM.cJ(), sf);
            }
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
            this.ac.bxS.Qhi(new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.fl.3
                boolean Qhi;

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void Qhi(long j2, int i) {
                    if (this.Qhi) {
                        return;
                    }
                    this.Qhi = true;
                    fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    fl.this.ABk();
                    fl.this.ac.bxS.Qhi(j2, j2);
                    fl.this.ac.pM.cJ(true);
                    if (fl.this.ac.cJ.hpZ() == 36 && fl.this.ac.ac) {
                        fl.this.ac.Dww.ac().CJ();
                        ABk.cJ();
                    }
                    if (fl.this.ac.cJ.hpZ() == 21 && !fl.this.ac.cJ.CJ()) {
                        fl.this.ac.cJ.cJ(true);
                        fl.this.ac.es.HzH();
                    }
                    if (fl.this.ac.VnT) {
                        cJ.fl cJ = fl.this.cJ(5);
                        cJ.CJ = true;
                        fl.this.bxS().Qhi(fl.this, cJ);
                    } else if (fl.this.ac.ac) {
                        if (fl.this.ac.cJ.TGC()) {
                            if (fl.this.ac.pM.hm() == 1) {
                                fl.this.ac.js.ac();
                                return;
                            }
                            return;
                        }
                        fl.this.Qhi(false, 5);
                        if (tP.fl(fl.this.ac.cJ)) {
                            return;
                        }
                        fl.this.ac.bxS.Qhi("skip", true);
                    } else if (tP.fl(fl.this.ac.cJ)) {
                        fl.this.CQU();
                    } else if (fl.this.ac.pM == null || fl.this.ac.pM.Qhi() == null) {
                    } else {
                        fl.this.ac.pM.Qhi().Qhi("0", 0, 0, false);
                        if (fl.this.ac.pM.Sf()) {
                            fl.this.ac.js.Qhi("0", "X");
                            fl.this.ac.js.fl(true);
                            fl.this.ac.js.ac();
                        }
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void cJ(long j2, int i) {
                    fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (fl.this.ac.bxS.cJ()) {
                        fl.this.fl();
                        return;
                    }
                    fl.this.ac.bxS.ABk();
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AdScene", "fullscreen_interstitial_ad", "onError、、、、、、、、");
                    fl.this.ac.pM.Qhi(true);
                    cJ bxS = fl.this.bxS();
                    fl flVar = fl.this;
                    bxS.Qhi(flVar, flVar.cJ(3));
                }

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void Qhi() {
                    fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    fl.this.ABk();
                    new Object[]{"fullscreen_interstitial_ad", "onTimeOut、、、、、、、、"};
                    cJ bxS = fl.this.bxS();
                    fl flVar = fl.this;
                    bxS.Qhi(flVar, flVar.cJ(6));
                }

                @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
                public void Qhi(long j2, long j3) {
                    if (!fl.this.ac.Qe && fl.this.ac.bxS.cJ()) {
                        fl.this.ac.bxS.pA();
                    }
                    if (fl.this.ac.WAv.get()) {
                        return;
                    }
                    fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != fl.this.ac.bxS.Sf()) {
                        fl.this.ABk();
                    }
                    if (fl.this.ac.bxS.cJ()) {
                        fl.this.ac.bxS.Qhi(j2, j3);
                        fl flVar = fl.this;
                        long j4 = j2 / 1000;
                        flVar.fl = (int) (flVar.ac.bxS.aP() - j4);
                        int i = (int) j4;
                        if ((fl.this.ac.MQ.get() || fl.this.ac.Gm.get()) && fl.this.ac.bxS.cJ()) {
                            fl.this.ac.bxS.pA();
                        }
                        if (fl.this.ac.pM != null && fl.this.ac.pM.Qhi() != null) {
                            fl.this.ac.pM.Qhi().Qhi(String.valueOf(fl.this.fl), i, 0, false);
                        }
                        fl.this.Qhi((((float) j2) * 1.0f) / ((float) j3));
                        if (fl.this.ac.pM.Sf() || fl.this.ac.cJ.Ewb()) {
                            fl.this.CJ(i);
                            if (fl.this.fl >= 0) {
                                fl.this.ac.js.CJ(true);
                                fl.this.ac.js.Qhi(String.valueOf(fl.this.fl), null);
                            }
                        }
                    }
                }
            });
            return this.ac.bxS.Qhi(j, z, hashMap, this.cJ);
        }
        Sf sf2 = new Sf();
        sf2.Qhi(System.currentTimeMillis(), 1.0f);
        if (this.cJ != null && (this.cJ instanceof hm)) {
            this.ac.bxS.Qhi(((hm) this.cJ).NFd(), sf2);
        } else {
            this.ac.bxS.Qhi(this.ac.es.Tgh(), sf2);
        }
        fl.Qhi qhi = new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.fl.4
            boolean Qhi;

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, int i) {
                if (this.Qhi) {
                    return;
                }
                this.Qhi = true;
                fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                fl.this.ABk();
                fl.this.ac.bxS.Qhi(j2, j2);
                fl.this.ac.tP.set(true);
                if (fl.this.ac.cJ.YAV()) {
                    fl.this.ac.cJ.Jma(1);
                    fl.this.ac.es.HzH();
                }
                if (fl.this.ac.cJ.hpZ() == 21 && !fl.this.ac.cJ.CJ()) {
                    fl.this.ac.cJ.cJ(true);
                    fl.this.ac.es.HzH();
                }
                if (fl.this.ac.VnT) {
                    cJ.fl cJ = fl.this.cJ(5);
                    cJ.CJ = true;
                    fl.this.bxS().Qhi(fl.this, cJ);
                } else if (fl.this.ac.ac) {
                    if (fl.this.ac.cJ.TGC()) {
                        fl.this.ac.js.ac();
                        return;
                    }
                    fl.this.Qhi(false, 5);
                    if (com.bytedance.sdk.openadsdk.core.model.HzH.cJ(fl.this.ac.cJ) && fl.this.ac.gga != null) {
                        fl.this.ac.gga.Qhi(0L);
                    }
                    if (tP.fl(fl.this.ac.cJ)) {
                        return;
                    }
                    fl.this.ac.bxS.Qhi("skip", true);
                } else if (fl.this.ac.cJ.TGC()) {
                    fl.this.ac.js.ac();
                } else {
                    if (!tP.fl(fl.this.ac.cJ)) {
                        fl.this.ac.bxS.Qhi("skip", true);
                    }
                    fl.this.CQU();
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void cJ(long j2, int i) {
                fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (fl.this.ac.bxS.cJ()) {
                    fl.this.fl();
                    return;
                }
                fl.this.ac.bxS.ABk();
                cJ bxS = fl.this.bxS();
                fl flVar = fl.this;
                bxS.Qhi(flVar, flVar.cJ(3));
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi() {
                fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                fl.this.ABk();
                new Object[]{"fullscreen_interstitial_ad", "onTimeOut、、、、、、、、"};
                cJ bxS = fl.this.bxS();
                fl flVar = fl.this;
                bxS.Qhi(flVar, flVar.cJ(6));
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, long j3) {
                if (!fl.this.ac.Qe && fl.this.ac.bxS.cJ()) {
                    fl.this.ac.bxS.pA();
                }
                if (fl.this.ac.WAv.get()) {
                    return;
                }
                fl.this.Qhi.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (j2 != fl.this.ac.bxS.Sf()) {
                    fl.this.ABk();
                }
                fl.this.ac.bxS.Qhi(j2, j3);
                fl flVar = fl.this;
                long j4 = j2 / 1000;
                flVar.fl = (int) (flVar.ac.bxS.aP() - j4);
                int i = (int) j4;
                if ((fl.this.ac.MQ.get() || fl.this.ac.Gm.get()) && fl.this.ac.bxS.cJ()) {
                    fl.this.ac.bxS.pA();
                }
                fl.this.CJ(i);
                fl.this.Qhi((((float) j2) * 1.0f) / ((float) j3));
                if (fl.this.fl >= 0) {
                    fl.this.ac.js.Qhi(String.valueOf(fl.this.fl), null);
                }
            }
        };
        this.ac.bxS.Qhi(qhi);
        if (this.ac.es.pA != null) {
            this.ac.es.pA.Qhi(qhi);
        }
        return this.ac.bxS.Qhi(j, z, null, this.cJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ(int i) {
        int tP = HzH.CJ().tP(String.valueOf(this.ac.Tgh));
        if (!HzH.CJ().Tgh(String.valueOf(this.ac.Tgh)) || (!tP.fl(this.ac.cJ) && !this.ac.ac)) {
            if (i >= tP) {
                if (!this.ac.zjb) {
                    this.ac.Qhi(true);
                }
                cJ();
                return;
            }
            return;
        }
        if (!this.ac.zjb) {
            this.ac.Qhi(true);
        }
        if (i <= tP) {
            fl(tP - i);
            this.ac.js.fl(false);
            return;
        }
        cJ();
    }

    private void fl(int i) {
        this.ac.js.Qhi(null, new SpannableStringBuilder(String.format(MQ.Qhi(HzH.Qhi(), "tt_skip_ad_time_text"), Integer.valueOf(i))));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void c_() {
        if (this.ac.cJ.Oy() != 100.0f) {
            this.Tgh = true;
        }
        aP();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.Qhi
    protected void ROR() {
        Eh();
        if (this.Sf.Qhi()) {
            this.ac.pM.WAv();
        }
    }
}
