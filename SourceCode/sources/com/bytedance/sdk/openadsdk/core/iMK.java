package com.bytedance.sdk.openadsdk.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: InitHelper.java */
/* loaded from: classes2.dex */
public class iMK {
    public static volatile boolean Qhi = false;
    private static volatile HandlerThread ROR;
    public static long fl;
    public static AtomicBoolean cJ = new AtomicBoolean(false);
    public static long ac = 0;
    private static volatile int Tgh = 0;
    public static float CJ = 1.0f;
    private static volatile Handler Sf = null;

    static {
        HandlerThread handlerThread = new HandlerThread("csj_init_handle", 10);
        ROR = handlerThread;
        handlerThread.start();
        fl = System.currentTimeMillis();
    }

    public static void Qhi(long j) {
        fl = j;
    }

    public static long Qhi() {
        return fl;
    }

    public static Handler cJ() {
        if (ROR == null || !ROR.isAlive()) {
            synchronized (iMK.class) {
                if (ROR == null || !ROR.isAlive()) {
                    HandlerThread handlerThread = new HandlerThread("csj_init_handle", -1);
                    ROR = handlerThread;
                    handlerThread.start();
                    Sf = new Handler(ROR.getLooper());
                }
            }
        } else if (Sf == null) {
            synchronized (iMK.class) {
                if (Sf == null) {
                    Sf = new Handler(ROR.getLooper());
                }
            }
        }
        return Sf;
    }

    public static Handler ac() {
        return new Handler(Looper.getMainLooper());
    }

    public static int CJ() {
        return Tgh;
    }

    public static void Qhi(int i) {
        Tgh = i;
    }

    public static boolean fl() {
        return CJ() == 1;
    }

    public static void Tgh() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - ac <= 10000) {
            return;
        }
        ac = elapsedRealtime;
        com.bytedance.sdk.openadsdk.utils.lG.Qhi(new com.bytedance.sdk.component.Sf.hm("onSharedPreferenceChanged") { // from class: com.bytedance.sdk.openadsdk.core.iMK.1
            @Override // java.lang.Runnable
            public void run() {
                String ac2 = com.bytedance.sdk.openadsdk.core.settings.HzH.ac(HzH.Qhi());
                if (TextUtils.equals(ac2, com.bytedance.sdk.openadsdk.core.settings.HzH.Qhi)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(6, true);
                com.bytedance.sdk.openadsdk.core.settings.HzH.Qhi = ac2;
            }
        });
    }

    public static void Qhi(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if ("mediation".equals(jSONObject.optString("name", ""))) {
                    hm.cJ().cJ(jSONObject.optString("value", ""));
                    return;
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("InitHelper", th.getMessage());
        }
    }

    public static void ROR() {
        cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.iMK.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.ABk.ac.Qhi(new com.bytedance.sdk.openadsdk.ABk.fl() { // from class: com.bytedance.sdk.openadsdk.core.iMK.2.1
                        @Override // com.bytedance.sdk.openadsdk.ABk.fl
                        public com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel() {
                            com.bytedance.sdk.openadsdk.ABk.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.ABk.cJ.Qhi();
                            qhi.cJ(Constants.INIT);
                            return qhi;
                        }
                    });
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("InitHelper", th.getMessage());
                }
            }
        });
    }
}
