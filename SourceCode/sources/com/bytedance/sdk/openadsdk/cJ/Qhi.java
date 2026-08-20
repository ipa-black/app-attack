package com.bytedance.sdk.openadsdk.cJ;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.CJ.MQ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.bxS;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdEvent.java */
/* loaded from: classes2.dex */
public class Qhi implements com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.ac {
    private static final Set<String> WAv = new HashSet(Arrays.asList("insight_log"));
    private String ABk;
    private long CJ;
    private int EBS;
    private final AtomicBoolean Gm;
    private String HzH;
    private String MQ;
    public final String Qhi;
    private int ROR;
    private int Sf;
    private final String Tgh;
    private boolean ac;
    private String bxS;
    protected final JSONObject cJ;
    private long fl;
    private int hm;
    private String hpZ;
    private String iMK;
    private String kYc;
    private String pA;
    private String qMt;
    private com.bytedance.sdk.openadsdk.cJ.cJ.Qhi tP;
    private JSONObject zc;

    public Qhi(String str, JSONObject jSONObject) {
        this.Tgh = "adiff";
        this.Gm = new AtomicBoolean(false);
        this.zc = new JSONObject();
        this.Qhi = str;
        this.cJ = jSONObject;
    }

    private void Tgh() {
        JSONObject jSONObject = this.zc;
        if (jSONObject == null) {
            if (!Qhi(this.hpZ, this.pA, this.qMt)) {
                return;
            }
        } else {
            String optString = jSONObject.optString("value");
            String optString2 = this.zc.optString("category");
            String optString3 = this.zc.optString("log_extra");
            if (Qhi(this.hpZ, this.pA, this.qMt)) {
                if (!TextUtils.isEmpty(optString) && TextUtils.equals(optString, "0")) {
                    return;
                }
                if (!TextUtils.isEmpty(optString2) && !cJ(optString2)) {
                    return;
                }
            } else if ((TextUtils.isEmpty(optString) || TextUtils.equals(optString, "0")) && (TextUtils.isEmpty(this.hpZ) || TextUtils.equals(this.hpZ, "0"))) {
                return;
            } else {
                if ((TextUtils.isEmpty(this.pA) || !cJ(this.pA)) && (TextUtils.isEmpty(optString2) || !cJ(optString2))) {
                    return;
                }
                if (TextUtils.isEmpty(this.qMt) && TextUtils.isEmpty(optString3)) {
                    return;
                }
            }
        }
        this.CJ = com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi.incrementAndGet();
    }

    private boolean cJ(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 111399750:
                if (str.equals("umeng")) {
                    c2 = 0;
                    break;
                }
                break;
            case 278118976:
                if (str.equals("event_v1")) {
                    c2 = 1;
                    break;
                }
                break;
            case 278118978:
                if (str.equals("event_v3")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1844205361:
                if (str.equals("app_union")) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    private boolean Qhi(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "0") || TextUtils.isEmpty(str3)) {
            return false;
        }
        str2.hashCode();
        char c2 = 65535;
        switch (str2.hashCode()) {
            case 111399750:
                if (str2.equals("umeng")) {
                    c2 = 0;
                    break;
                }
                break;
            case 278118976:
                if (str2.equals("event_v1")) {
                    c2 = 1;
                    break;
                }
                break;
            case 278118978:
                if (str2.equals("event_v3")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1844205361:
                if (str2.equals("app_union")) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    private JSONObject Qhi(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("adiff")) {
                jSONObject.put("adiff", this.Qhi);
            }
            if (this.ac) {
                if (!jSONObject.has("interaction_method")) {
                    jSONObject.put("interaction_method", this.ROR);
                }
                if (!jSONObject.has("real_interaction_method")) {
                    jSONObject.put("real_interaction_method", this.Sf);
                }
                if (!jSONObject.has("image_mode")) {
                    jSONObject.put("image_mode", this.hm);
                }
            }
            jSONObject.put("pangle_client_unique_id", "pangle-" + this.Qhi + "-" + System.currentTimeMillis());
            return jSONObject;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AdEvent", th.getMessage() == null ? "error " : th.getMessage());
            return jSONObject;
        }
    }

    public JSONObject ac() {
        if (this.Gm.get()) {
            return this.cJ;
        }
        try {
            ROR();
        } catch (Throwable th) {
            new Object[]{th};
        }
        if (this.cJ.has("ad_extra_data")) {
            Object opt = this.cJ.opt("ad_extra_data");
            if (opt != null) {
                try {
                    if (opt instanceof JSONObject) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("AdEvent", "ad_extra_data is JSONObject");
                        this.cJ.put("ad_extra_data", Qhi((JSONObject) opt).toString());
                    } else if (opt instanceof String) {
                        this.cJ.put("ad_extra_data", Qhi(new JSONObject((String) opt)).toString());
                    }
                } catch (JSONException e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("AdEvent", "json error", e2.getMessage());
                }
            }
            this.Gm.set(true);
            return this.cJ;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adiff", this.Qhi);
            if (this.ac) {
                jSONObject.put("interaction_method", this.ROR);
                jSONObject.put("real_interaction_method", this.Sf);
                jSONObject.put("image_mode", this.hm);
            }
            this.cJ.put("ad_extra_data", jSONObject.toString());
        } catch (JSONException e3) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AdEvent", "json error", e3.getMessage());
        }
        this.Gm.set(true);
        return this.cJ;
        new Object[]{th};
        return this.cJ;
    }

    public JSONObject Qhi(boolean z) {
        JSONObject ac = ac();
        try {
            if (z) {
                JSONObject jSONObject = new JSONObject(ac.toString());
                JSONObject optJSONObject = jSONObject.optJSONObject(OutcomeEventsTable.COLUMN_NAME_PARAMS);
                if (optJSONObject != null) {
                    optJSONObject.remove("app_log_url");
                }
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(ac.toString());
            jSONObject2.remove("app_log_url");
            return jSONObject2;
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AdEvent", e2.getMessage());
            return ac;
        }
    }

    private void ROR() throws JSONException {
        this.cJ.putOpt("app_log_url", this.bxS);
        this.cJ.putOpt("tag", this.ABk);
        this.cJ.putOpt("label", this.iMK);
        this.cJ.putOpt("category", this.pA);
        if (!TextUtils.isEmpty(this.hpZ)) {
            try {
                this.cJ.putOpt("value", Long.valueOf(Long.parseLong(this.hpZ)));
            } catch (NumberFormatException unused) {
                this.cJ.putOpt("value", 0L);
            }
        }
        if (!TextUtils.isEmpty(this.kYc)) {
            try {
                this.cJ.putOpt("ext_value", Long.valueOf(Long.parseLong(this.kYc)));
            } catch (Exception unused2) {
            }
        }
        if (!TextUtils.isEmpty(this.qMt)) {
            this.cJ.putOpt("log_extra", this.qMt);
        }
        if (!TextUtils.isEmpty(this.MQ)) {
            try {
                this.cJ.putOpt("ua_policy", Integer.valueOf(Integer.parseInt(this.MQ)));
            } catch (NumberFormatException unused3) {
            }
        }
        Qhi(this.cJ, this.iMK);
        try {
            this.cJ.putOpt("nt", Integer.valueOf(this.EBS));
        } catch (Exception unused4) {
        }
        Iterator<String> keys = this.zc.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.cJ.putOpt(next, this.zc.opt(next));
        }
    }

    public String CJ() {
        return this.Qhi;
    }

    Qhi(C0213Qhi c0213Qhi) {
        this.Tgh = "adiff";
        this.Gm = new AtomicBoolean(false);
        this.zc = new JSONObject();
        if (TextUtils.isEmpty(c0213Qhi.cJ)) {
            this.Qhi = bxS.Qhi();
        } else {
            this.Qhi = c0213Qhi.cJ;
        }
        this.tP = c0213Qhi.pA;
        this.qMt = c0213Qhi.Tgh;
        this.ABk = c0213Qhi.ac;
        this.iMK = c0213Qhi.CJ;
        if (TextUtils.isEmpty(c0213Qhi.fl)) {
            this.pA = "app_union";
        } else {
            this.pA = c0213Qhi.fl;
        }
        this.MQ = c0213Qhi.Gm;
        this.hpZ = c0213Qhi.Sf;
        this.kYc = c0213Qhi.hm;
        this.HzH = c0213Qhi.ROR;
        this.EBS = c0213Qhi.zc;
        this.bxS = c0213Qhi.ABk;
        this.zc = c0213Qhi.WAv = c0213Qhi.WAv != null ? c0213Qhi.WAv : new JSONObject();
        JSONObject jSONObject = new JSONObject();
        this.cJ = jSONObject;
        if (!TextUtils.isEmpty(c0213Qhi.ABk)) {
            try {
                jSONObject.put("app_log_url", c0213Qhi.ABk);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("AdEvent", e2.getMessage());
            }
        }
        this.ROR = c0213Qhi.HzH;
        this.Sf = c0213Qhi.kYc;
        this.hm = c0213Qhi.Qhi;
        this.ac = c0213Qhi.tP;
        this.fl = System.currentTimeMillis();
        Tgh();
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.ac
    public JSONObject Qhi(String str) {
        return ac();
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.ac
    public long Qhi() {
        return this.fl;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.ac
    public long cJ() {
        return this.CJ;
    }

    /* compiled from: AdEvent.java */
    /* renamed from: com.bytedance.sdk.openadsdk.cJ.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0213Qhi {
        private String ABk;
        private String CJ;
        private String Gm;
        private int HzH;
        private String MQ;
        public int Qhi;
        private String ROR;
        private String Sf;
        private String Tgh;
        private JSONObject WAv;
        private String ac;
        private String cJ;
        private String fl;
        private String hm;
        private final long hpZ;
        private com.bytedance.sdk.openadsdk.cJ.cJ.cJ iMK;
        private int kYc;
        private com.bytedance.sdk.openadsdk.cJ.cJ.Qhi pA;
        private boolean tP;
        private final int zc;

        public C0213Qhi(long j, tP tPVar) {
            this.HzH = -1;
            this.kYc = -1;
            this.Qhi = -1;
            if (tPVar != null) {
                this.tP = com.bytedance.sdk.openadsdk.core.model.bxS.cJ(tPVar);
                this.HzH = tPVar.HzH();
                this.kYc = tPVar.hpZ();
                this.Qhi = tPVar.gga();
            }
            this.hpZ = j;
            this.zc = com.bytedance.sdk.component.utils.hpZ.ac(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
        }

        public C0213Qhi Qhi(String str) {
            this.ABk = str;
            return this;
        }

        public C0213Qhi cJ(String str) {
            this.ac = str;
            return this;
        }

        public C0213Qhi ac(String str) {
            this.CJ = str;
            return this;
        }

        public C0213Qhi CJ(String str) {
            this.fl = str;
            return this;
        }

        public C0213Qhi fl(String str) {
            this.Sf = str;
            return this;
        }

        public C0213Qhi Tgh(String str) {
            this.hm = str;
            return this;
        }

        public C0213Qhi Qhi(JSONObject jSONObject) {
            if (jSONObject == null) {
                return this;
            }
            this.WAv = jSONObject;
            return this;
        }

        public C0213Qhi ROR(String str) {
            this.ROR = str;
            return this;
        }

        public void Qhi(com.bytedance.sdk.openadsdk.cJ.cJ.Qhi qhi) {
            MQ.Qhi().Qhi(this.CJ, this.MQ, this.ROR, this.WAv);
            this.pA = qhi;
            final Qhi qhi2 = new Qhi(this);
            try {
                com.bytedance.sdk.openadsdk.cJ.cJ.cJ cJVar = this.iMK;
                if (cJVar != null) {
                    cJVar.Qhi(qhi2.cJ, this.hpZ);
                } else {
                    new com.bytedance.sdk.openadsdk.cJ.cJ.ac().Qhi(qhi2.cJ, this.hpZ);
                }
            } catch (Throwable th) {
                new Object[]{th};
            }
            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                lG.ac(new com.bytedance.sdk.component.Sf.hm("dispatchEvent") { // from class: com.bytedance.sdk.openadsdk.cJ.Qhi.Qhi.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(qhi2);
                    }
                });
            } else {
                com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(qhi2);
            }
        }

        public C0213Qhi Sf(String str) {
            this.MQ = str;
            return this;
        }
    }

    public boolean fl() {
        Set<String> iMK;
        if (this.cJ == null || (iMK = com.bytedance.sdk.openadsdk.core.HzH.CJ().iMK()) == null) {
            return false;
        }
        String optString = this.cJ.optString("label");
        if (TextUtils.isEmpty(optString)) {
            if (TextUtils.isEmpty(this.iMK)) {
                return false;
            }
            return iMK.contains(this.iMK);
        }
        return iMK.contains(optString);
    }

    private static void Qhi(JSONObject jSONObject, String str) {
        try {
            Set<String> set = WAv;
            if (!set.contains(str) && !set.contains(jSONObject.get("label"))) {
                jSONObject.putOpt("is_ad_event", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AdEvent", th);
        }
    }
}
