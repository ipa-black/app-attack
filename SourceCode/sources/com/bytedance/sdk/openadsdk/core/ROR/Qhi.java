package com.bytedance.sdk.openadsdk.core.ROR;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.tP;
import io.bidmachine.utils.IabUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VastAdConfig.java */
/* loaded from: classes2.dex */
public class Qhi {
    private String CJ;
    private String Gm;
    private String ROR;
    private double Sf;
    private String Tgh;
    private int WAv;
    ac ac;
    cJ cJ;
    private String fl;
    private int hm;
    private String pA;
    fl Qhi = new fl(this);
    private final Set<Gm> zc = new HashSet();
    private String ABk = "VAST_ACTION_BUTTON";
    private boolean iMK = false;

    public fl Qhi() {
        return this.Qhi;
    }

    public cJ cJ() {
        return this.cJ;
    }

    public ac ac() {
        return this.ac;
    }

    public String CJ() {
        return this.CJ;
    }

    public String fl() {
        return this.fl;
    }

    public String Tgh() {
        return this.Tgh;
    }

    public String ROR() {
        return this.ROR;
    }

    public void Qhi(cJ cJVar) {
        if (cJVar != null) {
            cJVar.Qhi(this.ROR);
        }
        this.cJ = cJVar;
    }

    public void Qhi(ac acVar) {
        if (acVar != null) {
            acVar.Qhi(this.ROR);
        }
        this.ac = acVar;
    }

    public void Qhi(String str) {
        this.CJ = str;
    }

    public void cJ(String str) {
        this.fl = str;
    }

    public void ac(String str) {
        this.Tgh = str;
    }

    public void CJ(String str) {
        this.ROR = str;
    }

    public double Sf() {
        return this.Sf;
    }

    public void Qhi(double d2) {
        this.Sf = d2;
    }

    public String hm() {
        ac acVar;
        String str = this.Tgh;
        if (!TextUtils.isEmpty(this.pA)) {
            String str2 = this.pA;
            this.pA = null;
            return str2;
        }
        String str3 = this.ABk;
        str3.hashCode();
        if (str3.equals("VAST_ICON")) {
            cJ cJVar = this.cJ;
            if (cJVar != null && !TextUtils.isEmpty(cJVar.Sf)) {
                str = this.cJ.Sf;
            }
        } else if (str3.equals("VAST_END_CARD") && (acVar = this.ac) != null && !TextUtils.isEmpty(acVar.Sf)) {
            str = this.ac.Sf;
        }
        this.ABk = "VAST_ACTION_BUTTON";
        return str;
    }

    public void fl(String str) {
        this.ABk = str;
    }

    public JSONObject WAv() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("videoTrackers", this.Qhi.Qhi());
        cJ cJVar = this.cJ;
        if (cJVar != null) {
            jSONObject.put("vastIcon", cJVar.Qhi());
        }
        ac acVar = this.ac;
        if (acVar != null) {
            jSONObject.put("endCard", acVar.Qhi());
        }
        jSONObject.put("title", this.CJ);
        jSONObject.put("description", this.fl);
        jSONObject.put("clickThroughUrl", this.Tgh);
        jSONObject.put(IabUtils.KEY_VIDEO_URL, this.ROR);
        jSONObject.put("videDuration", this.Sf);
        jSONObject.put("tag", this.Gm);
        jSONObject.put("videoWidth", this.hm);
        jSONObject.put("videoHeight", this.WAv);
        jSONObject.put("viewabilityVendor", hpZ());
        return jSONObject;
    }

    private JSONArray hpZ() {
        JSONArray jSONArray = new JSONArray();
        for (Gm gm : this.zc) {
            if (gm != null) {
                jSONArray.put(gm.CJ());
            }
        }
        return jSONArray;
    }

    public static Qhi Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Qhi qhi = new Qhi();
        qhi.Qhi.Qhi(jSONObject.optJSONObject("videoTrackers"));
        qhi.cJ = cJ.Qhi(jSONObject.optJSONObject("vastIcon"));
        qhi.ac = ac.cJ(jSONObject.optJSONObject("endCard"));
        qhi.CJ = jSONObject.optString("title");
        qhi.fl = jSONObject.optString("description");
        qhi.Tgh = jSONObject.optString("clickThroughUrl");
        qhi.ROR = jSONObject.optString(IabUtils.KEY_VIDEO_URL);
        qhi.Sf = jSONObject.optDouble("videDuration");
        qhi.Gm = jSONObject.optString("tag");
        qhi.hm = jSONObject.optInt("videoWidth");
        qhi.hm = jSONObject.optInt("videoHeight");
        qhi.zc.addAll(Gm.Qhi(jSONObject.optJSONArray("viewabilityVendor")));
        return qhi;
    }

    public void Qhi(tP tPVar) {
        this.Qhi.Qhi(tPVar);
        cJ cJVar = this.cJ;
        if (cJVar != null) {
            cJVar.Qhi(tPVar);
        }
        ac acVar = this.ac;
        if (acVar != null) {
            acVar.Qhi(tPVar);
        }
    }

    public String Gm() {
        return this.Gm;
    }

    public void Tgh(String str) {
        this.Gm = str;
        this.Qhi.Qhi(str);
    }

    public void Qhi(int i) {
        this.hm = i;
    }

    public void cJ(int i) {
        this.WAv = i;
    }

    public int zc() {
        return this.hm;
    }

    public int ABk() {
        return this.WAv;
    }

    public void Qhi(Set<Gm> set) {
        if (set == null || set.size() <= 0) {
            return;
        }
        this.zc.addAll(set);
    }

    public Set<Gm> iMK() {
        return this.zc;
    }

    public void ROR(String str) {
        this.pA = str;
    }

    public void pA() {
        this.iMK = true;
    }
}
