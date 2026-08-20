package com.bytedance.sdk.openadsdk.core.ugen.cJ;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.adsdk.ugeno.core.pA;
import com.bytedance.adsdk.ugeno.core.zc;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.lB;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.ugen.CJ.ROR;
import com.bytedance.sdk.openadsdk.core.ugen.CJ.ac;
import com.bytedance.sdk.openadsdk.core.ugen.CJ.fl;
import com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ;
import com.bytedance.sdk.openadsdk.core.ugen.cJ.Qhi;
import com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.utils.js;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.utils.IabUtils;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UGenEndcardInflater.java */
/* loaded from: classes2.dex */
public class cJ implements pA, Qhi.InterfaceC0232Qhi {
    protected static int Qhi = 8;
    private View ABk;
    private final tP CJ;
    private ac Gm;
    private float HzH;
    private boolean MQ = true;
    private String ROR;
    private String Sf;
    private String Tgh;
    private final fl WAv;
    private final Activity ac;
    private Qhi cJ;
    private final com.bytedance.sdk.openadsdk.core.ugen.fl.Qhi fl;
    private JSONObject hm;
    private float hpZ;
    private float iMK;
    private long kYc;
    private float pA;
    private long tP;
    private String zc;

    public cJ(Activity activity, tP tPVar, com.bytedance.sdk.openadsdk.core.ugen.fl.Qhi qhi, String str, fl flVar) {
        this.ac = activity;
        this.zc = str;
        this.CJ = tPVar;
        this.WAv = flVar;
        this.fl = qhi;
    }

    public void Qhi() {
        if (this.CJ == null) {
            this.WAv.Qhi(1, "material is null", "net");
        } else if (this.fl == null) {
            this.WAv.Qhi(1, "material ugen template is null", "net");
        } else {
            this.cJ = new Qhi(this.ac);
            this.Sf = this.fl.ac();
            this.Tgh = this.fl.Qhi();
            this.ROR = this.fl.cJ();
            this.hm = this.CJ.mZ();
            this.WAv.Qhi();
            com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.Qhi().Qhi("endcard", this.Sf, this.Tgh, this.ROR, "", new cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.ugen.cJ.cJ.1
                @Override // com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.Qhi
                public void Qhi(JSONObject jSONObject, String str) {
                    cJ cJVar = cJ.this;
                    cJVar.Qhi(jSONObject, cJVar.hm);
                    cJ.this.WAv.Qhi(str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.ugen.Qhi.cJ.Qhi
                public void Qhi(int i, String str, String str2) {
                    cJ.this.WAv.Qhi(i, str, str2);
                }
            });
        }
    }

    public void Qhi(View view) {
        this.ABk = view;
    }

    public void Qhi(ac acVar) {
        this.Gm = acVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(JSONObject jSONObject, JSONObject jSONObject2) {
        this.cJ.Qhi((Qhi.InterfaceC0232Qhi) this);
        this.cJ.Qhi((pA) this);
        this.WAv.cJ();
        this.cJ.Qhi(jSONObject, jSONObject2, new ROR() { // from class: com.bytedance.sdk.openadsdk.core.ugen.cJ.cJ.2
            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.ROR
            public void Qhi(int i, String str) {
                if (cJ.this.WAv != null) {
                    cJ.this.WAv.Qhi(i, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.ROR
            public void Qhi(com.bytedance.adsdk.ugeno.component.cJ<View> cJVar) {
                if (cJ.this.WAv != null) {
                    cJ.this.WAv.Qhi(cJVar);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugen.cJ.Qhi.InterfaceC0232Qhi
    public void Qhi(zc zcVar) {
        String optString = zcVar.ac().optString(SessionDescription.ATTR_TYPE);
        optString.hashCode();
        char c2 = 65535;
        switch (optString.hashCode()) {
            case -314498168:
                if (optString.equals("privacy")) {
                    c2 = 0;
                    break;
                }
                break;
            case 94756344:
                if (optString.equals("close")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1820422063:
                if (optString.equals("creative")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                if (this.ac == null || TextUtils.isEmpty(HzH.CJ().es())) {
                    return;
                }
                TTWebsiteActivity.Qhi(this.ac, this.CJ, this.zc);
                return;
            case 1:
                ac acVar = this.Gm;
                if (acVar != null) {
                    acVar.cJ();
                    return;
                }
                return;
            case 2:
                if (this.ac == null || this.CJ == null) {
                    return;
                }
                cJ();
                Activity activity = this.ac;
                if (activity instanceof com.bytedance.sdk.openadsdk.core.video.ac.cJ) {
                    ((com.bytedance.sdk.openadsdk.core.video.ac.cJ) activity).CJ();
                }
                Qhi(zcVar, this.CJ);
                return;
            default:
                return;
        }
    }

    private void cJ() {
        int ip = this.CJ.ip();
        if (ip != 2 && ip != 3) {
            if (ip == 4) {
                Tgh.Qhi(this.ac, this.CJ, this.zc).CJ();
                return;
            } else if (ip != 5) {
                return;
            } else {
                js.ac(this.ac, this.CJ.Dq());
                return;
            }
        }
        if (ip == 3) {
            String YB = this.CJ.YB();
            if (!TextUtils.isEmpty(YB) && YB.contains("play.google.com/store")) {
                if (com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.ac.Qhi(this.ac, YB, YB.substring(YB.indexOf("?id=") + 4), this.zc, this.CJ)) {
                    return;
                }
            }
        }
        Activity activity = this.ac;
        tP tPVar = this.CJ;
        int Qhi2 = js.Qhi(this.zc);
        String str = this.zc;
        lB.Qhi((Context) activity, tPVar, Qhi2, (PAGNativeAd) null, (PangleAd) null, str, Tgh.Qhi(this.ac, this.CJ, str), true, 0);
    }

    private void Qhi(zc zcVar, tP tPVar) {
        int[] iArr;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("down_x", this.iMK);
            jSONObject.put("down_y", this.pA);
            jSONObject.put("down_time", this.kYc);
            jSONObject.put("up_x", this.hpZ);
            jSONObject.put("up_y", this.HzH);
            jSONObject.put("up_time", this.tP);
            View hm = zcVar.Qhi().hm();
            int i = 1;
            if (hm != null) {
                JSONObject jSONObject2 = new JSONObject();
                hm.getLocationOnScreen(new int[2]);
                jSONObject2.put(IabUtils.KEY_WIDTH, hm.getWidth());
                jSONObject2.put(IabUtils.KEY_HEIGHT, hm.getHeight());
                jSONObject2.put(TtmlNode.LEFT, iArr[0]);
                jSONObject2.put(JavaLdapSupport.TOP_ATTR, iArr[1]);
                jSONObject.put("rectInfo", jSONObject2);
            }
            View view = this.ABk;
            if (view != null) {
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                jSONObject.put("button_x", iArr2[0]);
                jSONObject.put("button_y", iArr2[1]);
                jSONObject.put("button_width", this.ABk.getWidth());
                jSONObject.put("button_height", this.ABk.getHeight());
            }
            View findViewById = this.ac.findViewById(16908290);
            if (findViewById != null) {
                int[] iArr3 = new int[2];
                findViewById.getLocationOnScreen(iArr3);
                jSONObject.put("ad_x", iArr3[0]);
                jSONObject.put("ad_y", iArr3[1]);
                jSONObject.put(IabUtils.KEY_WIDTH, findViewById.getWidth());
                jSONObject.put(IabUtils.KEY_HEIGHT, findViewById.getHeight());
            }
            jSONObject.put("click_area_type", zcVar.Qhi().pA());
            jSONObject.put("brick_id", zcVar.Qhi().iMK());
            jSONObject.put("endcard_id", this.Tgh);
            jSONObject.put("click_scence", 2);
            if (!this.MQ) {
                i = 2;
            }
            jSONObject.put("user_behavior_type", i);
            ac acVar = this.Gm;
            if (acVar != null) {
                jSONObject.put("endcard_type", acVar.Qhi());
            }
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, this.zc, Constants.CLICK, jSONObject);
        } catch (JSONException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.pA
    public void Qhi(com.bytedance.adsdk.ugeno.component.cJ cJVar, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.kYc = System.currentTimeMillis();
            this.iMK = motionEvent.getRawX();
            this.pA = motionEvent.getRawY();
            this.MQ = true;
        } else if (action != 1) {
            if (action != 2) {
                return;
            }
            if (Math.abs(motionEvent.getRawX() - this.iMK) >= Qhi || Math.abs(motionEvent.getRawY() - this.pA) >= Qhi) {
                this.MQ = false;
            }
        } else {
            this.hpZ = motionEvent.getRawX();
            this.HzH = motionEvent.getRawY();
            if (Math.abs(this.hpZ - this.iMK) >= Qhi || Math.abs(this.HzH - this.pA) >= Qhi) {
                this.MQ = false;
            }
            this.tP = System.currentTimeMillis();
        }
    }
}
