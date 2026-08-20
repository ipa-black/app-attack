package com.bytedance.sdk.openadsdk.cJ.Qhi;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* compiled from: AdEvenRecord.java */
/* loaded from: classes2.dex */
public class cJ {
    public int CJ;
    public AtomicInteger Qhi = new AtomicInteger(0);
    public AtomicInteger cJ = new AtomicInteger(0);
    public AtomicLong ac = new AtomicLong(0);
    public AtomicInteger fl = new AtomicInteger(0);
    public Map<Integer, Integer> Tgh = new HashMap();
    public AtomicBoolean ROR = new AtomicBoolean(false);

    public cJ(int i) {
        this.CJ = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject Qhi() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FirebaseAnalytics.Param.SUCCESS, this.Qhi.get());
            jSONObject.put("fail", this.cJ.get());
            jSONObject.put(SessionDescription.ATTR_TYPE, this.CJ);
            jSONObject.put("duration", this.ac.get() / this.Qhi.get());
            JSONObject jSONObject2 = new JSONObject();
            if (this.Tgh.size() > 0) {
                for (Map.Entry<Integer, Integer> entry : this.Tgh.entrySet()) {
                    jSONObject2.put(String.valueOf(entry.getKey()), entry.getValue());
                }
            }
            jSONObject.put("fail_error_code", jSONObject2);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject cJ() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FirebaseAnalytics.Param.SUCCESS, this.Qhi.get());
            jSONObject.put("fail", this.cJ.get());
            jSONObject.put(SessionDescription.ATTR_TYPE, this.CJ);
            jSONObject.put("time", this.fl.get());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}
