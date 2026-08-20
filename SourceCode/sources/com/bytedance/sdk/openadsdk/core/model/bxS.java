package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PlayableModel.java */
/* loaded from: classes2.dex */
public class bxS {
    private int CJ;
    private int Qhi;
    private int ROR;
    private int Sf;
    private String Tgh;
    private boolean WAv;
    private boolean ac;
    private int cJ;
    private String fl;
    private int hm;

    public static int Qhi(int i) {
        return i + 10;
    }

    public static boolean ROR(tP tPVar) {
        return true;
    }

    private static int cJ(int i) {
        return i == 1 ? 10 : 5;
    }

    public bxS(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.ac = jSONObject.optBoolean("is_playable");
        this.CJ = jSONObject.optInt("playable_type", 0);
        this.fl = jSONObject.optString("playable_style");
        JSONObject optJSONObject = jSONObject.optJSONObject("playable");
        if (optJSONObject != null) {
            this.Tgh = optJSONObject.optString("playable_url", "");
            this.ROR = optJSONObject.optInt("playable_orientation", 0);
            this.cJ = optJSONObject.optInt("new_style", 0);
            this.Qhi = optJSONObject.optInt("close_2_app", 0);
            int cJ = cJ(this.CJ);
            this.Sf = optJSONObject.optInt("playable_webview_timeout", cJ);
            this.hm = optJSONObject.optInt("playable_js_timeout", cJ);
            this.WAv = optJSONObject.optInt("playable_backup_enable", 0) == 1;
        }
    }

    public static int Qhi(tP tPVar) {
        int i;
        bxS pA = tPVar.pA();
        if (pA != null && (i = pA.Qhi) >= 0 && i <= 100) {
            return i;
        }
        return 0;
    }

    public void Qhi(JSONObject jSONObject) {
        try {
            jSONObject.put("is_playable", this.ac);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("PlayableModel", e2.getMessage());
        }
        if (!TextUtils.isEmpty(this.Tgh)) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("playable_url", this.Tgh);
                jSONObject2.put("playable_orientation", this.ROR);
                jSONObject2.put("new_style", this.cJ);
                jSONObject2.put("close_2_app", this.Qhi);
                jSONObject2.put("playable_webview_timeout", this.Sf);
                jSONObject2.put("playable_js_timeout", this.hm);
                jSONObject2.put("playable_backup_enable", this.WAv ? 1 : 0);
                jSONObject.put("playable", jSONObject2);
            } catch (Exception e3) {
                com.bytedance.sdk.component.utils.ABk.Qhi("PlayableModel", e3.getMessage());
            }
        }
        try {
            jSONObject.put("playable_type", this.CJ);
        } catch (JSONException e4) {
            com.bytedance.sdk.component.utils.ABk.Qhi("PlayableModel", e4.getMessage());
        }
        try {
            jSONObject.put("playable_style", this.fl);
        } catch (JSONException e5) {
            com.bytedance.sdk.component.utils.ABk.Qhi("PlayableModel", e5.getMessage());
        }
    }

    private static bxS HzH(tP tPVar) {
        if (tPVar == null) {
            return null;
        }
        return tPVar.pA();
    }

    public static boolean cJ(tP tPVar) {
        bxS HzH = HzH(tPVar);
        return (HzH == null || !HzH.ac || TextUtils.isEmpty(Tgh(tPVar))) ? false : true;
    }

    public static boolean ac(tP tPVar) {
        bxS pA = tPVar.pA();
        return pA != null && pA.ac && pA.cJ == 1;
    }

    private static int kYc(tP tPVar) {
        bxS HzH = HzH(tPVar);
        if (HzH == null) {
            return 0;
        }
        return HzH.CJ;
    }

    public static String CJ(tP tPVar) {
        bxS HzH = HzH(tPVar);
        if (HzH == null) {
            return null;
        }
        return HzH.fl;
    }

    public static String fl(tP tPVar) {
        bxS HzH = HzH(tPVar);
        if (HzH == null) {
            return null;
        }
        return HzH.Tgh;
    }

    public static String Tgh(tP tPVar) {
        if (tPVar == null) {
            return null;
        }
        bxS pA = tPVar.pA();
        if (pA != null && pA.ac) {
            String str = pA.Tgh;
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        if (tPVar.hpZ() == 20) {
            return tPVar.YB();
        }
        if (tPVar.FQ() != null) {
            return tPVar.FQ().zc();
        }
        return null;
    }

    public static boolean Sf(tP tPVar) {
        return ((tPVar == null || tPVar.FQ() == null) ? 0 : tPVar.FQ().MQ()) != 1;
    }

    public static boolean hm(tP tPVar) {
        com.bykv.vk.openvk.component.video.api.ac.cJ FQ = tPVar.FQ();
        return FQ != null && FQ.MQ() == 1;
    }

    public static int WAv(tP tPVar) {
        bxS HzH = HzH(tPVar);
        if (HzH == null) {
            return 0;
        }
        return HzH.ROR;
    }

    public static boolean Gm(tP tPVar) {
        return cJ(tPVar) && kYc(tPVar) == 1;
    }

    public static boolean zc(tP tPVar) {
        return cJ(tPVar) && kYc(tPVar) == 0;
    }

    public int Qhi() {
        return this.Sf;
    }

    public int cJ() {
        return this.hm;
    }

    public boolean ac() {
        return this.WAv;
    }

    public static long ABk(tP tPVar) {
        return Math.max(iMK(tPVar), pA(tPVar));
    }

    public static long iMK(tP tPVar) {
        bxS HzH = HzH(tPVar);
        if (HzH == null) {
            return 5L;
        }
        return HzH.Qhi();
    }

    public static long pA(tP tPVar) {
        bxS HzH = HzH(tPVar);
        if (HzH == null) {
            return 5L;
        }
        return HzH.cJ();
    }

    public static boolean hpZ(tP tPVar) {
        bxS HzH = HzH(tPVar);
        return HzH != null && HzH.ac();
    }
}
