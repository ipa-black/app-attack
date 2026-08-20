package com.bytedance.sdk.openadsdk.cJ.Qhi;

import androidx.core.app.NotificationCompat;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: GetAdEventMonitor.java */
/* loaded from: classes2.dex */
public class ROR {
    public static AtomicInteger Qhi = new AtomicInteger(0);
    public static AtomicInteger cJ = new AtomicInteger(0);
    public static AtomicInteger ac = new AtomicInteger(0);
    public static AtomicInteger CJ = new AtomicInteger(0);
    public static AtomicInteger fl = new AtomicInteger(0);
    public static AtomicInteger Tgh = new AtomicInteger(0);
    public static AtomicInteger ROR = new AtomicInteger(0);
    public static AtomicInteger Sf = new AtomicInteger(0);
    public static AtomicInteger hm = new AtomicInteger(0);

    public static void Qhi() {
        try {
            long Qhi2 = com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("tt_sdk_event_get_ad", "get_ad_event_time_key", 0L);
            int i = (Qhi2 > 0L ? 1 : (Qhi2 == 0L ? 0 : -1));
            if (i > 0 && System.currentTimeMillis() - Qhi2 >= Constants.MILLIS_IN_DAY) {
                cJ();
                com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
                return;
            }
            if (i <= 0 || Qhi2 > System.currentTimeMillis()) {
                com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
            }
            JSONObject jSONObject = new JSONObject(com.bytedance.sdk.openadsdk.multipro.CJ.cJ.cJ("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            int optInt = jSONObject.optInt("load_get_ad_version", 0);
            if (optInt >= 5702 && (optInt < 5800 || optInt >= 5802)) {
                Qhi.addAndGet(jSONObject.optInt("load_times"));
                cJ.addAndGet(jSONObject.optInt("load_success"));
                ac.addAndGet(jSONObject.optInt("load_fail"));
                CJ.addAndGet(jSONObject.optInt("load_success_and_parse_success"));
                fl.addAndGet(jSONObject.optInt("load_success_and_parse_fail"));
                Tgh.addAndGet(jSONObject.optInt("load_success_and_no_ad"));
                ROR.addAndGet(jSONObject.optInt("load_fail_by_no_net"));
                Sf.addAndGet(jSONObject.optInt("load_fail_by_io"));
                hm.addAndGet(jSONObject.optInt("load_fail_in_background"));
                return;
            }
            com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("tt_sdk_event_get_ad");
        } catch (Throwable unused) {
        }
    }

    public static void cJ() {
        try {
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi("pangle_sdk_get_ad_track", com.bytedance.sdk.openadsdk.multipro.CJ.cJ.cJ("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("tt_sdk_event_get_ad");
        } catch (Throwable unused) {
        }
    }

    public static void ac() {
        try {
            com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("tt_sdk_event_get_ad", "get_ad_event_key", CJ().toString());
        } catch (Throwable unused) {
        }
    }

    public static JSONObject CJ() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("load_times", Qhi.get());
            jSONObject.put("load_success", cJ.get());
            jSONObject.put("load_fail", ac.get());
            jSONObject.put("load_fail_in_background", hm.get());
            jSONObject.put("load_success_and_parse_success", CJ.get());
            jSONObject.put("load_success_and_parse_fail", fl.get());
            jSONObject.put("load_success_and_no_ad", Tgh.get());
            jSONObject.put("load_fail_by_no_net", ROR.get());
            jSONObject.put("load_fail_by_io", Sf.get());
            jSONObject.put("load_get_ad_version", BuildConfig.VERSION_CODE);
            return jSONObject;
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public static void Qhi(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, str);
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi("pangle_sdk_client_load_error", jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void fl() {
        try {
            if (DeviceUtils.cJ()) {
                return;
            }
            hm.incrementAndGet();
        } catch (Throwable unused) {
        }
    }
}
