package com.bytedance.sdk.component.adexpress.dynamic.CJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.ROR;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DynamicLayoutInflater.java */
/* loaded from: classes2.dex */
public class Sf {
    private static HashMap<String, String> ROR;
    private Qhi CJ;
    private JSONObject Qhi;
    private com.bytedance.sdk.component.adexpress.dynamic.ac.fl Tgh;
    private com.bytedance.sdk.component.adexpress.dynamic.ac.ac ac;
    private JSONObject cJ;
    private fl fl;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        ROR = hashMap;
        hashMap.put("subtitle", "description");
        ROR.put("source", "source|app.app_name");
        ROR.put("screenshot", "dynamic_creative.screenshot");
    }

    public Sf(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.Qhi = jSONObject;
        this.cJ = jSONObject2;
        this.ac = new com.bytedance.sdk.component.adexpress.dynamic.ac.ac(jSONObject2);
        this.CJ = Qhi.Qhi(jSONObject3);
        this.Tgh = com.bytedance.sdk.component.adexpress.dynamic.ac.fl.Qhi(jSONObject4);
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ac.hm Qhi(double d2, int i, double d3, String str, iMK imk) {
        JSONObject jSONObject;
        this.ac.Qhi();
        try {
            jSONObject = new JSONObject(this.Tgh.cJ);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        com.bytedance.sdk.component.adexpress.dynamic.ac.hm Qhi2 = Qhi(Tgh.Qhi(this.Qhi, jSONObject), (com.bytedance.sdk.component.adexpress.dynamic.ac.hm) null);
        Qhi(Qhi2);
        ROR ror = new ROR(d2, i, d3, str, imk);
        ROR.Qhi qhi = new ROR.Qhi();
        qhi.Qhi = this.CJ.Qhi;
        qhi.cJ = this.CJ.cJ;
        qhi.ac = 0.0f;
        ror.Qhi(qhi);
        ror.Qhi(Qhi2, 0.0f, 0.0f);
        ror.Qhi();
        if (ror.Qhi.CJ == 65536.0f) {
            return null;
        }
        return ror.Qhi.Tgh;
    }

    private void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        int Qhi2;
        if (hmVar == null) {
            return;
        }
        if (com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac() != null) {
            Qhi2 = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac().pA();
        } else {
            Qhi2 = CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi());
        }
        float min = this.CJ.ac ? this.CJ.Qhi : Math.min(this.CJ.Qhi, CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), Qhi2));
        if (this.CJ.cJ == 0.0f) {
            hmVar.fl(min);
            hmVar.WAv().fl().WAv("auto");
            hmVar.Tgh(0.0f);
            return;
        }
        hmVar.fl(min);
        hmVar.Tgh(this.CJ.ac ? this.CJ.cJ : Math.min(this.CJ.cJ, CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi()))));
        hmVar.WAv().fl().WAv("fixed");
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ac.hm Qhi(JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        int length;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(SessionDescription.ATTR_TYPE);
        if (TextUtils.equals(optString, "custom-component-vessel")) {
            int optInt = jSONObject.optInt("componentId");
            if (this.Tgh != null) {
                fl flVar = new fl();
                this.fl = flVar;
                JSONObject Qhi2 = flVar.Qhi(this.Tgh.Qhi, optInt, jSONObject);
                if (Qhi2 != null) {
                    jSONObject = Qhi2;
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.ac.hm Qhi3 = Qhi(jSONObject);
        Qhi3.Qhi(hmVar);
        JSONArray optJSONArray = jSONObject.optJSONArray("children");
        if (optJSONArray == null) {
            Qhi3.Qhi((List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm>) null);
            return Qhi3;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONArray optJSONArray2 = optJSONArray.optJSONArray(i);
            if (optJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList();
                if (TextUtils.equals(optString, "tag-group")) {
                    length = Qhi3.WAv().fl().gga();
                } else {
                    length = optJSONArray2.length();
                }
                for (int i2 = 0; i2 < length; i2++) {
                    com.bytedance.sdk.component.adexpress.dynamic.ac.hm Qhi4 = Qhi(optJSONArray2.optJSONObject(i2), Qhi3);
                    if (com.bytedance.sdk.component.adexpress.fl.cJ() && "skip-with-time".equals(Qhi3.WAv().cJ()) && !"transparent".equals(Qhi3.bxS()) && !TextUtils.isEmpty(Qhi3.bxS())) {
                        Qhi4.ac(Qhi3.bxS());
                    }
                    arrayList.add(Qhi4);
                    arrayList3.add(Qhi4);
                }
                arrayList2.add(arrayList3);
            }
        }
        if (arrayList.size() > 0) {
            Qhi3.Qhi(arrayList);
        }
        if (arrayList2.size() > 0) {
            Qhi3.cJ(arrayList2);
        }
        return Qhi3;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ac.hm Qhi(JSONObject jSONObject) {
        String Qhi2;
        JSONObject jSONObject2;
        String optString = jSONObject.optString(SessionDescription.ATTR_TYPE);
        String optString2 = jSONObject.optString("id");
        JSONObject optJSONObject = jSONObject.optJSONObject("values");
        Gm.Qhi(optString, optJSONObject);
        JSONObject Qhi3 = Gm.Qhi(optString, Gm.Qhi(jSONObject.optJSONArray("sceneValues")), optJSONObject);
        com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar = new com.bytedance.sdk.component.adexpress.dynamic.ac.hm();
        if (TextUtils.isEmpty(optString2)) {
            hmVar.cJ(String.valueOf(hmVar.hashCode()));
        } else {
            hmVar.cJ(optString2);
        }
        if (optJSONObject != null) {
            cJ(hmVar);
            hmVar.ac((float) optJSONObject.optDouble("x"));
            hmVar.CJ((float) optJSONObject.optDouble("y"));
            hmVar.fl((float) optJSONObject.optDouble(IabUtils.KEY_WIDTH));
            hmVar.Tgh((float) optJSONObject.optDouble(IabUtils.KEY_HEIGHT));
            hmVar.ROR(optJSONObject.optInt("remainWidth"));
            com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh tgh = new com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh();
            tgh.Qhi(optString);
            tgh.cJ(optJSONObject.optString("data"));
            tgh.ac(optJSONObject.optString("dataExtraInfo"));
            com.bytedance.sdk.component.adexpress.dynamic.ac.ROR Qhi4 = com.bytedance.sdk.component.adexpress.dynamic.ac.ROR.Qhi(optJSONObject);
            tgh.Qhi(Qhi4);
            com.bytedance.sdk.component.adexpress.dynamic.ac.ROR Qhi5 = com.bytedance.sdk.component.adexpress.dynamic.ac.ROR.Qhi(Qhi3);
            if (Qhi5 == null) {
                tgh.cJ(Qhi4);
            } else {
                tgh.cJ(Qhi5);
            }
            Qhi(Qhi4);
            Qhi(Qhi5);
            if (TextUtils.equals(optString, "video-image-budget") && (jSONObject2 = this.cJ) != null) {
                Qhi(tgh, jSONObject2.optInt("image_mode"));
            }
            String cJ = tgh.cJ();
            com.bytedance.sdk.component.adexpress.dynamic.ac.ROR fl = tgh.fl();
            if (ROR.containsKey(cJ) && !fl.Hf()) {
                fl.MQ(ROR.get(cJ));
            }
            if (fl.Hf()) {
                Qhi2 = tgh.ac();
            } else {
                Qhi2 = Qhi(tgh.ac());
            }
            if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                if (TextUtils.equals(cJ, "star") || TextUtils.equals(cJ, "text_star")) {
                    Qhi2 = Qhi("dynamic_creative.score_exact_i18n|");
                }
                if (TextUtils.equals(cJ, "score-count") || TextUtils.equals(cJ, "score-count-type-1") || TextUtils.equals(cJ, "score-count-type-2")) {
                    Qhi2 = Qhi("dynamic_creative.comment_num_i18n|");
                }
                if ("root".equals(cJ) && Qhi4.SNp()) {
                    Qhi2 = Qhi("image.0.url");
                }
            }
            if (!TextUtils.isEmpty(Qhi()) && (TextUtils.equals("logo-union", optString) || TextUtils.equals("logo", optString))) {
                tgh.cJ(Qhi2 + "adx:" + Qhi());
            } else {
                tgh.cJ(Qhi2);
            }
            hmVar.Qhi(tgh);
        }
        return hmVar;
    }

    private void cJ(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        com.bytedance.sdk.component.adexpress.dynamic.ac.ac acVar;
        Object Qhi2;
        Object Qhi3;
        Object Qhi4;
        Object Qhi5;
        if (hmVar == null || (acVar = this.ac) == null || (Qhi2 = acVar.Qhi("image.0.url")) == null) {
            return;
        }
        String valueOf = String.valueOf(Qhi2);
        if (TextUtils.isEmpty(valueOf) || (Qhi3 = this.ac.Qhi("title")) == null) {
            return;
        }
        String valueOf2 = String.valueOf(Qhi3);
        if (TextUtils.isEmpty(valueOf2) || (Qhi4 = this.ac.Qhi("description")) == null) {
            return;
        }
        String valueOf3 = String.valueOf(Qhi4);
        if (TextUtils.isEmpty(valueOf3) || (Qhi5 = this.ac.Qhi("icon")) == null) {
            return;
        }
        String valueOf4 = String.valueOf(Qhi5);
        if (TextUtils.isEmpty(valueOf4)) {
            return;
        }
        Object Qhi6 = this.ac.Qhi("app.app_name");
        Object Qhi7 = this.ac.Qhi("source");
        if (Qhi6 == null && Qhi7 == null) {
            return;
        }
        if (Qhi6 == null) {
            Qhi6 = Qhi7;
        }
        String valueOf5 = String.valueOf(Qhi6);
        if (TextUtils.isEmpty(valueOf5)) {
            return;
        }
        hmVar.Qhi(IabUtils.KEY_IMAGE_URL, valueOf);
        hmVar.Qhi("title", valueOf2);
        hmVar.Qhi("description", valueOf3);
        hmVar.Qhi("icon", valueOf4);
        hmVar.Qhi("app_name", valueOf5);
        hmVar.Qhi(true);
    }

    private void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.Tgh tgh, int i) {
        int lastIndexOf;
        if (i == 5 || i == 15 || i == 50 || i == 154) {
            tgh.Qhi("video");
            String Qhi2 = Gm.Qhi("video");
            tgh.fl().MQ(Qhi2);
            String Qhi3 = Gm.Qhi("video", "clickArea");
            if (!TextUtils.isEmpty(Qhi3)) {
                tgh.fl().pA(Qhi3);
                tgh.ROR().pA(Qhi3);
            }
            tgh.ROR().MQ(Qhi2);
            tgh.cJ(Qhi2);
            tgh.fl().yy();
            return;
        }
        tgh.Qhi("image");
        String Qhi4 = Gm.Qhi("image");
        com.bytedance.sdk.component.adexpress.dynamic.ac.ROR fl = tgh.fl();
        fl.MQ(Qhi4);
        tgh.ROR().MQ(Qhi4);
        String Qhi5 = Gm.Qhi("image", "clickArea");
        if (!TextUtils.isEmpty(Qhi5)) {
            fl.pA(Qhi5);
            tgh.ROR().pA(Qhi5);
        }
        JSONObject Ohm = fl.Ohm();
        if (Ohm != null) {
            fl.bxS(Ohm.optString("imageLottieTosPath"));
            fl.zc(Ohm.optBoolean("animationsLoop"));
            fl.pM(Ohm.optInt("lottieAppNameMaxLength"));
            fl.aP(Ohm.optInt("lottieAdDescMaxLength"));
            fl.Eh(Ohm.optInt("lottieAdTitleMaxLength"));
        }
        tgh.cJ(Qhi4);
        if (Qhi4 != null && (lastIndexOf = Qhi4.lastIndexOf(".")) > 0) {
            String substring = Qhi4.substring(0, lastIndexOf);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(IabUtils.KEY_WIDTH, Qhi(substring + ".width"));
                jSONObject.put(IabUtils.KEY_HEIGHT, Qhi(substring + ".height"));
            } catch (JSONException unused) {
            }
            tgh.ac(jSONObject.toString());
        }
        fl.mz();
    }

    private String Qhi(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : str.split("\\|")) {
            if (this.ac.cJ(str2)) {
                String valueOf = String.valueOf(this.ac.Qhi(str2));
                if (!TextUtils.isEmpty(valueOf)) {
                    return valueOf;
                }
            }
        }
        return "";
    }

    private String Qhi() {
        com.bytedance.sdk.component.adexpress.dynamic.ac.ac acVar = this.ac;
        if (acVar == null) {
            return "";
        }
        return String.valueOf(acVar.Qhi("adx_name"));
    }

    private void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.ROR ror) {
        if (ror == null) {
            return;
        }
        String NFd = ror.NFd();
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            String ac = CQU.ac(com.bytedance.sdk.component.adexpress.fl.Qhi());
            if ("zh".equals(ac)) {
                ac = "cn";
            }
            if (!TextUtils.isEmpty(ac) && ror.Tgh() != null) {
                String optString = ror.Tgh().optString(ac);
                if (!TextUtils.isEmpty(optString)) {
                    NFd = optString;
                }
            }
        }
        if (TextUtils.isEmpty(NFd)) {
            return;
        }
        int indexOf = NFd.indexOf("{{");
        int indexOf2 = NFd.indexOf("}}");
        if (indexOf < 0 || indexOf2 < 0 || indexOf2 < indexOf) {
            ror.zc(NFd);
            return;
        }
        String Qhi2 = Qhi(NFd.substring(indexOf + 2, indexOf2));
        StringBuilder sb = new StringBuilder(NFd.substring(0, indexOf));
        if (!TextUtils.isEmpty(Qhi2)) {
            sb.append(Qhi2);
        }
        sb.append(NFd.substring(indexOf2 + 2));
        ror.zc(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicLayoutInflater.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        float Qhi;
        boolean ac;
        float cJ;

        public static Qhi Qhi(JSONObject jSONObject) {
            Qhi qhi = new Qhi();
            if (jSONObject != null) {
                qhi.Qhi = (float) jSONObject.optDouble(IabUtils.KEY_WIDTH);
                qhi.cJ = (float) jSONObject.optDouble(IabUtils.KEY_HEIGHT);
                qhi.ac = jSONObject.optBoolean("isLandscape");
            }
            return qhi;
        }
    }
}
