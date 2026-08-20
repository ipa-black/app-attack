package com.bytedance.sdk.openadsdk.Gm;

import android.os.SystemClock;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.Gm.Qhi.fl;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.zc;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.io.File;
import org.json.JSONObject;
/* compiled from: StatsLogManager.java */
/* loaded from: classes2.dex */
public class ac {
    private static volatile ac Qhi;

    private boolean ac(fl flVar) {
        return flVar == null;
    }

    private ac() {
    }

    public static ac Qhi() {
        if (Qhi == null) {
            synchronized (ac.class) {
                if (Qhi == null) {
                    Qhi = new ac();
                }
            }
        }
        return Qhi;
    }

    public static void Qhi(final tP tPVar) {
        if (tPVar == null) {
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        Qhi("bidding_receive", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.1
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("reveice_ts", currentTimeMillis);
                if (tPVar.eN() == 3) {
                    jSONObject.put("is_icon_only", tPVar.czB() ? 1 : 0);
                }
                return fl.cJ().Qhi("bidding_receive").cJ(jSONObject.toString());
            }
        });
    }

    public static void Qhi(tP tPVar, final long j) {
        if (tPVar == null) {
            return;
        }
        Qhi("bidding_load", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.12
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j);
                return fl.cJ().Qhi("bidding_load").cJ(jSONObject.toString());
            }
        });
    }

    public static void Qhi(final String str, final com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi) {
        if (qhi == null) {
            return;
        }
        Qhi(str, false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.17
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject ac = com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi.this.ac();
                if (ac == null) {
                    ac = new JSONObject();
                }
                com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac CJ = com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi.this.CJ();
                if (CJ != null) {
                    CJ.Qhi(ac);
                }
                return fl.cJ().Qhi(str).Qhi(com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi.this.Qhi().eN()).cJ(ac.toString());
            }
        });
    }

    public static void cJ(final tP tPVar) {
        if (js.Qhi(tPVar) == null || TextUtils.isEmpty(tPVar.Ri())) {
            return;
        }
        Qhi("download_gecko_start", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.18
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("url", tP.this.YB());
                jSONObject.put("channel_name", tP.this.Ri());
                return fl.cJ().Qhi("download_gecko_start").Qhi(tP.this.eN()).cJ(jSONObject.toString());
            }
        });
    }

    public static void Qhi(final tP tPVar, final JSONObject jSONObject) {
        if (js.Qhi(tPVar) == null || TextUtils.isEmpty(tPVar.Ri())) {
            return;
        }
        Qhi("download_gecko_end", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.19
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("url", tP.this.YB());
                jSONObject2.put("channel_name", tP.this.Ri());
                jSONObject2.put("data", jSONObject);
                return fl.cJ().Qhi("download_gecko_end").Qhi(tP.this.eN()).cJ(jSONObject2.toString());
            }
        });
    }

    public void Qhi(final fl flVar) {
        if (ac(flVar)) {
            return;
        }
        flVar.Qhi("express_ad_render");
        HzH.fl().Qhi(new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.20
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return flVar;
            }
        });
    }

    public void cJ(final fl flVar) {
        if (ac(flVar)) {
            return;
        }
        flVar.Qhi("show_backup_endcard");
        HzH.fl().Qhi(new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.21
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return flVar;
            }
        });
    }

    public void Qhi(final String str) {
        Qhi("click_playable_test_tool", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.2
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return fl.cJ().Qhi("click_playable_test_tool").cJ(jSONObject.toString());
            }
        });
    }

    public void cJ(final String str) {
        Qhi("close_playable_test_tool", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.3
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return fl.cJ().Qhi("close_playable_test_tool").cJ(jSONObject.toString());
            }
        });
    }

    public void Qhi(final String str, final int i, final String str2) {
        Qhi("use_playable_test_tool_error", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.4
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                    jSONObject.put("error_code", i);
                    jSONObject.put("error_message", str2);
                } catch (Throwable unused) {
                }
                return fl.cJ().Qhi("use_playable_test_tool_error").cJ(jSONObject.toString());
            }
        });
    }

    public void Qhi(final long j, final long j2) {
        final long j3 = j2 - j;
        Qhi("general_label", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.5
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                int i = !iMK.cJ.get();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("starttime", j);
                    jSONObject.put("endtime", j2);
                    jSONObject.put("start_type", i);
                } catch (Throwable unused) {
                }
                return fl.cJ().Qhi("general_label").Sf(String.valueOf(j3)).cJ(jSONObject.toString());
            }
        });
    }

    public static void cJ() {
        lG.ac(new hm("showFailLog") { // from class: com.bytedance.sdk.openadsdk.Gm.ac.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ac.Qhi().Qhi("show_fail_log", new JSONObject());
                } catch (Throwable th) {
                    ABk.Qhi("StatsLogManager", th.getMessage());
                }
            }
        });
    }

    public void Qhi(final String str, final JSONObject jSONObject) {
        if (str == null || jSONObject == null) {
            return;
        }
        Qhi(str, false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.7
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return fl.cJ().Qhi(str).cJ(jSONObject.toString());
            }
        });
    }

    public void Qhi(final String str, final String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        Qhi(str, false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.8
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return fl.cJ().Qhi(str).cJ(str2);
            }
        });
    }

    public void ac() {
        Qhi("blind_mode_status", true, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.9
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return fl.cJ().Qhi("blind_mode_status");
            }
        });
    }

    public void Qhi(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        Object opt = jSONObject.opt("device_ad_mediation_platform");
        if (!(opt instanceof String) || TextUtils.isEmpty((String) opt)) {
            return;
        }
        Qhi("ad_revenue", true, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.10
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                try {
                    jSONObject.put("event", 272);
                    jSONObject.put(Constants.UUID, zc.ac(HzH.Qhi()));
                    String str = "";
                    if (zc.Qhi(HzH.Qhi()) != null) {
                        str = zc.Qhi(HzH.Qhi());
                    }
                    jSONObject.put("device_id", str);
                    jSONObject.put("platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
                    jSONObject.put("partner", "PangleSDK");
                } catch (Throwable th) {
                    th.getMessage();
                }
                return fl.cJ().Qhi("ad_revenue").cJ(jSONObject.toString());
            }
        });
    }

    public static void CJ() {
        Qhi("disk_log", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.11
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                File[] listFiles;
                JSONObject jSONObject = new JSONObject();
                File file = new File(CacheDirFactory.getRootDir());
                long j = 0;
                if (file.exists() && file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        long Qhi2 = ac.Qhi(file2);
                        j += Qhi2;
                        jSONObject.put(file2.getName(), Qhi2);
                    }
                }
                if (j < 524288000) {
                    return null;
                }
                return fl.cJ().Qhi("disk_log").cJ(jSONObject.toString());
            }
        });
    }

    public static long Qhi(File file) {
        if (file.isFile()) {
            return file.length();
        }
        long j = 0;
        for (File file2 : file.listFiles()) {
            j += Qhi(file2);
        }
        return j;
    }

    public static void cJ(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                final fl cJ = fl.cJ().Qhi(str).cJ(str2);
                HzH.fl().Qhi(new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.13
                    @Override // com.bytedance.sdk.openadsdk.Gm.cJ
                    public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                        return fl.this;
                    }
                }, false);
            }
        } catch (Throwable th) {
            ABk.Qhi("StatsLogManager", th.getMessage());
        }
    }

    public static void Qhi(String str, boolean z, cJ cJVar) {
        int cJ = com.bytedance.sdk.openadsdk.core.settings.HzH.YD().cJ(str);
        new Object[]{"type=", str, "  ", Integer.valueOf(cJ)};
        if (TextUtils.isEmpty(str) || cJ == 0 || cJVar == null) {
            return;
        }
        boolean z2 = cJ == 100;
        if (!z2) {
            z2 = ((int) ((Math.random() * 100.0d) + 1.0d)) <= cJ;
        }
        if (z2) {
            HzH.fl().Qhi(cJVar, z);
        }
    }

    public static void Qhi(long j, long j2, final String str, final int i) {
        if (j == 0) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        final long j3 = elapsedRealtime - j;
        final long j4 = elapsedRealtime - j2;
        final long j5 = j2 - j;
        Qhi("ad_show_cost_time", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.14
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j3);
                jSONObject.put("renderDuration", j4);
                jSONObject.put("showToRenderDuration", j5);
                jSONObject.put("tag", str);
                jSONObject.put("renderType", i);
                return fl.cJ().Qhi("ad_show_cost_time").cJ(jSONObject.toString());
            }
        });
    }

    public static void ac(final String str) {
        Qhi("request_monitor_daily", false, new cJ() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.15
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return fl.cJ().Qhi("request_monitor_daily").cJ(str);
            }
        });
    }

    public static void Qhi(int i, String str) {
        Qhi(i, str, 0, (String) null);
    }

    public static void Qhi(final int i, final String str, final int i2, final String str2) {
        Qhi("ipv6_req", false, (cJ) new cJ<com.bytedance.sdk.openadsdk.Gm.Qhi.ac>() { // from class: com.bytedance.sdk.openadsdk.Gm.ac.16
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                String str3;
                JSONObject jSONObject = new JSONObject();
                int i3 = i;
                if (i3 == 1) {
                    str3 = FirebaseAnalytics.Param.SUCCESS;
                } else if (i3 != -1) {
                    str3 = TtmlNode.START;
                } else {
                    jSONObject.put("error_code", i2);
                    jSONObject.put("error_msg", str2);
                    str3 = "fail";
                }
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("url", str);
                }
                jSONObject.put("status", str3);
                return fl.cJ().Qhi("ipv6_req").cJ(jSONObject.toString());
            }
        });
    }
}
