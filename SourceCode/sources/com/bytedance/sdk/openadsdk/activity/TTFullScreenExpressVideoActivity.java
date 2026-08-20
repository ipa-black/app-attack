package com.bytedance.sdk.openadsdk.activity;

import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.component.reward.cJ.hm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.ABk;
import com.explorestack.iab.vast.VastError;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TTFullScreenExpressVideoActivity extends TTFullScreenVideoActivity {
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void ac() {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean kYc() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public boolean Qhi(long j, boolean z) {
        Sf sf;
        if (this.cJ.pM != null && this.cJ.pM.Qhi() != null) {
            sf = this.cJ.pM.Qhi().getAdShowTime();
        } else {
            sf = new Sf();
        }
        if (this.ac != null && (this.ac instanceof hm) && !this.cJ.cjC) {
            this.cJ.bxS.Qhi(((hm) this.ac).NFd(), sf);
        } else {
            this.cJ.bxS.Qhi(this.cJ.pM.cJ(), sf);
        }
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
        this.cJ.bxS.Qhi(new fl.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.1
            boolean Qhi;

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, int i) {
                if (this.Qhi) {
                    return;
                }
                this.Qhi = true;
                TTFullScreenExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTFullScreenExpressVideoActivity.this.pA();
                TTFullScreenExpressVideoActivity.this.cJ.bxS.Qhi(j2, j2);
                TTFullScreenExpressVideoActivity.this.cJ.pM.cJ(true);
                if (TTFullScreenExpressVideoActivity.this.cJ.cJ.hpZ() == 36 && TTFullScreenExpressVideoActivity.this.cJ.ac) {
                    TTFullScreenExpressVideoActivity.this.cJ.Dww.ac().CJ();
                    ABk.cJ();
                }
                if (TTFullScreenExpressVideoActivity.this.cJ.cJ.hpZ() == 21 && !TTFullScreenExpressVideoActivity.this.cJ.cJ.CJ()) {
                    TTFullScreenExpressVideoActivity.this.cJ.cJ.cJ(true);
                    TTFullScreenExpressVideoActivity.this.cJ.es.HzH();
                }
                if (TTFullScreenExpressVideoActivity.this.cJ.ac) {
                    if (TTFullScreenExpressVideoActivity.this.cJ.cJ.TGC()) {
                        if (TTFullScreenExpressVideoActivity.this.cJ.pM.hm() == 1) {
                            TTFullScreenExpressVideoActivity.this.cJ.js.ac();
                            return;
                        }
                        return;
                    }
                    TTFullScreenExpressVideoActivity.this.Qhi(false, 5);
                    if (tP.fl(TTFullScreenExpressVideoActivity.this.cJ.cJ)) {
                        return;
                    }
                    TTFullScreenExpressVideoActivity.this.cJ.bxS.Qhi("skip", true);
                } else if (tP.fl(TTFullScreenExpressVideoActivity.this.cJ.cJ)) {
                    TTFullScreenExpressVideoActivity.this.finish();
                } else if (TTFullScreenExpressVideoActivity.this.cJ.pM == null || TTFullScreenExpressVideoActivity.this.cJ.pM.Qhi() == null) {
                } else {
                    TTFullScreenExpressVideoActivity.this.cJ.pM.Qhi().Qhi("0", 0, 0, false);
                    if (TTFullScreenExpressVideoActivity.this.cJ.pM.Sf()) {
                        TTFullScreenExpressVideoActivity.this.cJ.js.Qhi("0", "X");
                        TTFullScreenExpressVideoActivity.this.cJ.js.fl(true);
                        TTFullScreenExpressVideoActivity.this.cJ.js.ac();
                    }
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void cJ(long j2, int i) {
                TTFullScreenExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (TTFullScreenExpressVideoActivity.this.cJ.bxS.cJ()) {
                    TTFullScreenExpressVideoActivity.this.ABk();
                    return;
                }
                TTFullScreenExpressVideoActivity.this.cJ.bxS.ABk();
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.FSEVA", "fullscreen_interstitial_ad", "onError、、、、、、、、");
                TTFullScreenExpressVideoActivity.this.cJ.pM.Qhi(true);
                if (TTFullScreenExpressVideoActivity.this.cJ.ac) {
                    TTFullScreenExpressVideoActivity.this.Qhi(false, 3);
                    TTFullScreenExpressVideoActivity.this.cJ.bxS.Qhi(1 ^ TTFullScreenExpressVideoActivity.this.cJ.bxS.Eh(), 2);
                    return;
                }
                TTFullScreenExpressVideoActivity.this.finish();
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi() {
                TTFullScreenExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                TTFullScreenExpressVideoActivity.this.pA();
                new Object[]{"fullscreen_interstitial_ad", "onTimeOut、、、、、、、、"};
                if (TTFullScreenExpressVideoActivity.this.cJ.ac) {
                    TTFullScreenExpressVideoActivity.this.Qhi(false, 6);
                } else {
                    TTFullScreenExpressVideoActivity.this.finish();
                }
                TTFullScreenExpressVideoActivity.this.cJ.bxS.Qhi(!TTFullScreenExpressVideoActivity.this.cJ.bxS.Eh(), !TTFullScreenExpressVideoActivity.this.cJ.bxS.Eh());
                TTFullScreenExpressVideoActivity.this.cJ.bxS.ABk();
            }

            @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
            public void Qhi(long j2, long j3) {
                if (!TTFullScreenExpressVideoActivity.this.cJ.Qe && TTFullScreenExpressVideoActivity.this.cJ.bxS.cJ()) {
                    TTFullScreenExpressVideoActivity.this.cJ.bxS.pA();
                }
                if (TTFullScreenExpressVideoActivity.this.cJ.WAv.get()) {
                    return;
                }
                TTFullScreenExpressVideoActivity.this.CJ.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                if (j2 != TTFullScreenExpressVideoActivity.this.cJ.bxS.Sf()) {
                    TTFullScreenExpressVideoActivity.this.pA();
                }
                if (TTFullScreenExpressVideoActivity.this.cJ.bxS.cJ()) {
                    TTFullScreenExpressVideoActivity.this.cJ.bxS.Qhi(j2, j3);
                    TTFullScreenExpressVideoActivity tTFullScreenExpressVideoActivity = TTFullScreenExpressVideoActivity.this;
                    long j4 = j2 / 1000;
                    tTFullScreenExpressVideoActivity.Tgh = (int) (tTFullScreenExpressVideoActivity.cJ.bxS.aP() - j4);
                    int i = (int) j4;
                    if ((TTFullScreenExpressVideoActivity.this.cJ.MQ.get() || TTFullScreenExpressVideoActivity.this.cJ.Gm.get()) && TTFullScreenExpressVideoActivity.this.cJ.bxS.cJ()) {
                        TTFullScreenExpressVideoActivity.this.cJ.bxS.pA();
                    }
                    if (TTFullScreenExpressVideoActivity.this.cJ.pM != null && TTFullScreenExpressVideoActivity.this.cJ.pM.Qhi() != null) {
                        TTFullScreenExpressVideoActivity.this.cJ.pM.Qhi().Qhi(String.valueOf(TTFullScreenExpressVideoActivity.this.Tgh), i, 0, false);
                    }
                    if (TTFullScreenExpressVideoActivity.this.cJ.pM.Sf() || TTFullScreenExpressVideoActivity.this.cJ.cJ.Ewb()) {
                        TTFullScreenExpressVideoActivity.this.ac(i);
                        if (TTFullScreenExpressVideoActivity.this.Tgh >= 0) {
                            TTFullScreenExpressVideoActivity.this.cJ.js.CJ(true);
                            TTFullScreenExpressVideoActivity.this.cJ.js.Qhi(String.valueOf(TTFullScreenExpressVideoActivity.this.Tgh), null);
                        }
                    }
                }
            }
        });
        return this.cJ.bxS.Qhi(j, z, hashMap, this.ac);
    }
}
