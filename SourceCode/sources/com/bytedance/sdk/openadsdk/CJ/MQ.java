package com.bytedance.sdk.openadsdk.CJ;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.Gm.Qhi.fl;
import com.bytedance.sdk.openadsdk.Gm.cJ;
import com.bytedance.sdk.openadsdk.core.ac;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.zc.Qhi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FeatureCaculateManager.java */
/* loaded from: classes2.dex */
public class MQ {
    private static volatile MQ Qhi;
    private final ConcurrentHashMap<String, Qhi> cJ = new ConcurrentHashMap<>();
    private Qhi ac = null;
    private volatile boolean CJ = false;
    private volatile HandlerThread fl = null;
    private volatile Handler Tgh = null;
    private String ROR = "";
    private int Sf = 0;
    private volatile long hm = 0;
    private final Runnable WAv = new Runnable() { // from class: com.bytedance.sdk.openadsdk.CJ.MQ.6
        @Override // java.lang.Runnable
        public void run() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
            } catch (Throwable th) {
                ABk.cJ(th.getMessage());
            }
            if (tP.Qhi().fl()) {
                Set<String> keySet = MQ.this.cJ.keySet();
                if (keySet.size() > MQ.this.Sf) {
                    MQ.this.Sf = keySet.size();
                }
                HashSet hashSet = new HashSet(5);
                ArrayList arrayList = new ArrayList(keySet.size());
                arrayList.addAll(MQ.this.cJ.values());
                Collections.sort(arrayList);
                for (int i = 0; i < arrayList.size() && i < 5; i++) {
                    hashSet.add(((Qhi) arrayList.get(i)).cJ());
                }
                try {
                    for (String str : keySet) {
                        Qhi qhi = (Qhi) MQ.this.cJ.get(str);
                        if (qhi != null) {
                            JSONObject Qhi2 = qhi.Qhi(jSONObject2);
                            if (hashSet.contains(str)) {
                                jSONObject.put(str, Qhi2);
                            }
                        }
                    }
                    jSONObject.put("common", jSONObject2);
                } catch (JSONException e2) {
                    ABk.cJ(e2.getMessage());
                }
                MQ.this.ROR = jSONObject.toString();
                MQ.this.ac().postDelayed(MQ.this.WAv, tP.Qhi().CJ());
            }
            try {
                if (MQ.this.ac != null) {
                    jSONObject.put("common", MQ.this.ac.Qhi(jSONObject2));
                }
            } catch (JSONException e3) {
                ABk.cJ(e3.getMessage());
            }
            MQ.this.ROR = jSONObject.toString();
            MQ.this.ac().postDelayed(MQ.this.WAv, tP.Qhi().CJ());
            ABk.cJ(th.getMessage());
            MQ.this.ROR = jSONObject.toString();
            MQ.this.ac().postDelayed(MQ.this.WAv, tP.Qhi().CJ());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public Handler ac() {
        if (this.fl == null || !this.fl.isAlive()) {
            synchronized (iMK.class) {
                if (this.fl == null || !this.fl.isAlive()) {
                    this.fl = new HandlerThread("csj_feature", -1);
                    this.fl.start();
                    this.Tgh = new Handler(this.fl.getLooper());
                }
            }
        } else if (this.Tgh == null) {
            synchronized (iMK.class) {
                if (this.Tgh == null) {
                    this.Tgh = new Handler(this.fl.getLooper());
                }
            }
        }
        return this.Tgh;
    }

    private MQ() {
    }

    public static MQ Qhi() {
        if (Qhi == null) {
            synchronized (ac.class) {
                if (Qhi == null) {
                    Qhi = new MQ();
                }
            }
        }
        return Qhi;
    }

    public void Qhi(JSONObject jSONObject) {
        if (tP.Qhi().ac()) {
            try {
                jSONObject.put("feature_data", this.ROR);
                CJ();
            } catch (JSONException e2) {
                ABk.cJ(e2.getMessage());
            }
        }
    }

    private void CJ() {
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.hm > 10000) {
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi("track_feature_result", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.CJ.MQ.1
                @Override // com.bytedance.sdk.openadsdk.Gm.cJ
                public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                    MQ.this.hm = elapsedRealtime;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, String.valueOf(MQ.this.Sf));
                    return fl.cJ().Qhi("track_feature_result").cJ(jSONObject.toString());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !tP.Qhi().ac()) {
            return;
        }
        fl();
        if (tP.Qhi().fl()) {
            Qhi qhi = this.cJ.get(str2);
            if (qhi == null) {
                qhi = new Qhi(str2);
            }
            qhi.Qhi(str, str3);
            this.cJ.put(str2, qhi);
            return;
        }
        if (this.ac == null) {
            this.ac = new Qhi(str2);
        }
        this.ac.Qhi(str, str3);
    }

    public void Qhi(final String str, final String str2, final String str3, final JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !tP.Qhi().ac()) {
            return;
        }
        if (Constants.SHOW.equals(str) || Constants.CLICK.equals(str) || "dislike".equals(str)) {
            ac().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.CJ.MQ.2
                @Override // java.lang.Runnable
                public void run() {
                    MQ.this.Qhi(str, str2, str3);
                }
            });
        } else if ("play_start".equals(str) || "feed_pause".equals(str) || "feed_continue".equals(str) || "feed_over".equals(str) || "feed_break".equals(str)) {
            ac().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.CJ.MQ.3
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject optJSONObject;
                    String str4 = str3;
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 != null && (optJSONObject = jSONObject2.optJSONObject("ad_extra_data")) != null) {
                        str4 = str4 + optJSONObject.optInt("play_time");
                    }
                    MQ.this.Qhi(str, str2, str4);
                }
            });
        }
    }

    public void Qhi(final String str, final com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        if (!TextUtils.isEmpty(str) && tP.Qhi().ac() && "videoPercent30".equals(str)) {
            ac().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.CJ.MQ.4
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.model.tP tPVar2 = tPVar;
                    if (tPVar2 == null || TextUtils.isEmpty(tPVar2.DS())) {
                        return;
                    }
                    MQ.this.Qhi(str, tPVar.DS(), tPVar.jWV());
                }
            });
        }
    }

    public void Qhi(final String str, final com.bytedance.sdk.openadsdk.core.model.tP tPVar, final String str2) {
        if (TextUtils.isEmpty(str) || !tP.Qhi().ac()) {
            return;
        }
        if ("landingStart".equals(str) || "landingFinish".equals(str) || "landingContinue".equals(str) || "landingPause".equals(str)) {
            ac().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.CJ.MQ.5
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.model.tP tPVar2 = tPVar;
                    if (tPVar2 == null || TextUtils.isEmpty(tPVar2.DS())) {
                        return;
                    }
                    MQ.this.Qhi(str, tPVar.DS(), tPVar.jWV() + str2);
                }
            });
        }
    }

    private void fl() {
        if (this.CJ) {
            return;
        }
        this.CJ = true;
        ac().postDelayed(this.WAv, tP.Qhi().CJ());
    }

    public void cJ() {
        if (tP.Qhi().ac()) {
            ac().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.CJ.MQ.7
                @Override // java.lang.Runnable
                public void run() {
                    if (tP.Qhi().fl()) {
                        for (String str : MQ.this.cJ.keySet()) {
                            Qhi qhi = (Qhi) MQ.this.cJ.get(str);
                            if (qhi != null) {
                                qhi.Qhi();
                            }
                        }
                    } else if (MQ.this.ac != null) {
                        MQ.this.ac.Qhi();
                    }
                }
            });
        }
    }
}
