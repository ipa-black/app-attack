package com.bytedance.sdk.openadsdk.cJ;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.ac;
import com.bytedance.sdk.openadsdk.core.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.Jma;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.qMt;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import com.pgl.ssdk.ces.out.DungeonFlag;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdEventManager.java */
/* loaded from: classes2.dex */
public class ac {
    public static void Qhi() {
        try {
            Class.forName(ac.class.getName());
        } catch (ClassNotFoundException unused) {
        }
    }

    public static void Qhi(tP tPVar, String str, final int i) {
        Qhi(System.currentTimeMillis(), tPVar, str, "open_url_h5", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.1
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.putOpt("preload_status", Integer.valueOf(i));
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(final tP tPVar, String str) {
        Qhi(System.currentTimeMillis(), tPVar, str, "endcard_load_start", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.11
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (tP.ac(tP.this)) {
                        if (tP.this.af() != null) {
                            jSONObject2.putOpt("url", tP.this.af().ac());
                            jSONObject2.putOpt("id", tP.this.af().Qhi());
                            jSONObject2.putOpt("md5", tP.this.af().cJ());
                        }
                        if (tP.this.FQ() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", tP.this.FQ().zc());
                        jSONObject2.putOpt("style_id", tP.this.wa());
                        if (tP.this.FQ() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.cJ(e2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(final tP tPVar, String str, final long j) {
        Qhi(System.currentTimeMillis(), tPVar, str, "endcard_load_finish", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.22
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (tP.ac(tP.this)) {
                        if (tP.this.af() != null) {
                            jSONObject2.putOpt("url", tP.this.af().ac());
                            jSONObject2.putOpt("id", tP.this.af().Qhi());
                            jSONObject2.putOpt("md5", tP.this.af().cJ());
                        }
                        if (tP.this.FQ() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", tP.this.FQ().zc());
                        jSONObject2.putOpt("style_id", tP.this.wa());
                        if (tP.this.FQ() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.cJ(e2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(final tP tPVar, String str, final long j, final int i, final String str2, final String str3) {
        Qhi(System.currentTimeMillis(), tPVar, str, "endcard_load_fail", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.33
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (tP.ac(tP.this)) {
                        if (tP.this.af() != null) {
                            jSONObject2.putOpt("url", tP.this.af().ac());
                            jSONObject2.putOpt("id", tP.this.af().Qhi());
                            jSONObject2.putOpt("md5", tP.this.af().cJ());
                        }
                        if (tP.this.FQ() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", tP.this.FQ().zc());
                        jSONObject2.putOpt("style_id", tP.this.wa());
                        if (!TextUtils.isEmpty(str3)) {
                            jSONObject2.putOpt("error_url", str3);
                        }
                        if (tP.this.FQ() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject2.put("error_code", i);
                    jSONObject2.put("error_msg", str2);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.cJ(e2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(final tP tPVar, String str, final long j, final int i, final int i2) {
        Qhi(System.currentTimeMillis(), tPVar, str, "load", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.43
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.putOpt("interaction_method", Integer.valueOf(tP.this.HzH()));
                    jSONObject2.put("first_page", i2);
                    jSONObject2.put("preload_h5_type", tP.this.jN());
                    int i3 = i;
                    if (i3 >= 0) {
                        jSONObject2.putOpt("preload_status", Integer.valueOf(i3));
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", Math.min(j, (long) TTAdConstant.AD_MAX_EVENT_TIME));
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(String str, tP tPVar, String str2, final Map<String, Object> map) {
        Qhi(System.currentTimeMillis(), tPVar, str2, str, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.44
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (map != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        for (Map.Entry entry : map.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    }
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(long j, tP tPVar, String str, String str2, final JSONObject jSONObject, Sf sf, com.bytedance.sdk.openadsdk.cJ.cJ.Qhi qhi) {
        Qhi(j, tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.45
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                return jSONObject;
            }
        });
    }

    @DungeonFlag
    public static void Qhi(tP tPVar, String str, JSONObject jSONObject) {
        CJ(tPVar, Constants.SHOW, str, jSONObject);
    }

    @DungeonFlag
    private static void CJ(final tP tPVar, final String str, final String str2, final JSONObject jSONObject) {
        if (tPVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (tPVar.uyf() && Constants.SHOW.equals(str)) {
            return;
        }
        if (Constants.SHOW.equals(str)) {
            tPVar.Sf(true);
        }
        final long currentTimeMillis = System.currentTimeMillis();
        Qhi(new com.bytedance.sdk.component.Sf.hm("onShow") { // from class: com.bytedance.sdk.openadsdk.cJ.ac.46
            @Override // java.lang.Runnable
            public void run() {
                ac.Qhi(currentTimeMillis, tPVar, str2, str, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.46.1
                    @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                    public JSONObject Qhi() {
                        Object obj;
                        Object obj2;
                        try {
                            bxS.cJ(tPVar);
                            String str3 = "none";
                            if (com.bytedance.sdk.openadsdk.core.HzH.CJ().Ura()) {
                                str3 = com.bytedance.sdk.openadsdk.core.fl.Qhi.Qhi.Qhi((Application) com.bytedance.sdk.openadsdk.core.HzH.Qhi()).Qhi(str2, DeviceUtils.Qhi(), tPVar.Hy());
                            }
                            JSONObject jSONObject2 = new JSONObject();
                            try {
                                if (jSONObject != null) {
                                    jSONObject.put("interaction_method", tPVar.HzH());
                                    jSONObject.put("real_interaction_method", tPVar.hpZ());
                                    jSONObject.put("video_skip_result", com.bytedance.sdk.openadsdk.core.HzH.CJ().ABk(String.valueOf(tPVar.Hy())));
                                    jSONObject.put("au_show", str3);
                                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                                } else {
                                    JSONObject jSONObject3 = new JSONObject();
                                    jSONObject3.put("interaction_method", tPVar.HzH());
                                    jSONObject3.put("real_interaction_method", tPVar.hpZ());
                                    jSONObject3.put("video_skip_result", com.bytedance.sdk.openadsdk.core.HzH.CJ().ABk(String.valueOf(tPVar.Hy())));
                                    jSONObject3.put("au_show", str3);
                                    jSONObject2.put("ad_extra_data", jSONObject3.toString());
                                }
                                jSONObject2.putOpt("log_extra", tPVar.EGK());
                                float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - tPVar.yBk()).floatValue();
                                if (floatValue <= 0.0f) {
                                    floatValue = 0.0f;
                                }
                                jSONObject2.putOpt("show_time", Float.valueOf(floatValue));
                                jSONObject2.putOpt("ua_policy", Integer.valueOf(tPVar.zn()));
                                String Eh = tPVar.Eh();
                                if (!TextUtils.isEmpty(Eh) && !TextUtils.isEmpty(Eh)) {
                                    jSONObject2.put("ttdsp_price", Math.round(Float.parseFloat(Eh) * 100000.0f));
                                }
                                if (tPVar.Gy() == null || (obj = tPVar.Gy().get("sdk_bidding_type")) == null || Integer.parseInt(obj.toString()) != 2 || (obj2 = tPVar.Gy().get("price")) == null) {
                                    return jSONObject2;
                                }
                                jSONObject2.put("ttdsp_price", Math.round(Double.parseDouble(obj2.toString()) * 100000.0d));
                                return jSONObject2;
                            } catch (Exception unused) {
                                return jSONObject2;
                            }
                        } catch (Exception unused2) {
                            return null;
                        }
                    }
                });
                if (Constants.SHOW.equals(str)) {
                    if (!tPVar.VV()) {
                        if (tPVar.Ewb()) {
                            com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(tPVar.Hf(), new ac.cJ("show_urls", tPVar));
                        } else {
                            ac.Qhi(tPVar);
                        }
                    }
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 != null) {
                        int optInt = jSONObject2.optInt("dynamic_show_type");
                        if (tPVar.XyJ() == 1 && optInt == 7) {
                            com.bytedance.sdk.component.utils.Sf.Qhi().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.46.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    JSONObject jSONObject3 = new JSONObject();
                                    try {
                                        jSONObject3.put("auto_click", true);
                                        ac.cJ(tPVar, str2, Constants.CLICK, jSONObject3);
                                    } catch (Exception unused) {
                                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AdEvent", "ugen click exception");
                                    }
                                }
                            }, com.bytedance.sdk.openadsdk.core.settings.HzH.YD().XH());
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.fl.ac.ac();
                }
            }
        });
    }

    public static void Qhi(tP tPVar) {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.zc.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()))) {
            return;
        }
        com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(com.bytedance.sdk.openadsdk.MQ.Qhi.Qhi(tPVar.Hf(), true), 1, tPVar.HLI());
    }

    @DungeonFlag
    public static void Qhi(final String str, final tP tPVar, final String str2, final Sf sf) {
        if (tPVar == null || sf == null || !sf.Qhi()) {
            return;
        }
        Qhi(System.currentTimeMillis(), tPVar, str2, "ad_show_time", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.47
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", str);
                    Sf sf2 = sf;
                    if (sf2 != null && sf2.cJ() != null) {
                        JSONObject cJ = sf.cJ();
                        if (str2.equals("open_ad")) {
                            cJ.put("is_icon_only", tPVar.czB() ? 1 : 0);
                        }
                        jSONObject.put("ad_extra_data", cJ.toString());
                    }
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(final tP tPVar, final String str, final Jma jma) {
        if (tPVar == null) {
            return;
        }
        final long ac = jma.ac();
        Qhi(System.currentTimeMillis(), tPVar, str, "stay_duration", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.2
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("click_stay_time", ac);
                    jSONObject.put("click_time", jma.Qhi);
                    if (str.equals("open_ad")) {
                        jSONObject.put("is_icon_only", tPVar.czB() ? 1 : 0);
                    }
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void cJ(tP tPVar, String str, final long j) {
        if (tPVar != null && j > 0 && j < 200000) {
            Qhi(System.currentTimeMillis(), tPVar, str, "video_click_duration", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.3
                @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                public JSONObject Qhi() {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject.put("video_click_duration_time", j);
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                    } catch (Throwable unused) {
                    }
                    return jSONObject2;
                }
            });
        }
    }

    public static void Qhi(tP tPVar, final String str, final int i, final String str2, final long j, final boolean z, final int i2, final long j2) {
        Qhi(System.currentTimeMillis(), tPVar, str, "arbitrage_loading", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.4
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("invisible_scene", i);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("loading_visible_time", j);
                    jSONObject.put("arbi_trigger_start", z);
                    jSONObject.put("arbi_convert_count", i2);
                    jSONObject.put("loading_start_timestamp", j2);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                new Object[]{"-->onArbitrageLoading", jSONObject, str};
                return jSONObject2;
            }
        });
    }

    public static void Qhi(tP tPVar, String str, final long j, final boolean z) {
        Qhi(System.currentTimeMillis(), tPVar, str, "lp_loading", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.5
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("if_lp_loading_success", z ? 1 : 2);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject2.put("duration", j);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                return jSONObject2;
            }
        });
    }

    public static void cJ(tP tPVar, String str, final int i) {
        Qhi(System.currentTimeMillis(), tPVar, str, "check_meta", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.6
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("error_code", i);
                    jSONObject.put("check_url", com.bytedance.sdk.openadsdk.core.settings.HzH.YD().pF());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                return jSONObject2;
            }
        });
    }

    public static void ac(tP tPVar, String str, final int i) {
        Qhi(System.currentTimeMillis(), tPVar, str, "check_meta_more", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.7
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("error_code", i);
                    jSONObject.put("check_url", com.bytedance.sdk.openadsdk.core.settings.HzH.YD().pF());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                return jSONObject2;
            }
        });
    }

    public static void Qhi(tP tPVar, final String str, final int i, final String str2) {
        Qhi(System.currentTimeMillis(), tPVar, str, "arbitrage_load_start", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.8
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(FirebaseAnalytics.Param.INDEX, i);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                new Object[]{"-->onArbitrageLoadStart", jSONObject, str};
                return jSONObject2;
            }
        });
    }

    public static void Qhi(tP tPVar, final String str, final int i, final String str2, final float f2) {
        Qhi(System.currentTimeMillis(), tPVar, str, "arbitrage_load_finish", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.9
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(FirebaseAnalytics.Param.INDEX, i);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("arbi_load_duration", f2);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                new Object[]{"-->onArbitrageLoadFinish", jSONObject, str};
                return jSONObject2;
            }
        });
    }

    public static void Qhi(tP tPVar, final String str, final int i, final String str2, final String str3, final int i2) {
        Qhi(System.currentTimeMillis(), tPVar, str, "arbitrage_load_url", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.10
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put(FirebaseAnalytics.Param.INDEX, i);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("load_url", str3);
                    jSONObject.put("url_flag", i2);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                new Object[]{"-->onArbitrageLoadUrl", jSONObject, str};
                return jSONObject2;
            }
        });
    }

    public static void cJ(final tP tPVar, String str) {
        Qhi(System.currentTimeMillis(), tPVar, str, "picture_click", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.12
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("ad_slot_type", tP.this.lB().getNativeAdType());
                    jSONObject.put("interaction_method", tP.this.HzH());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                return jSONObject2;
            }
        });
    }

    @DungeonFlag
    public static void Qhi(final String str, final tP tPVar, final com.bytedance.sdk.openadsdk.core.model.Gm gm, final String str2, final boolean z, final Map<String, Object> map, final int i) {
        final long currentTimeMillis = System.currentTimeMillis();
        Qhi(new com.bytedance.sdk.component.Sf.hm("onClick") { // from class: com.bytedance.sdk.openadsdk.cJ.ac.13
            @Override // java.lang.Runnable
            public void run() {
                tP tPVar2 = tPVar;
                if (tPVar2 == null) {
                    return;
                }
                ac.Qhi(currentTimeMillis, tPVar2, str2, str, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.13.1
                    @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                    public JSONObject Qhi() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            if (gm != null) {
                                JSONObject Qhi2 = gm.Qhi();
                                Qhi2.put("is_valid", z);
                                if (i > 0 && i <= 2) {
                                    Qhi2.put("user_behavior_type", i);
                                }
                                if (map != null) {
                                    if (map.containsKey("duration")) {
                                        jSONObject.put("duration", map.get("duration"));
                                    }
                                    for (Map.Entry entry : map.entrySet()) {
                                        if (!"duration".equals(entry.getKey())) {
                                            Qhi2.put((String) entry.getKey(), entry.getValue());
                                        }
                                    }
                                }
                                Qhi2.put("interaction_method", tPVar.HzH());
                                if (str2.equals("open_ad")) {
                                    Qhi2.put("is_icon_only", tPVar.czB() ? 1 : 0);
                                }
                                jSONObject.put("ad_extra_data", Qhi2.toString());
                            }
                            jSONObject.putOpt("log_extra", tPVar.EGK());
                            float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - tPVar.yBk()).floatValue();
                            if (floatValue <= 0.0f) {
                                floatValue = 0.0f;
                            }
                            jSONObject.putOpt("show_time", Float.valueOf(floatValue));
                            jSONObject.putOpt("ua_policy", Integer.valueOf(tPVar.zn()));
                        } catch (Exception unused) {
                        }
                        return jSONObject;
                    }
                });
                if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.zc.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi())) && Constants.CLICK.equals(str)) {
                    com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(com.bytedance.sdk.openadsdk.MQ.Qhi.Qhi(tPVar.NBs(), true), 2, tPVar.HLI());
                }
                if (Constants.CLICK.equals(str)) {
                    bxS.ac(tPVar);
                }
            }
        });
    }

    public static void Qhi(tP tPVar, String str, String str2, final JSONObject jSONObject) {
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.14
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        if (jSONObject.has("duration")) {
                            jSONObject2.put("duration", jSONObject.get("duration"));
                        }
                    } catch (Exception e2) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AdEvent", e2.getMessage());
                    }
                    return jSONObject2;
                }
                return null;
            }
        });
        if (Constants.CLICK.equals(str2)) {
            bxS.ac(tPVar);
        }
    }

    public static void Qhi(tP tPVar, String str, final int i, final long j) {
        Qhi(System.currentTimeMillis(), tPVar, str, "video_choose", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.15
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("video_choose", i);
                    jSONObject2.put("video_choose_duration", j);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.toString());
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(tP tPVar, String str, final String str2, final long j, final int i, JSONObject jSONObject, final Sf sf) {
        final JSONObject jSONObject2 = jSONObject == null ? new JSONObject() : jSONObject;
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.16
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                Sf sf2;
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("duration", j);
                    jSONObject3.put("percent", i);
                    if (("feed_break".equals(str2) || "feed_over".equals(str2)) && (sf2 = sf) != null) {
                        sf2.Qhi(jSONObject2);
                    }
                    jSONObject3.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                return jSONObject3;
            }
        });
    }

    public static void cJ(tP tPVar, String str, String str2, final JSONObject jSONObject) {
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.17
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    }
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void Qhi(tP tPVar, String str, String str2, final JSONObject jSONObject, final long j) {
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.18
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    }
                    jSONObject2.put("duration", j);
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void Qhi(final tP tPVar, String str, String str2, final Map<String, Object> map) {
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.19
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                    }
                    jSONObject2.put("dp_creative_type", tPVar.nR());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    @DungeonFlag
    public static void Qhi(long j, tP tPVar, String str, String str2) {
        Qhi(j, tPVar, str, str2, (com.bytedance.sdk.openadsdk.Gm.ac.Qhi) null);
    }

    @DungeonFlag
    public static void Qhi(final long j, final tP tPVar, final String str, final String str2, final com.bytedance.sdk.openadsdk.Gm.ac.Qhi qhi) {
        if (tPVar == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || Qhi(tPVar.tcw(), str2)) {
            return;
        }
        Qhi(new com.bytedance.sdk.component.Sf.hm(str2) { // from class: com.bytedance.sdk.openadsdk.cJ.ac.20
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                try {
                    com.bytedance.sdk.openadsdk.Gm.ac.Qhi qhi2 = qhi;
                    if (qhi2 != null) {
                        jSONObject = qhi2.Qhi();
                        if (jSONObject == null) {
                            try {
                                jSONObject = new JSONObject();
                            } catch (Exception unused) {
                            }
                        }
                    } else {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.putOpt("log_extra", tPVar.EGK());
                    jSONObject.putOpt("ua_policy", Integer.valueOf(tPVar.zn()));
                } catch (Exception unused2) {
                    jSONObject = null;
                }
                new Qhi.C0213Qhi(j, tPVar).cJ(str).ac(str2).fl(tPVar.HLI()).Sf(tPVar.DS()).Qhi(tPVar.oU()).Qhi(jSONObject).ROR(tPVar.jWV()).Qhi((com.bytedance.sdk.openadsdk.cJ.cJ.Qhi) null);
            }
        });
    }

    public static void cJ(final long j, final tP tPVar, String str, final String str2) {
        Qhi(System.currentTimeMillis(), tPVar, str, "endcard_feeling_duraion", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.21
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject.put("duration", j);
                    if (tP.ac(tPVar)) {
                        if (tPVar.af() != null) {
                            jSONObject2.putOpt("url", tPVar.af().ac());
                            jSONObject2.putOpt("id", tPVar.af().Qhi());
                            jSONObject2.putOpt("md5", tPVar.af().cJ());
                        }
                        jSONObject2.putOpt("from", str2);
                        if (tPVar.FQ() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.put("url", tPVar.FQ().zc());
                        jSONObject2.put("style_id", tPVar.wa());
                        if (tPVar.FQ() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.cJ(e2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void ac(final tP tPVar, String str) {
        if (tPVar == null || !tP.ac(tPVar) || tPVar.af() == null) {
            return;
        }
        Qhi(System.currentTimeMillis(), tPVar, str, "endcard_show", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.23
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", tP.this.af().ac());
                    jSONObject2.putOpt("id", tP.this.af().Qhi());
                    jSONObject2.putOpt("md5", tP.this.af().cJ());
                    if (tP.this.FQ() != null) {
                        jSONObject2.putOpt("render_type", Integer.valueOf(tP.this.FQ().CJ()));
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(tP tPVar, final com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi qhi, final String str) {
        Qhi(System.currentTimeMillis(), tPVar, str, "web_behavior_keyword", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.24
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.ac());
                    jSONObject2.put("keyword", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.HzH());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th) {
                    qMt.cJ("TTAD.AdEvent", "onWebBehaviorKeyword", th.getMessage());
                }
                new Object[]{"onWebBehaviorKeyword-->", jSONObject, str};
                return jSONObject;
            }
        });
    }

    public static void cJ(tP tPVar, final com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi qhi, final String str) {
        Qhi(System.currentTimeMillis(), tPVar, str, "web_behavior_load", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.25
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.ac());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.CJ());
                    jSONObject2.put("arbi_load_duration", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.kYc());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th) {
                    qMt.cJ("TTAD.AdEvent", "onWebBehaviorLoad", th.getMessage());
                }
                new Object[]{"onWebBehaviorLoad-->", jSONObject, str};
                return jSONObject;
            }
        });
    }

    public static void ac(tP tPVar, final com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi qhi, final String str) {
        Qhi(System.currentTimeMillis(), tPVar, str, "web_behavior_stay", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.26
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.ac());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.CJ());
                    jSONObject2.put("arbi_stay_duration", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.iMK());
                    jSONObject2.put("browsing_percentage", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.pA());
                    jSONObject2.put("out_focus_scene", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.hpZ());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th) {
                    qMt.cJ("TTAD.AdEvent", "onWebBehaviorStay", th.getMessage());
                }
                new Object[]{"onWebBehaviorStay-->", jSONObject, str};
                return jSONObject;
            }
        });
    }

    public static void CJ(tP tPVar, final com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi qhi, final String str) {
        Qhi(System.currentTimeMillis(), tPVar, str, "web_behavior_scroll", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.27
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.ac());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.CJ());
                    jSONObject2.put("trigger_scroll_x", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.hm());
                    jSONObject2.put("trigger_scroll_y", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.WAv());
                    jSONObject2.put("arbi_offset_y", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.Gm());
                    jSONObject2.put("scroll_type", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.zc());
                    jSONObject2.put("scroll_duration", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.ABk());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th) {
                    qMt.cJ("TTAD.AdEvent", "onWebBehaviorScroll", th.getMessage());
                }
                new Object[]{"onWebBehaviorScroll-->", jSONObject, str};
                return jSONObject;
            }
        });
    }

    public static void fl(tP tPVar, final com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi qhi, final String str) {
        Qhi(System.currentTimeMillis(), tPVar, str, "web_behavior_click", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.28
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.ac());
                    jSONObject2.put("current_url_index", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.CJ());
                    jSONObject2.put("arbi_start_x", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.fl());
                    jSONObject2.put("arbi_start_y", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.Tgh());
                    jSONObject2.put("click_duration", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.ROR());
                    jSONObject2.put("is_trigger_jump", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.Sf());
                    jSONObject2.put("click_type", String.valueOf(com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.tP()));
                    if (com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.Qhi() != -1) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("hit_type", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.Qhi());
                        jSONObject3.put("hit_extra", com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi.this.cJ());
                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th) {
                    qMt.cJ("TTAD.AdEvent", "onWebBehaviorClick", th.getMessage());
                }
                new Object[]{"onWebBehaviorClick-->", jSONObject, str};
                return jSONObject;
            }
        });
    }

    public static void Qhi(final long j, final tP tPVar, String str) {
        if (tPVar == null || !tP.ac(tPVar) || tPVar.af() == null) {
            return;
        }
        Qhi(System.currentTimeMillis(), tPVar, str, "endcard_close", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.29
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", tP.this.af().ac());
                    jSONObject2.putOpt("id", tP.this.af().Qhi());
                    jSONObject2.putOpt("md5", tP.this.af().cJ());
                    if (tP.this.FQ() != null) {
                        jSONObject2.putOpt("render_type", Integer.valueOf(tP.this.FQ().CJ()));
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.cJ(e2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(tP tPVar, String str, final String str2) {
        Qhi(System.currentTimeMillis(), tPVar, str, "show_error", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.30
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.putOpt("error_msg", str2);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(tP tPVar, String str, String str2, final long j, final JSONObject jSONObject) {
        if (tPVar == null || jSONObject == null) {
            return;
        }
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.31
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("duration", j);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AdEvent", e2.getMessage());
                }
                return jSONObject2;
            }
        });
    }

    public static void cJ(tP tPVar, String str, String str2, final JSONObject jSONObject, final long j) {
        if (tPVar == null || jSONObject == null) {
            return;
        }
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.32
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject2.put("duration", j);
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void ac(tP tPVar, final String str, final String str2, final JSONObject jSONObject) {
        if (tPVar == null || jSONObject == null) {
            return;
        }
        Qhi(System.currentTimeMillis(), tPVar, str, str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.34
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (JSONException unused) {
                }
                new Object[]{"extJson: ", jSONObject2, "tag: ", str, "label: ", str2};
                return jSONObject2;
            }
        });
    }

    public static void cJ(tP tPVar, final String str, final JSONObject jSONObject) {
        Qhi(System.currentTimeMillis(), tPVar, str, "arbitrage_loading_show", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.35
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("pag_json_data", jSONObject);
                    jSONObject2.put("ad_extra_data", jSONObject3);
                } catch (JSONException unused) {
                }
                new Object[]{"extJson: ", jSONObject2, "tag: ", str, "label: ", "arbitrage_loading_show"};
                return jSONObject2;
            }
        });
    }

    public static void ac(tP tPVar, final String str, final JSONObject jSONObject) {
        Qhi(System.currentTimeMillis(), tPVar, str, "arbitrage_loading_progress", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.36
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("pag_json_data", jSONObject);
                    jSONObject2.put("ad_extra_data", jSONObject3);
                } catch (JSONException unused) {
                }
                new Object[]{"extJson: ", jSONObject2, "tag: ", str, "label: ", "arbitrage_loading_progress"};
                return jSONObject2;
            }
        });
    }

    public static void Qhi(String str, long j) {
        com.bytedance.sdk.openadsdk.core.CJ.Gm.Qhi(str, j);
    }

    @DungeonFlag
    public static void Qhi(final tP tPVar, final String str, final String str2, final String str3, final long j, final long j2, final JSONObject jSONObject, final boolean z) {
        if (tPVar == null || Qhi(tPVar.tcw(), str3)) {
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        Qhi(new com.bytedance.sdk.component.Sf.hm("sendJsAdEvent") { // from class: com.bytedance.sdk.openadsdk.cJ.ac.37
            @Override // java.lang.Runnable
            public void run() {
                JSONArray optJSONArray;
                String oU = tPVar.oU();
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        String optString = jSONObject.optString("ad_extra_data");
                        if (!TextUtils.isEmpty(optString)) {
                            jSONObject2 = new JSONObject(optString);
                        }
                        if (!Constants.CLICK.equals(str3)) {
                            jSONObject2.put("device", DeviceUtils.fl(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).toString());
                        }
                        if (Constants.CLICK.equals(str3)) {
                            if (z) {
                                jSONObject2.put("click_scence", 1);
                            } else if (com.bytedance.sdk.openadsdk.core.model.bxS.cJ(tPVar)) {
                                jSONObject2.put("click_scence", 3);
                            }
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                        jSONObject.put("tag", str2);
                        int optInt = jSONObject2.optInt("agg_request_type", -1);
                        if (z && optInt == 2) {
                            oU = jSONObject2.optString("app_log_url");
                        }
                        int i = 0;
                        if (Constants.CLICK.equals(str3)) {
                            bxS.ac(tPVar);
                            float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - tP.cJ(jSONObject.optString("log_extra"))).floatValue();
                            JSONObject jSONObject3 = jSONObject;
                            if (floatValue <= 0.0f) {
                                floatValue = 0.0f;
                            }
                            jSONObject3.putOpt("show_time", Float.valueOf(floatValue));
                            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.zc.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()))) {
                                if (z && optInt == 2) {
                                    JSONArray optJSONArray2 = jSONObject2.optJSONArray("click_tracking_url");
                                    if (optJSONArray2 != null) {
                                        ArrayList arrayList = new ArrayList();
                                        while (i < optJSONArray2.length()) {
                                            arrayList.add(optJSONArray2.optString(i));
                                            i++;
                                        }
                                        com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(com.bytedance.sdk.openadsdk.MQ.Qhi.Qhi(arrayList, true), 2, String.valueOf(j));
                                    }
                                } else {
                                    tP tPVar2 = tPVar;
                                    if (tPVar2 != null) {
                                        com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(com.bytedance.sdk.openadsdk.MQ.Qhi.Qhi(tPVar2.NBs(), true), 2, tPVar.HLI());
                                    }
                                }
                            }
                        } else if (Constants.SHOW.equals(str3) && !TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.zc.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi())) && z && optInt == 2 && (optJSONArray = jSONObject2.optJSONArray("show_tracking_url")) != null) {
                            ArrayList arrayList2 = new ArrayList();
                            while (i < optJSONArray.length()) {
                                arrayList2.add(optJSONArray.optString(i));
                                i++;
                            }
                            com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(com.bytedance.sdk.openadsdk.MQ.Qhi.Qhi(arrayList2, true), 1, String.valueOf(j));
                        }
                    } catch (Exception unused) {
                    }
                }
                new Qhi.C0213Qhi(currentTimeMillis, tPVar).CJ(str).cJ(str2).ac(str3).fl(String.valueOf(j)).Tgh(String.valueOf(j2)).Qhi(oU).Qhi(jSONObject).Sf(tPVar.DS()).ROR(tPVar.jWV()).Qhi((com.bytedance.sdk.openadsdk.cJ.cJ.Qhi) null);
            }
        });
    }

    public static void CJ(tP tPVar, String str, JSONObject jSONObject) {
        if (tPVar == null) {
            return;
        }
        Qhi(tPVar, str, -1L, jSONObject);
    }

    public static void Qhi(tP tPVar, String str, final long j, final JSONObject jSONObject) {
        Qhi(System.currentTimeMillis(), tPVar, "open_ad", str, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.38
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    long j2 = j;
                    if (j2 != -1) {
                        jSONObject2.put("duration", j2);
                    }
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    } else {
                        jSONObject2.put("ad_extra_data", new JSONObject().toString());
                    }
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AdEvent", e2.getMessage());
                }
                return jSONObject2;
            }
        });
    }

    public static void Qhi(final com.bytedance.sdk.component.Sf.hm hmVar) {
        if (hmVar == null) {
            return;
        }
        if (lG.fl()) {
            com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.39
                @Override // java.lang.Runnable
                public void run() {
                    lG.cJ(com.bytedance.sdk.component.Sf.hm.this, 10);
                }
            });
        } else if (!lG.Tgh()) {
            lG.cJ(hmVar, 10);
        } else {
            hmVar.run();
        }
    }

    public static void Qhi(final com.bytedance.sdk.openadsdk.Gm.Qhi.cJ cJVar) {
        if (cJVar == null || cJVar.cJ() == null) {
            return;
        }
        final tP cJ = cJVar.cJ();
        final int ip = cJ.ip();
        if (ip == 2 || ip == 8) {
            Qhi(System.currentTimeMillis(), cJ, cJVar.ac(), "open_browser", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.40
                @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                public JSONObject Qhi() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        int CJ = com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.CJ();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(NewHtcHomeBadger.COUNT, js.iMK(com.bytedance.sdk.openadsdk.core.HzH.Qhi()));
                        jSONObject2.put("interceptor", CJ);
                        jSONObject2.put(FirebaseAnalytics.Param.SUCCESS, com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.fl());
                        jSONObject2.put("link", com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.Qhi());
                        jSONObject2.put("interaction_type", ip);
                        jSONObject2.put("real_interaction_type", com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.ROR());
                        if (com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.CJ() == 9) {
                            jSONObject2.put("is_act_signals_api_available", com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.Sf());
                            jSONObject2.put("is_act_signals_callback", com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.hm());
                        }
                        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.Tgh())) {
                            jSONObject2.put("exception_msg", com.bytedance.sdk.openadsdk.Gm.Qhi.cJ.this.Tgh());
                        }
                        if (CJ == 2 || CJ == 5) {
                            jSONObject2.put("meta", cJ.mZ().toString());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Exception e2) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AdEvent", e2.getMessage());
                    }
                    return jSONObject;
                }
            });
        }
    }

    public static void fl(tP tPVar, String str, JSONObject jSONObject) {
        CJ(tPVar, "activity_recreate", str, jSONObject);
    }

    /* compiled from: AdEventManager.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public static void Qhi(String str, final JSONObject jSONObject, tP tPVar) {
            String Qhi = js.Qhi(tPVar);
            if (Qhi == null) {
                return;
            }
            ac.Qhi(System.currentTimeMillis(), tPVar, Qhi + "_landingpage", str, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.Qhi.1
                @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                public JSONObject Qhi() {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.loadEvent error", th);
                    }
                    return jSONObject2;
                }
            });
        }

        public static void Qhi(final int i, final int i2, tP tPVar) {
            String Qhi = js.Qhi(tPVar);
            if (Qhi == null) {
                return;
            }
            ac.Qhi(System.currentTimeMillis(), tPVar, Qhi + "_landingpage", "local_res_hit_rate", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.Qhi.2
                @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                public JSONObject Qhi() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("all_times", i2);
                        jSONObject2.put("hit_times", i);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th);
                    }
                    return jSONObject;
                }
            });
        }

        public static void Qhi(final long j, final tP tPVar, String str, final ILoader iLoader, final String str2) {
            if (str == null) {
                return;
            }
            ac.Qhi(System.currentTimeMillis(), tPVar, str, "landingpage_init", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.Qhi.3
                @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                public JSONObject Qhi() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        int Qhi = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(ILoader.this, str2);
                        JSONObject jSONObject2 = new JSONObject();
                        JSONObject jSONObject3 = new JSONObject();
                        int i = 1;
                        jSONObject3.put("is_arbitrage", tPVar.jPH() ? 1 : 0);
                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                        jSONObject2.put("url", tPVar.YB());
                        jSONObject2.put("channel_name", tPVar.Ri());
                        if (TextUtils.isEmpty(tPVar.Ri()) || Qhi <= 0) {
                            i = 0;
                        }
                        jSONObject2.put("interceptor_status", i);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("resource_count", Qhi);
                        jSONObject2.put("resource_info", jSONObject4);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                        jSONObject.put("duration", j);
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th);
                    }
                    return jSONObject;
                }
            });
        }

        public static void Qhi(final int i, final int i2, final int i3, final int i4, final tP tPVar, String str, final int i5) {
            if (str == null || TextUtils.isEmpty(tPVar.Ri())) {
                return;
            }
            ac.Qhi(System.currentTimeMillis(), tPVar, str, "landing_page_resource_detail", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.Qhi.4
                @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
                public JSONObject Qhi() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("next_url", tP.this.YB());
                        jSONObject2.put("channel_name", tP.this.Ri());
                        jSONObject2.put("preload_status", i <= 0 ? 0 : 2);
                        jSONObject2.put("first_page", i5);
                        jSONObject2.put("preload_h5_type", tP.this.jN());
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("channel_response", i);
                        jSONObject3.put("failResourceCount", i2);
                        jSONObject3.put("successCount", i3);
                        jSONObject3.put("failCount", i4);
                        jSONObject2.put("resource_info", jSONObject3);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Throwable th) {
                        Log.d("TTAD.AdEvent", "Gecko.localResHitRate error", th);
                    }
                    return jSONObject;
                }
            });
        }
    }

    public static void Qhi(tP tPVar, String str, int i, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(SessionDescription.ATTR_TYPE, i);
        } catch (JSONException unused) {
        }
        cJ(tPVar, str, "open_ad_land_page_links", jSONObject);
    }

    public static void cJ(tP tPVar, String str, int i, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(SessionDescription.ATTR_TYPE, i);
        } catch (JSONException unused) {
        }
        cJ(tPVar, str, "download_app_ad_track", jSONObject);
    }

    public static void Qhi(tP tPVar, String str, final boolean z, final boolean z2, final boolean z3, final boolean z4, final int i, final Map<String, Object> map) {
        Qhi(System.currentTimeMillis(), tPVar, str, "start_show_plb", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.41
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("isSkip", z);
                    jSONObject2.put("force", z2);
                    jSONObject2.put("isFromLandingPage", z3);
                    jSONObject2.put("finishing", z4);
                    jSONObject2.put("from", i);
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Qhi(final tP tPVar, final boolean z, String str, final String str2, final long j, final String str3, final String str4, final int i, final String str5) {
        Qhi(System.currentTimeMillis(), tPVar, str, "load_ugen_template", new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.ac.42
            /* JADX WARN: Can't wrap try/catch for region: R(11:1|(1:(2:2|3))|(11:5|(9:36|9|(1:(1:14))(2:26|(2:28|(1:30))(2:31|(1:33)))|15|(1:17)|18|19|20|21)|8|9|(0)(0)|15|(0)|18|19|20|21)(11:37|(9:39|9|(0)(0)|15|(0)|18|19|20|21)|8|9|(0)(0)|15|(0)|18|19|20|21)|40|41|42|43|19|20|21|(1:(1:44))) */
            /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x005d A[Catch: all -> 0x00cd, TryCatch #2 {all -> 0x00cd, blocks: (B:3:0x000e, B:19:0x003f, B:21:0x0047, B:30:0x009c, B:32:0x00bb, B:33:0x00c5, B:22:0x005d, B:24:0x0061, B:26:0x0069, B:27:0x007f, B:29:0x0087, B:8:0x001f, B:11:0x0029), top: B:46:0x000e }] */
            /* JADX WARN: Removed duplicated region for block: B:32:0x00bb A[Catch: all -> 0x00cd, TryCatch #2 {all -> 0x00cd, blocks: (B:3:0x000e, B:19:0x003f, B:21:0x0047, B:30:0x009c, B:32:0x00bb, B:33:0x00c5, B:22:0x005d, B:24:0x0061, B:26:0x0069, B:27:0x007f, B:29:0x0087, B:8:0x001f, B:11:0x0029), top: B:46:0x000e }] */
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.json.JSONObject Qhi() {
                /*
                    r9 = this;
                    java.lang.String r0 = "error_msg"
                    java.lang.String r1 = "error_code"
                    org.json.JSONObject r2 = new org.json.JSONObject
                    r2.<init>()
                    org.json.JSONObject r3 = new org.json.JSONObject
                    r3.<init>()
                    java.lang.String r4 = r1     // Catch: java.lang.Throwable -> Lcd
                    int r5 = r4.hashCode()     // Catch: java.lang.Throwable -> Lcd
                    r6 = -1606803861(0xffffffffa03a1e6b, float:-1.5764877E-19)
                    r7 = 1
                    if (r5 == r6) goto L29
                    r6 = 3107(0xc23, float:4.354E-42)
                    if (r5 == r6) goto L1f
                    goto L33
                L1f:
                    java.lang.String r5 = "ad"
                    boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> Lcd
                    if (r4 == 0) goto L33
                    r4 = r7
                    goto L34
                L29:
                    java.lang.String r5 = "endcard"
                    boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> Lcd
                    if (r4 == 0) goto L33
                    r4 = 0
                    goto L34
                L33:
                    r4 = -1
                L34:
                    java.lang.String r5 = "md5"
                    java.lang.String r6 = "id"
                    java.lang.String r8 = "url"
                    if (r4 == 0) goto L5d
                    if (r4 == r7) goto L3f
                    goto L9c
                L3f:
                    com.bytedance.sdk.openadsdk.core.model.tP r4 = r3     // Catch: java.lang.Throwable -> Lcd
                    com.bytedance.sdk.openadsdk.core.model.tP$Qhi r4 = r4.es()     // Catch: java.lang.Throwable -> Lcd
                    if (r4 == 0) goto L9c
                    java.lang.String r7 = r4.iMK()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r8, r7)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r7 = r4.fl()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r6, r7)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r4 = r4.pA()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r5, r4)     // Catch: java.lang.Throwable -> Lcd
                    goto L9c
                L5d:
                    boolean r4 = r2     // Catch: java.lang.Throwable -> Lcd
                    if (r4 == 0) goto L7f
                    com.bytedance.sdk.openadsdk.core.model.tP r4 = r3     // Catch: java.lang.Throwable -> Lcd
                    com.bytedance.sdk.openadsdk.core.ugen.fl.Qhi r4 = r4.wv()     // Catch: java.lang.Throwable -> Lcd
                    if (r4 == 0) goto L9c
                    java.lang.String r7 = r4.ac()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r8, r7)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r7 = r4.Qhi()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r6, r7)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r4 = r4.cJ()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r5, r4)     // Catch: java.lang.Throwable -> Lcd
                    goto L9c
                L7f:
                    com.bytedance.sdk.openadsdk.core.model.tP r4 = r3     // Catch: java.lang.Throwable -> Lcd
                    com.bytedance.sdk.openadsdk.core.ugen.fl.Qhi r4 = r4.af()     // Catch: java.lang.Throwable -> Lcd
                    if (r4 == 0) goto L9c
                    java.lang.String r7 = r4.ac()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r8, r7)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r7 = r4.Qhi()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r6, r7)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r4 = r4.cJ()     // Catch: java.lang.Throwable -> Lcd
                    r3.putOpt(r5, r4)     // Catch: java.lang.Throwable -> Lcd
                L9c:
                    java.lang.String r4 = "ugen_status"
                    java.lang.String r5 = r4     // Catch: java.lang.Throwable -> Lcd
                    r3.put(r4, r5)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r4 = "from"
                    java.lang.String r5 = r5     // Catch: java.lang.Throwable -> Lcd
                    r3.put(r4, r5)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r4 = "ugen_scene"
                    java.lang.String r5 = r1     // Catch: java.lang.Throwable -> Lcd
                    r3.put(r4, r5)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r4 = "fail"
                    java.lang.String r5 = r4     // Catch: java.lang.Throwable -> Lcd
                    boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> Lcd
                    if (r4 == 0) goto Lc5
                    int r4 = r6     // Catch: java.lang.Throwable -> Lcd
                    r3.put(r1, r4)     // Catch: java.lang.Throwable -> Lcd
                    java.lang.String r4 = r7     // Catch: java.lang.Throwable -> Lcd
                    r3.put(r0, r4)     // Catch: java.lang.Throwable -> Lcd
                Lc5:
                    java.lang.String r4 = "duration"
                    long r5 = r8     // Catch: java.lang.Throwable -> Lcd
                    r2.put(r4, r5)     // Catch: java.lang.Throwable -> Lcd
                    goto Le9
                Lcd:
                    r4 = move-exception
                    r5 = 133(0x85, float:1.86E-43)
                    r3.put(r1, r5)     // Catch: java.lang.Throwable -> Le9
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le9
                    java.lang.String r5 = "send template error "
                    r1.<init>(r5)     // Catch: java.lang.Throwable -> Le9
                    java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> Le9
                    java.lang.StringBuilder r1 = r1.append(r4)     // Catch: java.lang.Throwable -> Le9
                    java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Le9
                    r3.put(r0, r1)     // Catch: java.lang.Throwable -> Le9
                Le9:
                    java.lang.String r0 = "ad_extra_data"
                    java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> Lf2
                    r2.put(r0, r1)     // Catch: java.lang.Throwable -> Lf2
                Lf2:
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.cJ.ac.AnonymousClass42.Qhi():org.json.JSONObject");
            }
        });
    }

    private static boolean Qhi(int i, String str) {
        int NFd;
        try {
            Set<String> HWc = com.bytedance.sdk.openadsdk.core.settings.HzH.YD().HWc();
            if ((i == 1 && HWc != null && HWc.contains(str)) || (NFd = com.bytedance.sdk.openadsdk.core.settings.HzH.YD().NFd(str)) == 0) {
                return true;
            }
            if (NFd != 100) {
                return ((int) ((Math.random() * 100.0d) + 1.0d)) > NFd;
            }
            return false;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AdEvent", th.getMessage());
            return false;
        }
    }
}
