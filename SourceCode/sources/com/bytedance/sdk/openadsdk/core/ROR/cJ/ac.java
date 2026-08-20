package com.bytedance.sdk.openadsdk.core.ROR.cJ;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.bxS;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.cJ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: VastTracker.java */
/* loaded from: classes2.dex */
public class ac {
    private boolean CJ;
    private final String Qhi;
    private boolean ac;
    private EnumC0219ac cJ;
    private static final Map<String, cJ> fl = new ConcurrentHashMap();
    private static final AtomicBoolean Tgh = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VastTracker.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.ROR.cJ.ac$ac  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public enum EnumC0219ac {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    static {
        bxS.Qhi(new bxS.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.1
            @Override // com.bytedance.sdk.component.utils.bxS.Qhi
            public void Qhi(Context context, Intent intent, boolean z, int i) {
                if (i == 0 || ac.fl.size() <= 0) {
                    return;
                }
                ac.cJ();
            }
        }, HzH.Qhi());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ac(String str, EnumC0219ac enumC0219ac, Boolean bool) {
        this.Qhi = str;
        this.cJ = enumC0219ac;
        this.ac = bool.booleanValue();
    }

    public String ac() {
        return this.Qhi;
    }

    public boolean CJ() {
        return this.ac;
    }

    public void k_() {
        this.CJ = true;
    }

    /* compiled from: VastTracker.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private final String Qhi;
        private EnumC0219ac cJ = EnumC0219ac.TRACKING_URL;
        private boolean ac = false;

        public Qhi(String str) {
            this.Qhi = str;
        }

        public Qhi Qhi(boolean z) {
            this.ac = z;
            return this;
        }

        public ac Qhi() {
            return new ac(this.Qhi, this.cJ, Boolean.valueOf(this.ac));
        }
    }

    public boolean fl() {
        return this.CJ;
    }

    public static List<String> Qhi(List<ac> list, com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi qhi, long j, String str) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (ac acVar : list) {
            if (acVar != null && (!acVar.fl() || acVar.CJ())) {
                arrayList.add(acVar.ac());
                acVar.k_();
            }
        }
        return new com.bytedance.sdk.openadsdk.core.ROR.ac.ac(arrayList).Qhi(qhi).Qhi(j).Qhi(str).Qhi();
    }

    public static void Qhi(List<ac> list, com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi qhi, long j, String str, cJ cJVar) {
        Qhi(Qhi(list, qhi, j, str), cJVar);
    }

    public static void cJ(List<ac> list, com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi qhi, long j, String str) {
        Qhi(list, qhi, j, str, null);
    }

    public static void Qhi(List<String> list, cJ cJVar) {
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            if (!TextUtils.isEmpty(str)) {
                Qhi(str, cJVar, false);
            }
        }
    }

    private static void Qhi(final String str, final cJ cJVar, final boolean z) {
        com.bytedance.sdk.component.ROR.cJ.cJ ac = com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().ac();
        if (ac == null) {
            return;
        }
        ac.Qhi(true);
        ac.cJ(str);
        ac.Qhi(new com.bytedance.sdk.component.ROR.Qhi.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.2
            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, com.bytedance.sdk.component.ROR.cJ cJVar2) {
                boolean z2;
                cJ cJVar3 = cJ.this;
                if (cJVar3 == null || cJVar3.cJ == null) {
                    return;
                }
                String str2 = null;
                if (cJVar2 == null || !cJVar2.Tgh()) {
                    z2 = false;
                    if (cJVar2 != null) {
                        str2 = cJVar2.Qhi() + ":" + cJVar2.cJ();
                        if (!z && (cJVar2.Qhi() <= 300 || cJVar2.Qhi() >= 400)) {
                            ac.fl.put(str, cJ.this);
                        }
                    }
                } else {
                    z2 = true;
                }
                ac.cJ(z2, str2, js.ac(cJ.this.cJ.sqa()), cJ.this, str, z);
                if (cJVar2 == null || cJVar2.Qhi() != 200 || ac.fl.size() <= 0) {
                    return;
                }
                ac.cJ();
            }

            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, IOException iOException) {
                cJ cJVar2 = cJ.this;
                if (cJVar2 != null && cJVar2.cJ != null) {
                    ac.cJ(false, iOException != null ? iOException.getMessage() : null, js.ac(cJ.this.cJ.sqa()), cJ.this, str, z);
                }
                if (z || cJ.this == null) {
                    return;
                }
                ac.fl.put(str, cJ.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ() {
        if (Tgh.compareAndSet(false, true)) {
            Map<String, cJ> map = fl;
            HashSet<Map.Entry> hashSet = new HashSet(map.entrySet());
            map.clear();
            for (Map.Entry entry : hashSet) {
                if (entry != null) {
                    Qhi((String) entry.getKey(), (cJ) entry.getValue(), true);
                }
            }
            Tgh.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ(final boolean z, final String str, final String str2, final cJ cJVar, final String str3, final boolean z2) {
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(new hm("dsp_track_link_result") { // from class: com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(SessionDescription.ATTR_TYPE, cJVar.Qhi);
                    jSONObject.put(FirebaseAnalytics.Param.SUCCESS, z);
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("description", str);
                    }
                    jSONObject.put("url", str3);
                    if (cJVar.ac >= 0.0f) {
                        jSONObject.put("progress", Math.round(cJVar.ac * 100.0f) / 100.0d);
                    }
                    if (z2) {
                        jSONObject.put("retry", true);
                    }
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(cJVar.cJ, str2, "dsp_track_link_result", jSONObject);
            }
        });
    }

    public static JSONArray Qhi(List<ac> list) {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            jSONArray.put(list.get(i).ac());
        }
        return jSONArray;
    }

    public static List<ac> Qhi(JSONArray jSONArray) {
        return Qhi(jSONArray, false);
    }

    public static List<ac> Qhi(JSONArray jSONArray, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                String optString = jSONArray.optString(i);
                if (!TextUtils.isEmpty(optString)) {
                    arrayList.add(new Qhi(optString).Qhi(z).Qhi());
                }
            }
        }
        return arrayList;
    }

    public static List<com.bytedance.sdk.openadsdk.core.ROR.cJ.cJ> cJ(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new cJ.Qhi(optJSONObject.optString("content"), (float) optJSONObject.optDouble("trackingFraction", 0.0d)).Qhi());
                }
            }
        }
        return arrayList;
    }

    public static List<com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi> ac(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new Qhi.C0218Qhi(optJSONObject.optString("content"), optJSONObject.optLong("trackingMilliseconds", 0L)).Qhi());
                }
            }
        }
        return arrayList;
    }

    /* compiled from: VastTracker.java */
    /* loaded from: classes2.dex */
    public static class cJ {
        String Qhi;
        float ac;
        tP cJ;

        public cJ(String str, tP tPVar) {
            this(str, tPVar, -1.0f);
        }

        public cJ(String str, tP tPVar, float f2) {
            this.Qhi = str;
            this.cJ = tPVar;
            this.ac = f2;
        }
    }
}
