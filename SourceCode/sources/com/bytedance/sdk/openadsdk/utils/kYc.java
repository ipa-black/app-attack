package com.bytedance.sdk.openadsdk.utils;

import org.json.JSONObject;
/* compiled from: MemoryUtils.java */
/* loaded from: classes2.dex */
public class kYc {
    public static final long Qhi = Qhi(0.05f);

    public static long Qhi(float f2) {
        return Double.valueOf(f2 * ((float) Runtime.getRuntime().maxMemory())).longValue();
    }

    public static boolean Qhi(long j, String str) {
        if (!com.bytedance.sdk.openadsdk.core.HzH.CJ().ABk() || Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory()) >= j) {
            return true;
        }
        cJ(j, str);
        return false;
    }

    private static void cJ(final long j, final String str) {
        lG.cJ(new com.bytedance.sdk.component.Sf.hm("isMemoryEnough") { // from class: com.bytedance.sdk.openadsdk.utils.kYc.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("scene", str);
                    jSONObject.put("mem_size", j);
                    com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi("dynamic_mem_not_enough", jSONObject);
                    new Object[]{"dynamic_mem_not_enough", jSONObject};
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("MemoryUtils", "run: ", e2);
                }
            }
        }, 5);
    }

    public static int Qhi() {
        try {
            int maxMemory = (int) (Runtime.getRuntime().maxMemory() / 33554432);
            if (maxMemory <= 2) {
                return 2;
            }
            if (maxMemory >= 5) {
                return 5;
            }
            return maxMemory;
        } catch (Throwable unused) {
            return 2;
        }
    }
}
