package com.bytedance.sdk.openadsdk.core.ugen.ac;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.core.zc;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.kYc;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: UGenSwiperEvent.java */
/* loaded from: classes2.dex */
public class fl {
    private boolean ABk;
    private com.bytedance.adsdk.ugeno.component.cJ CJ;
    private JSONObject Gm;
    private final Context ROR;
    private final tP Sf;
    private com.bytedance.sdk.openadsdk.core.widget.ac WAv;
    private com.bytedance.adsdk.ugeno.component.cJ ac;
    private com.bytedance.adsdk.ugeno.component.cJ fl;
    private final String hm;
    private JSONArray hpZ;
    private boolean iMK;
    private boolean pA;
    private final JSONObject zc;
    private int Qhi = -1;
    private int cJ = -1;
    private final String Tgh = "UGenSwiperEvent";

    public fl(Context context, tP tPVar, String str, JSONObject jSONObject) {
        this.ROR = context;
        this.Sf = tPVar;
        this.hm = str;
        this.zc = jSONObject;
    }

    public void Qhi(com.bytedance.adsdk.ugeno.component.cJ<View> cJVar) {
        com.bytedance.adsdk.ugeno.component.cJ<View> cJ = cJVar.cJ("swiperLayout");
        this.fl = cJ;
        if (cJ instanceof com.bytedance.adsdk.ugeno.cJ) {
            this.hpZ = this.zc.optJSONArray("dpa_data");
            this.ac = cJVar.cJ("swiperLeftArrow");
            this.CJ = cJVar.cJ("swiperRightArrow");
            ((com.bytedance.adsdk.ugeno.cJ) this.fl).Qhi(new com.bytedance.adsdk.ugeno.swiper.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.ugen.ac.fl.1
                @Override // com.bytedance.adsdk.ugeno.swiper.Qhi
                public void Qhi(boolean z, int i, int i2, boolean z2, boolean z3) {
                    fl.this.cJ = i;
                    fl.this.Qhi = i2;
                    fl.this.ABk = z;
                    fl.this.iMK = z2;
                    fl.this.pA = z3;
                    fl.this.Qhi(z, z2, z3);
                    fl.this.Qhi(i);
                }
            });
        }
    }

    public void Qhi() {
        Qhi(this.ABk, this.iMK, this.pA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(boolean z, boolean z2, boolean z3) {
        com.bytedance.adsdk.ugeno.component.cJ cJVar = this.ac;
        if (cJVar == null || this.CJ == null) {
            return;
        }
        View hm = cJVar.hm();
        View hm2 = this.CJ.hm();
        JSONArray jSONArray = this.hpZ;
        if (jSONArray != null && jSONArray.length() == 1) {
            hm.setVisibility(8);
            hm2.setVisibility(8);
        } else if (z) {
        } else {
            if (z2) {
                if (hm instanceof TextView) {
                    Qhi((TextView) hm, 90);
                }
                if (hm2 instanceof TextView) {
                    Qhi((TextView) hm2, 255);
                }
            } else if (z3) {
                if (hm instanceof TextView) {
                    Qhi((TextView) hm, 255);
                }
                if (hm2 instanceof TextView) {
                    Qhi((TextView) hm2, 90);
                }
            } else {
                if (hm instanceof TextView) {
                    Qhi((TextView) hm, 255);
                }
                if (hm2 instanceof TextView) {
                    Qhi((TextView) hm2, 255);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(FirebaseAnalytics.Param.INDEX, i);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.Sf, this.hm, "carousel_show", jSONObject);
    }

    private void Qhi(TextView textView, int i) {
        int currentTextColor = textView.getCurrentTextColor();
        textView.setTextColor(Color.argb(i, Color.red(currentTextColor), Color.green(currentTextColor), Color.blue(currentTextColor)));
    }

    public void cJ() {
        int i;
        com.bytedance.adsdk.ugeno.component.cJ cJVar = this.fl;
        if (!(cJVar instanceof com.bytedance.adsdk.ugeno.cJ) || (i = this.Qhi) == -1) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.cJ) cJVar).Qhi(i - 1);
    }

    public void ac() {
        int i;
        com.bytedance.adsdk.ugeno.component.cJ cJVar = this.fl;
        if (!(cJVar instanceof com.bytedance.adsdk.ugeno.cJ) || (i = this.Qhi) == -1) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.cJ) cJVar).Qhi(i + 1);
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.widget.ac acVar) {
        this.WAv = acVar;
    }

    public boolean Qhi(zc zcVar) {
        JSONObject optJSONObject;
        this.Gm = null;
        int i = this.cJ;
        if (i != -1 && i != 0) {
            try {
                JSONObject ac = zcVar.ac();
                if (ac != null && (optJSONObject = ac.optJSONObject("related_dpa_click")) != null) {
                    boolean optBoolean = optJSONObject.optBoolean("enableOpenExternalUrl");
                    int optInt = optJSONObject.optInt("landingStyle");
                    if (optBoolean && optInt != -1) {
                        if (this.hpZ != null) {
                            String Qhi = com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(optJSONObject.optString("url"), this.hpZ.optJSONObject(this.cJ));
                            String Qhi2 = com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(optJSONObject.optString("fallback_url"), this.hpZ.optJSONObject(this.cJ));
                            optJSONObject.put("url", Qhi);
                            optJSONObject.put("fallback_url", Qhi2);
                            Qhi(optJSONObject, this.hpZ.optJSONObject(this.cJ));
                        }
                        Qhi(optJSONObject, zcVar.Qhi().hm());
                        return true;
                    }
                    return false;
                }
            } catch (Throwable th) {
                ABk.Qhi("UGenSwiperEvent", th.getMessage());
            }
        }
        return false;
    }

    private void Qhi(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("clickInfo");
        this.Gm = optJSONObject;
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    this.Gm.putOpt(next, com.bytedance.adsdk.ugeno.Qhi.ac.Qhi((String) this.Gm.opt(next), jSONObject2));
                } catch (Throwable unused) {
                }
            }
            try {
                jSONObject.putOpt("clickInfo", this.Gm);
            } catch (Throwable unused2) {
            }
        }
    }

    public JSONObject CJ() {
        return this.Gm;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0008, code lost:
        if (r4 != 3) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean Qhi(int r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            r0 = 0
            r1 = 1
            if (r4 == r1) goto L1f
            r2 = 2
            if (r4 == r2) goto Lb
            r6 = 3
            if (r4 == r6) goto L1f
            goto L26
        Lb:
            boolean r4 = android.text.TextUtils.isEmpty(r5)
            if (r4 == 0) goto L18
            boolean r4 = android.text.TextUtils.isEmpty(r6)
            if (r4 == 0) goto L18
            goto L27
        L18:
            boolean r4 = com.bytedance.sdk.component.utils.hpZ.Qhi(r6)
            if (r4 != 0) goto L26
            goto L27
        L1f:
            boolean r4 = com.bytedance.sdk.component.utils.hpZ.Qhi(r5)
            if (r4 != 0) goto L26
            goto L27
        L26:
            r0 = r1
        L27:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ugen.ac.fl.Qhi(int, java.lang.String, java.lang.String):boolean");
    }

    private void Qhi(JSONObject jSONObject, View view) {
        if (Qhi(jSONObject.optInt("landingStyle"), jSONObject.optString("url"), jSONObject.optString("fallback_url"))) {
            kYc.Qhi(Qhi(view), this.ROR instanceof Activity, jSONObject, this.Sf, this.hm, js.Qhi(this.hm), null, this.WAv);
        }
    }

    private Context Qhi(View view) {
        Activity Qhi = view != null ? com.bytedance.sdk.component.utils.cJ.Qhi(view) : null;
        return Qhi == null ? this.ROR : Qhi;
    }
}
