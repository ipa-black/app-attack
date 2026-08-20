package com.bytedance.sdk.openadsdk.activity;

import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.ABk;
import com.explorestack.iab.vast.VastError;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TTRewardExpressVideoActivity extends TTRewardVideoActivity {
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void ac() {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean kYc() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public boolean Qhi(long j, boolean z) {
        Sf sf;
        if (this.cJ.pM != null && this.cJ.pM.Qhi() != null) {
            sf = this.cJ.pM.Qhi().getAdShowTime();
        } else {
            sf = new Sf();
        }
        this.cJ.bxS.Qhi(this.cJ.pM.cJ(), sf);
        HashMap hashMap = new HashMap();
        if (this.cJ.pM != null) {
            hashMap.put("dynamic_show_type", Integer.valueOf(this.cJ.pM.hm()));
            JSONObject Qhi = this.cJ.pM.Qhi((JSONObject) null);
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
        this.cJ.bxS.Qhi(new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.1
            boolean Qhi;

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, int i) {
                if (this.Qhi) {
                    return;
                }
                this.Qhi = true;
                TTRewardExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTRewardExpressVideoActivity.this.pA();
                TTRewardExpressVideoActivity.this.cJ.bxS.Qhi(j2, j2);
                TTRewardExpressVideoActivity.this.cJ.pM.cJ(true);
                if (TTRewardExpressVideoActivity.this.cJ.cJ.hpZ() == 36 && TTRewardExpressVideoActivity.this.cJ.ac) {
                    TTRewardExpressVideoActivity.this.cJ.Dww.ac().CJ();
                    ABk.cJ();
                }
                if (TTRewardExpressVideoActivity.this.cJ.cJ.hpZ() == 21 && !TTRewardExpressVideoActivity.this.cJ.cJ.CJ()) {
                    TTRewardExpressVideoActivity.this.cJ.cJ.cJ(true);
                    TTRewardExpressVideoActivity.this.cJ.es.HzH();
                }
                if (TTRewardExpressVideoActivity.this.cJ.ac) {
                    if (TTRewardExpressVideoActivity.this.cJ.cJ.TGC()) {
                        if (TTRewardExpressVideoActivity.this.cJ.pM.hm() == 1) {
                            TTRewardExpressVideoActivity.this.cJ.js.ac();
                        }
                    } else {
                        TTRewardExpressVideoActivity.this.Qhi(false, 5);
                        if (!tP.fl(TTRewardExpressVideoActivity.this.cJ.cJ)) {
                            TTRewardExpressVideoActivity.this.cJ.bxS.Qhi("skip", true);
                        }
                    }
                } else if (TTRewardExpressVideoActivity.this.cJ.cJ.TGC()) {
                    if (TTRewardExpressVideoActivity.this.cJ.pM.hm() == 1) {
                        TTRewardExpressVideoActivity.this.cJ.js.ac();
                    }
                } else {
                    if (!tP.fl(TTRewardExpressVideoActivity.this.cJ.cJ)) {
                        TTRewardExpressVideoActivity.this.cJ.bxS.Qhi("skip", true);
                    }
                    TTRewardExpressVideoActivity.this.finish();
                }
                TTRewardExpressVideoActivity.this.zc = (int) (System.currentTimeMillis() / 1000);
                TTRewardExpressVideoActivity.this.tP();
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void cJ(long j2, int i) {
                TTRewardExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (TTRewardExpressVideoActivity.this.cJ.bxS.cJ()) {
                    TTRewardExpressVideoActivity.this.ABk();
                    return;
                }
                TTRewardExpressVideoActivity.this.tP();
                TTRewardExpressVideoActivity.this.cJ.bxS.ABk();
                if (TTRewardExpressVideoActivity.this.cJ.ac) {
                    TTRewardExpressVideoActivity.this.Qhi(false, 3);
                } else {
                    TTRewardExpressVideoActivity.this.finish();
                }
                TTRewardExpressVideoActivity.this.cJ.pM.Qhi(true);
                TTRewardExpressVideoActivity.this.cJ.bxS.Qhi(1 ^ TTRewardExpressVideoActivity.this.cJ.bxS.Eh(), 2);
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi() {
                TTRewardExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTRewardExpressVideoActivity.this.pA();
                TTRewardExpressVideoActivity.this.tP();
                if (TTRewardExpressVideoActivity.this.cJ.ac) {
                    TTRewardExpressVideoActivity.this.Qhi(false, 6);
                } else {
                    TTRewardExpressVideoActivity.this.finish();
                }
                TTRewardExpressVideoActivity.this.cJ.bxS.Qhi(!TTRewardExpressVideoActivity.this.cJ.bxS.Eh(), !TTRewardExpressVideoActivity.this.cJ.bxS.Eh());
                TTRewardExpressVideoActivity.this.cJ.bxS.ABk();
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, long j3) {
                if (!TTRewardExpressVideoActivity.this.cJ.Qe && TTRewardExpressVideoActivity.this.cJ.bxS.cJ()) {
                    TTRewardExpressVideoActivity.this.cJ.bxS.pA();
                }
                if (TTRewardExpressVideoActivity.this.cJ.WAv.get()) {
                    return;
                }
                TTRewardExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (j2 != TTRewardExpressVideoActivity.this.cJ.bxS.Sf()) {
                    TTRewardExpressVideoActivity.this.pA();
                }
                if (TTRewardExpressVideoActivity.this.cJ.bxS.cJ()) {
                    TTRewardExpressVideoActivity.this.cJ.bxS.Qhi(j2, j3);
                    int WAv = HzH.CJ().WAv(String.valueOf(TTRewardExpressVideoActivity.this.cJ.Tgh));
                    boolean z2 = TTRewardExpressVideoActivity.this.cJ.pM.Sf() && WAv >= 0;
                    TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                    long j4 = j2 / 1000;
                    tTRewardExpressVideoActivity.Tgh = (int) (tTRewardExpressVideoActivity.cJ.bxS.aP() - j4);
                    int i = (int) j4;
                    if ((TTRewardExpressVideoActivity.this.cJ.MQ.get() || TTRewardExpressVideoActivity.this.cJ.Gm.get()) && TTRewardExpressVideoActivity.this.cJ.bxS.cJ()) {
                        TTRewardExpressVideoActivity.this.cJ.bxS.pA();
                    }
                    if (TTRewardExpressVideoActivity.this.Tgh >= 0) {
                        TTRewardExpressVideoActivity.this.cJ.js.Qhi(String.valueOf(TTRewardExpressVideoActivity.this.Tgh), null);
                    }
                    TTRewardExpressVideoActivity.this.cJ.es.CJ(i);
                    TTRewardExpressVideoActivity.this.Qhi(j2, j3);
                    if (TTRewardExpressVideoActivity.this.cJ.pM != null && TTRewardExpressVideoActivity.this.cJ.pM.Qhi() != null) {
                        TTRewardExpressVideoActivity.this.cJ.pM.Qhi().Qhi(String.valueOf(TTRewardExpressVideoActivity.this.Tgh), i, 0, false);
                    }
                    if (TTRewardExpressVideoActivity.this.Tgh > 0) {
                        if (z2 && i >= WAv && TTRewardExpressVideoActivity.this.cJ.cJ.hpZ() != 5 && TTRewardExpressVideoActivity.this.cJ.cJ.hpZ() != 33) {
                            TTRewardExpressVideoActivity.this.cJ.Qhi(true);
                            TTRewardExpressVideoActivity.this.cJ.js.Qhi(String.valueOf(TTRewardExpressVideoActivity.this.Tgh), TTAdDislikeToast.getSkipText());
                            TTRewardExpressVideoActivity.this.cJ.js.fl(true);
                            return;
                        }
                        TTRewardExpressVideoActivity.this.cJ.js.Qhi(String.valueOf(TTRewardExpressVideoActivity.this.Tgh), null);
                    }
                }
            }
        });
        boolean Qhi2 = this.cJ.bxS.Qhi(j, z, hashMap, this.ac);
        if (Qhi2 && !z) {
            this.Gm = (int) (System.currentTimeMillis() / 1000);
        }
        return Qhi2;
    }
}
