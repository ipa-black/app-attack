package com.bytedance.sdk.component.Qhi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.Qhi.Sf;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AbstractBridge.java */
/* loaded from: classes2.dex */
public abstract class Qhi {
    protected Context Qhi;
    Sf ROR;
    protected hm ac;
    protected iMK cJ;
    protected String fl;
    protected Handler CJ = new Handler(Looper.getMainLooper());
    protected volatile boolean Tgh = false;
    private final Map<String, Sf> Sf = new HashMap();

    protected abstract Context Qhi(Gm gm);

    protected abstract String Qhi();

    protected abstract void Qhi(String str);

    protected abstract void cJ(Gm gm);

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeMethod(final String str) {
        if (this.Tgh) {
            return;
        }
        this.CJ.post(new Runnable() { // from class: com.bytedance.sdk.component.Qhi.Qhi.1
            @Override // java.lang.Runnable
            public void run() {
                HzH hzH;
                if (Qhi.this.Tgh) {
                    return;
                }
                try {
                    hzH = Qhi.this.Qhi(new JSONObject(str));
                } catch (Exception unused) {
                    hzH = null;
                }
                if (HzH.Qhi(hzH)) {
                    new StringBuilder("By pass invalid call: ").append(hzH);
                    if (hzH != null) {
                        Qhi.this.cJ(CQU.Qhi(new tP(hzH.Qhi, "Failed to parse invocation.")), hzH);
                        return;
                    }
                    return;
                }
                Qhi.this.Qhi(hzH);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(String str, HzH hzH) {
        Qhi(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cJ() {
        this.ROR.Qhi();
        for (Sf sf : this.Sf.values()) {
            sf.Qhi();
        }
        this.CJ.removeCallbacksAndMessages(null);
        this.Tgh = true;
    }

    protected final void Qhi(HzH hzH) {
        String Qhi;
        if (this.Tgh || (Qhi = Qhi()) == null) {
            return;
        }
        Sf cJ = cJ(hzH.ROR);
        if (cJ == null) {
            new StringBuilder("Received call with unknown namespace, ").append(hzH);
            if (this.cJ != null) {
                Qhi();
            }
            cJ(CQU.Qhi(new tP(-4, "Namespace " + hzH.ROR + " unknown.")), hzH);
            return;
        }
        ROR ror = new ROR();
        ror.cJ = Qhi;
        ror.Qhi = this.Qhi;
        ror.ac = cJ;
        try {
            Sf.Qhi Qhi2 = cJ.Qhi(hzH, ror);
            if (Qhi2 == null) {
                new StringBuilder("Received call but not registered, ").append(hzH);
                if (this.cJ != null) {
                    Qhi();
                }
                cJ(CQU.Qhi(new tP(-2, "Function " + hzH.CJ + " is not registered.")), hzH);
                return;
            }
            if (Qhi2.Qhi) {
                cJ(Qhi2.cJ, hzH);
            }
            if (this.cJ != null) {
                Qhi();
            }
        } catch (Exception e2) {
            new StringBuilder("call finished with error, ").append(hzH);
            cJ(CQU.Qhi(e2), hzH);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void Qhi(Gm gm, EBS ebs) {
        this.Qhi = Qhi(gm);
        this.ac = gm.CJ;
        this.cJ = gm.hm;
        this.ROR = new Sf(gm, this, ebs);
        this.fl = gm.Gm;
        cJ(gm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void cJ(String str, HzH hzH) {
        JSONObject jSONObject;
        if (this.Tgh || TextUtils.isEmpty(hzH.Tgh)) {
            return;
        }
        if (!str.startsWith("{") || !str.endsWith("}")) {
            WAv.Qhi(new IllegalArgumentException("Illegal callback data: ".concat(String.valueOf(str))));
        }
        String str2 = hzH.Tgh;
        try {
            jSONObject = new JSONObject(str);
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        Qhi(hpZ.Qhi().Qhi("__msg_type", "callback").Qhi("__callback_id", hzH.Tgh).Qhi("__params", jSONObject).cJ(), hzH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HzH Qhi(JSONObject jSONObject) {
        String str;
        if (this.Tgh) {
            return null;
        }
        String optString = jSONObject.optString("__callback_id");
        String optString2 = jSONObject.optString("func");
        if (Qhi() == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("__msg_type");
            String str2 = "";
            Object opt = jSONObject.opt(OutcomeEventsTable.COLUMN_NAME_PARAMS);
            if (opt != null) {
                if (opt instanceof JSONObject) {
                    str = String.valueOf((JSONObject) opt);
                    String string2 = jSONObject.getString("JSSDK");
                    String optString3 = jSONObject.optString("namespace");
                    return HzH.Qhi().Qhi(string2).cJ(string).ac(optString2).CJ(str).fl(optString).Tgh(optString3).ROR(jSONObject.optString("__iframe_url")).Qhi();
                } else if (opt instanceof String) {
                    str2 = (String) opt;
                } else {
                    str2 = String.valueOf(opt);
                }
            }
            str = str2;
            String string22 = jSONObject.getString("JSSDK");
            String optString32 = jSONObject.optString("namespace");
            return HzH.Qhi().Qhi(string22).cJ(string).ac(optString2).CJ(str).fl(optString).Tgh(optString32).ROR(jSONObject.optString("__iframe_url")).Qhi();
        } catch (JSONException unused) {
            return HzH.Qhi(optString, -1);
        }
    }

    private Sf cJ(String str) {
        if (TextUtils.equals(str, this.fl) || TextUtils.isEmpty(str)) {
            return this.ROR;
        }
        return this.Sf.get(str);
    }
}
