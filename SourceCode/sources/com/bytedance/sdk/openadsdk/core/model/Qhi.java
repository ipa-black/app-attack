package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdInfo.java */
/* loaded from: classes2.dex */
public class Qhi {
    private C0225Qhi CJ;
    private String Qhi;
    private String Sf;
    private boolean WAv;
    private String ac;
    private int cJ;
    private boolean fl;
    private long hm;
    private int zc;
    private List<tP> Tgh = new ArrayList();
    private List<hm> ROR = new ArrayList();
    private volatile boolean Gm = false;

    public String Qhi() {
        tP fl = fl();
        if (fl != null) {
            return fl.jWV();
        }
        return "";
    }

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public int cJ() {
        return this.cJ;
    }

    public void Qhi(int i) {
        this.cJ = i;
    }

    public void cJ(String str) {
        this.ac = str;
    }

    public List<tP> ac() {
        return this.Tgh;
    }

    public void Qhi(tP tPVar) {
        this.Tgh.add(tPVar);
    }

    public void Qhi(List<tP> list) {
        this.Tgh = list;
    }

    public void Qhi(hm hmVar) {
        this.ROR.add(hmVar);
    }

    public void ac(String str) {
        this.Sf = str;
    }

    public void Qhi(long j) {
        this.hm = j;
    }

    public static Map<String, tP> Qhi(Qhi qhi) {
        if (qhi == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (tP tPVar : qhi.ac()) {
            if (!TextUtils.isEmpty(tPVar.Ri())) {
                hashMap.put(tPVar.Ri(), tPVar);
            }
        }
        if (hashMap.size() != 0) {
            return hashMap;
        }
        return null;
    }

    public boolean CJ() {
        List<tP> list = this.Tgh;
        return list != null && list.size() > 0;
    }

    public tP fl() {
        if (this.Tgh.size() > 0) {
            return this.Tgh.get(0);
        }
        return null;
    }

    public boolean Tgh() {
        if (Sf() != null && ac() != null && ac().size() > 1) {
            this.fl = true;
        } else {
            this.fl = false;
            Qhi((C0225Qhi) null);
        }
        return this.fl;
    }

    public boolean ROR() {
        return this.WAv;
    }

    public void Qhi(boolean z) {
        this.WAv = z;
    }

    public C0225Qhi Sf() {
        return this.CJ;
    }

    public void Qhi(C0225Qhi c0225Qhi) {
        this.CJ = c0225Qhi;
        if (c0225Qhi == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.Qhi(tP.Qhi.Qhi(c0225Qhi, ""));
    }

    public boolean hm() {
        return this.Gm;
    }

    public void WAv() {
        this.Gm = false;
    }

    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        Qhi(C0225Qhi.Qhi(jSONObject.optJSONObject("tpl_info")));
    }

    public void cJ(int i) {
        this.zc = i;
    }

    public boolean Gm() {
        return this.zc == 1;
    }

    /* compiled from: AdInfo.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.model.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0225Qhi extends tP.Qhi {
        private int Qhi;

        public void Qhi(int i) {
            this.Qhi = i;
        }

        public int Qhi() {
            return this.Qhi;
        }

        public JSONObject cJ() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", fl());
                jSONObject.put("md5", Tgh());
                jSONObject.put("url", ROR());
                jSONObject.put("data", Sf());
                jSONObject.put("diff_data", hm());
                jSONObject.put(MediationMetaData.KEY_VERSION, CJ());
                jSONObject.put("dynamic_creative", WAv());
                jSONObject.put("count_down_time", Qhi());
                return jSONObject;
            } catch (Throwable unused) {
                return null;
            }
        }

        public static C0225Qhi Qhi(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            C0225Qhi c0225Qhi = new C0225Qhi();
            c0225Qhi.cJ(jSONObject.optString("id"));
            c0225Qhi.ac(jSONObject.optString("md5"));
            c0225Qhi.CJ(jSONObject.optString("url"));
            c0225Qhi.fl(jSONObject.optString("data"));
            c0225Qhi.Tgh(jSONObject.optString("diff_data"));
            c0225Qhi.Qhi(jSONObject.optString(MediationMetaData.KEY_VERSION));
            c0225Qhi.ROR(jSONObject.optString("dynamic_creative"));
            c0225Qhi.Qhi(jSONObject.optInt("count_down_time"));
            if (Qhi(c0225Qhi)) {
                return c0225Qhi;
            }
            return null;
        }

        private static boolean Qhi(C0225Qhi c0225Qhi) {
            return (c0225Qhi == null || TextUtils.isEmpty(c0225Qhi.fl()) || TextUtils.isEmpty(c0225Qhi.ROR())) ? false : true;
        }
    }

    public JSONObject zc() {
        try {
            JSONObject jSONObject = new JSONObject();
            C0225Qhi Sf = Sf();
            if (Sf != null) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject cJ = Sf.cJ();
                if (cJ != null) {
                    jSONObject2.put("tpl_info", cJ);
                    jSONObject.put("choose_ui_data", jSONObject2);
                }
            }
            List<tP> list = this.Tgh;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < this.Tgh.size(); i++) {
                    jSONArray.put(this.Tgh.get(i).mZ());
                }
                jSONObject.put("creatives", jSONArray);
            }
            jSONObject.put("is_choose_ad_original", this.WAv);
            jSONObject.put("multi_ad_style", this.zc);
            jSONObject.put("request_id", this.Qhi);
            return jSONObject;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AdInfo", "toJsonObj: ", th);
            return null;
        }
    }

    public static Qhi cJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            Qhi qhi = new Qhi();
            JSONObject optJSONObject = jSONObject.optJSONObject("choose_ui_data");
            if (optJSONObject != null) {
                qhi.Qhi(optJSONObject);
            }
            qhi.cJ(jSONObject.optInt("multi_ad_style", 0));
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            if (optJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    tP Qhi = com.bytedance.sdk.openadsdk.core.cJ.Qhi(optJSONArray.optJSONObject(i));
                    if (Qhi != null) {
                        Qhi.hm(qhi.Gm());
                        arrayList.add(Qhi);
                    }
                }
                qhi.Qhi(arrayList);
            }
            qhi.Qhi(jSONObject.optBoolean("is_choose_ad_original", false));
            qhi.Qhi(jSONObject.optString("request_id", ""));
            return qhi;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AdInfo", "fromJson: ", th);
            return null;
        }
    }
}
