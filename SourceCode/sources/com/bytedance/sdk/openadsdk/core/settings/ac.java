package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.sDy;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdSlotSettings.java */
/* loaded from: classes2.dex */
public class ac {
    private static final ConcurrentHashMap<String, cJ> Qhi = new ConcurrentHashMap<>();

    public static void Qhi(boolean z) {
        String Qhi2;
        File cJ = cJ();
        if (!cJ.exists()) {
            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                Qhi2 = com.bytedance.sdk.openadsdk.multipro.CJ.cJ.cJ("tt_sdk_settings", "ad_slot_conf", null);
            } else {
                Qhi2 = sDy.Qhi("tt_sdk_settings", com.bytedance.sdk.openadsdk.core.HzH.Qhi()).Qhi("ad_slot_conf", (String) null);
            }
            if (TextUtils.isEmpty(Qhi2)) {
                return;
            }
            try {
                HashMap<String, cJ> cJ2 = cJ(new JSONArray(Qhi2));
                if (cJ2.isEmpty()) {
                    return;
                }
                ConcurrentHashMap<String, cJ> concurrentHashMap = Qhi;
                concurrentHashMap.clear();
                concurrentHashMap.putAll(cJ2);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        try {
            HashMap<String, cJ> cJ3 = cJ(new JSONArray(new String(com.bytedance.sdk.component.utils.ROR.CJ(cJ))));
            if (cJ3.isEmpty()) {
                return;
            }
            for (Map.Entry<String, cJ> entry : cJ3.entrySet()) {
                String key = entry.getKey();
                cJ value = entry.getValue();
                if (value.js && !z) {
                    cJ cJVar = Qhi.get(key);
                    if (cJVar != null) {
                        cJVar.xyz = value.ip;
                    }
                } else {
                    Qhi.put(key, value);
                }
            }
        } catch (Exception unused2) {
        }
    }

    private static HashMap<String, cJ> cJ(JSONArray jSONArray) {
        HashMap<String, cJ> hashMap = new HashMap<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                cJ Qhi2 = Qhi(jSONArray.getJSONObject(i));
                if (Qhi2 != null) {
                    hashMap.put(Qhi2.Qhi, Qhi2);
                }
            } catch (Exception unused) {
            }
        }
        return hashMap;
    }

    private static File cJ() {
        return new File(com.bytedance.sdk.openadsdk.core.HzH.Qhi().getFilesDir(), "tt_ads_conf");
    }

    private static cJ Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new cJ(jSONObject);
    }

    public static cJ Qhi(String str) {
        cJ cJVar = Qhi.get(str);
        return cJVar == null ? cJ(str) : cJVar;
    }

    private static cJ cJ(String str) {
        return new cJ(str, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bb A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void Qhi(org.json.JSONArray r5) {
        /*
            if (r5 != 0) goto L3
            return
        L3:
            java.io.File r0 = cJ()
            java.io.File r1 = new java.io.File
            java.lang.String r2 = r0.getParent()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r0.getName()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = ".tmp"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r1.<init>(r2, r3)
            r2 = 0
            boolean r3 = r1.exists()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            if (r3 == 0) goto L31
            r1.delete()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
        L31:
            java.io.FileWriter r3 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f
            r3.write(r2)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f
            r1.renameTo(r0)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f
            java.lang.String r0 = "tt_sdk_settings"
            android.content.Context r2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi()     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f
            com.bytedance.sdk.openadsdk.utils.sDy r0 = com.bytedance.sdk.openadsdk.utils.sDy.Qhi(r0, r2)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f
            java.lang.String r2 = "ad_slot_conf"
            r0.Qhi(r2)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L5f
            boolean r0 = r1.exists()
            if (r0 == 0) goto L58
            r1.delete()
        L58:
            com.bytedance.sdk.openadsdk.utils.Gm.Qhi(r3)
            goto L78
        L5c:
            r5 = move-exception
            r2 = r3
            goto Lbc
        L5f:
            r0 = move-exception
            r2 = r3
            goto L65
        L62:
            r5 = move-exception
            goto Lbc
        L64:
            r0 = move-exception
        L65:
            java.lang.String r3 = "SdkSettings.AdSlot"
            java.lang.String r4 = "saveAdSlotToLocal: "
            android.util.Log.e(r3, r4, r0)     // Catch: java.lang.Throwable -> L62
            boolean r0 = r1.exists()
            if (r0 == 0) goto L75
            r1.delete()
        L75:
            com.bytedance.sdk.openadsdk.utils.Gm.Qhi(r2)
        L78:
            java.util.HashMap r5 = cJ(r5)
            boolean r0 = r5.isEmpty()
            if (r0 != 0) goto Lbb
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L8a:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto Lbb
            java.lang.Object r0 = r5.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.getValue()
            com.bytedance.sdk.openadsdk.core.settings.cJ r0 = (com.bytedance.sdk.openadsdk.core.settings.cJ) r0
            boolean r2 = r0.js
            if (r2 == 0) goto Lb5
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.bytedance.sdk.openadsdk.core.settings.cJ> r2 = com.bytedance.sdk.openadsdk.core.settings.ac.Qhi
            java.lang.Object r1 = r2.get(r1)
            com.bytedance.sdk.openadsdk.core.settings.cJ r1 = (com.bytedance.sdk.openadsdk.core.settings.cJ) r1
            if (r1 == 0) goto L8a
            java.lang.String r0 = r0.ip
            r1.xyz = r0
            goto L8a
        Lb5:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.bytedance.sdk.openadsdk.core.settings.cJ> r2 = com.bytedance.sdk.openadsdk.core.settings.ac.Qhi
            r2.put(r1, r0)
            goto L8a
        Lbb:
            return
        Lbc:
            boolean r0 = r1.exists()
            if (r0 == 0) goto Lc5
            r1.delete()
        Lc5:
            com.bytedance.sdk.openadsdk.utils.Gm.Qhi(r2)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.settings.ac.Qhi(org.json.JSONArray):void");
    }

    public static void Qhi() {
        File cJ = cJ();
        if (cJ.exists()) {
            cJ.delete();
        }
    }
}
