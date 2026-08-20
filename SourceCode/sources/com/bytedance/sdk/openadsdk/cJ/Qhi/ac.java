package com.bytedance.sdk.openadsdk.cJ.Qhi;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.amazon.aps.shared.APSAnalytics;
import com.bytedance.JProtect;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.CQU;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.EBS;
import com.bytedance.sdk.openadsdk.utils.Eh;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.lang.time.DateUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdLogParamsGenerate.java */
/* loaded from: classes2.dex */
public class ac {
    private final boolean CJ;
    private long Qhi;
    private final Context ac;
    private int cJ;
    private final String fl;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdLogParamsGenerate.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private static final ac Qhi = new ac();
    }

    public static ac Qhi() {
        return Qhi.Qhi;
    }

    private ac() {
        this.CJ = ac();
        this.ac = HzH.Qhi().getApplicationContext();
        this.fl = fl();
    }

    public String Qhi(List<com.bytedance.sdk.openadsdk.cJ.Qhi> list) {
        String str;
        if (list.size() > 0 && list.get(0) != null && list.get(0).ac() != null) {
            str = list.get(0).ac().optString("app_log_url");
        } else {
            str = "";
        }
        return js.fl(str);
    }

    private void Qhi(com.bytedance.sdk.openadsdk.cJ.Qhi qhi, boolean z) {
        if (qhi == null) {
            return;
        }
        try {
            String optString = z ? qhi.ac().optJSONObject(OutcomeEventsTable.COLUMN_NAME_PARAMS).optString("log_extra", "") : qhi.ac().optString("log_extra", "");
            long Qhi2 = tP.Qhi(optString);
            int CJ = tP.CJ(optString);
            if (Qhi2 == 0) {
                Qhi2 = this.Qhi;
            }
            this.Qhi = Qhi2;
            if (CJ == 0) {
                CJ = this.cJ;
            }
            this.cJ = CJ;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AdLogParamsGenerate", "getInfoFromLogExtra exception", e2.getMessage());
        }
    }

    public JSONObject Qhi(List<com.bytedance.sdk.openadsdk.cJ.Qhi> list, long j, JSONObject jSONObject, boolean z) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            Qhi(list.get(0), z);
            jSONObject2.put("header", jSONObject);
            JSONArray jSONArray = new JSONArray();
            for (com.bytedance.sdk.openadsdk.cJ.Qhi qhi : list) {
                jSONArray.put(qhi.Qhi(z));
            }
            if (z) {
                jSONObject2.put("event_v3", jSONArray);
                jSONObject2.put("magic_tag", "ss_app_log");
            } else {
                jSONObject2.put("event", jSONArray);
            }
            jSONObject2.put("_gen_time", j);
            jSONObject2.put("local_time", j / 1000);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public List<com.bytedance.sdk.openadsdk.cJ.Qhi> Qhi(List<com.bytedance.sdk.openadsdk.cJ.Qhi> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.openadsdk.cJ.Qhi qhi : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject ac = qhi.ac();
                jSONObject.putOpt("event", ac.optString("label"));
                long optLong = ac.optLong("event_ts", System.currentTimeMillis());
                jSONObject.putOpt("local_time_ms", Long.valueOf(optLong));
                jSONObject.putOpt("datetime", com.bytedance.sdk.openadsdk.cJ.ROR.ac.format(new Date(optLong)));
                JSONObject jSONObject2 = new JSONObject();
                Iterator<String> keys = ac.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!TextUtils.equals(next, "label")) {
                        jSONObject2.putOpt(next, ac.opt(next));
                    }
                }
                if (z) {
                    jSONObject2.putOpt("_ad_staging_flag", 3);
                }
                jSONObject.putOpt(OutcomeEventsTable.COLUMN_NAME_PARAMS, jSONObject2);
                arrayList.add(new com.bytedance.sdk.openadsdk.cJ.ROR(qhi.Qhi, jSONObject));
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("AdLogParamsGenerate", e2.getMessage());
            }
        }
        return arrayList;
    }

    public List<com.bytedance.sdk.openadsdk.cJ.Qhi> cJ(List<com.bytedance.sdk.openadsdk.cJ.Qhi> list) {
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.sdk.openadsdk.cJ.Qhi qhi : list) {
            try {
                JSONObject ac = qhi.ac();
                ac.putOpt("_ad_staging_flag", 1);
                arrayList.add(new com.bytedance.sdk.openadsdk.cJ.Qhi(qhi.Qhi, ac));
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("AdLogParamsGenerate", e2.getMessage());
            }
        }
        return arrayList;
    }

    @JProtect
    public JSONObject cJ() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ua", js.ac());
            jSONObject.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("app_version", js.ROR());
            jSONObject.put("sim_op", Qhi(this.ac));
            jSONObject.put("root", this.CJ ? 1 : 0);
            jSONObject.put("timezone", CJ());
            jSONObject.put("access", EBS.Qhi(this.ac));
            jSONObject.put("os", APSAnalytics.OS_NAME);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put(OSOutcomeConstants.DEVICE_TYPE, this.fl);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put("language", Locale.getDefault().getLanguage());
            jSONObject.put("resolution", zn.CJ(this.ac) + "x" + zn.ac(this.ac));
            jSONObject.put("display_density", Qhi(zn.ROR(this.ac)));
            jSONObject.put("density_dpi", zn.ROR(this.ac));
            jSONObject.put("aid", "1371");
            jSONObject.put("device_id", com.bytedance.sdk.openadsdk.core.zc.Qhi(this.ac));
            jSONObject.put("rom", Tgh());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("ut", this.cJ);
            jSONObject.put("uid", this.Qhi);
            jSONObject.put("google_aid", com.bytedance.sdk.openadsdk.pA.Qhi.cJ.Qhi.Qhi().cJ());
            jSONObject.put("locale_language", DeviceUtils.CJ());
            jSONObject.put("screen_bright", Math.ceil(DeviceUtils.fl() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", !DeviceUtils.cJ() ? 1 : 0);
            com.bytedance.sdk.openadsdk.core.settings.ROR CJ = HzH.CJ();
            jSONObject.put("force_language", MQ.Qhi(this.ac, "tt_choose_language"));
            if (CJ.aP("mnc")) {
                jSONObject.put("mnc", Eh.ac());
            }
            if (CJ.aP("mcc")) {
                jSONObject.put("mcc", Eh.cJ());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private String Qhi(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return "";
            }
            return telephonyManager.getSimOperator();
        } catch (Throwable unused) {
            return "";
        }
    }

    private boolean ac() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private int CJ() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / DateUtils.MILLIS_IN_HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    private String fl() {
        if (DeviceUtils.ac(this.ac)) {
            return "tv";
        }
        if (DeviceUtils.cJ(this.ac)) {
            return "android_pad";
        }
        return MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID;
    }

    private String Qhi(int i) {
        if (i != 120) {
            if (i != 160) {
                if (i != 240) {
                    if (i != 320) {
                        if (i != 480) {
                            if (i != 640) {
                                return "mdpi";
                            }
                            return "xxxhdpi";
                        }
                        return "xxhdpi";
                    }
                    return "xhdpi";
                }
                return "hdpi";
            }
            return "mdpi";
        }
        return "ldpi";
    }

    @JProtect
    private String Tgh() {
        StringBuilder sb = new StringBuilder();
        try {
            if (CQU.fl()) {
                sb.append("MIUI-");
            } else if (CQU.cJ()) {
                sb.append("FLYME-");
            } else {
                String iMK = CQU.iMK();
                if (CQU.Qhi(iMK)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(iMK)) {
                    sb.append(iMK).append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable unused) {
        }
        return sb.toString();
    }
}
