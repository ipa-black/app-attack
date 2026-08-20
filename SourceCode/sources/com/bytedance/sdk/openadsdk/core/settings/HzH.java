package com.bytedance.sdk.openadsdk.core.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.sdk.AppLovinMediationProvider;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.adexpress.CJ.tP;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.cJ.Qhi.pA;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.settings.Tgh;
import com.bytedance.sdk.openadsdk.core.settings.hpZ;
import com.bytedance.sdk.openadsdk.core.settings.pA;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.explorestack.iab.vast.VastError;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTSdkSettings.java */
/* loaded from: classes2.dex */
public class HzH implements ROR, pA.Qhi {
    private final AtomicBoolean ABk;
    final Tgh.cJ<ConcurrentHashMap<String, Integer>> CJ;
    private final Set<String> CQU;
    private final Tgh.cJ<Map<String, Integer>> Dww;
    private final BroadcastReceiver EBS;
    private Tgh.cJ<JSONObject> Eh;
    private final com.bytedance.sdk.openadsdk.core.settings.Qhi Gm;
    private int HzH;
    private WAv MQ;
    private Set<String> ROR;
    private final Gm WAv;
    private final Runnable bxS;
    Tgh.cJ<com.bytedance.sdk.openadsdk.cJ.Qhi.pA> fl;
    private int hpZ;
    private volatile boolean iMK;
    private boolean kYc;
    private boolean pA;
    private final Tgh.cJ<Set<String>> pM;
    private final iMK zc;
    private static final String Tgh = js.iMK();
    private static final com.bytedance.sdk.component.Sf.hm Sf = new com.bytedance.sdk.component.Sf.hm("TemplateReInitTask") { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.1
        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.adexpress.Qhi.cJ.Tgh.cJ().hm();
            com.bytedance.sdk.component.adexpress.Qhi.cJ.Tgh.cJ().cJ(false);
            com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.cJ();
            com.bytedance.sdk.component.adexpress.Qhi.cJ.Tgh.cJ().ac();
        }
    };
    public static String Qhi = "";
    public static String cJ = "IABTCF_TCString";
    private static boolean hm = false;
    private static final ConcurrentLinkedQueue<hpZ.Qhi> tP = new ConcurrentLinkedQueue<>();
    private static final zc qMt = new zc();
    static final ConcurrentHashMap<String, Integer> ac = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TTSdkSettings.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        static final HzH Qhi = new HzH();
    }

    private static int ac(boolean z) {
        return z ? 20 : 5;
    }

    private HzH() {
        this.ROR = Collections.synchronizedSet(new HashSet());
        this.WAv = new Gm();
        this.Gm = new com.bytedance.sdk.openadsdk.core.settings.Qhi();
        this.zc = new iMK(new hpZ.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.6
            @Override // com.bytedance.sdk.openadsdk.core.settings.hpZ.Qhi
            public void Qhi() {
                hpZ.Qhi[] qhiArr;
                boolean unused = HzH.hm = true;
                if (HzH.tP == null || HzH.tP.size() == 0 || (qhiArr = (hpZ.Qhi[]) HzH.tP.toArray()) == null) {
                    return;
                }
                for (hpZ.Qhi qhi : qhiArr) {
                    qhi.Qhi();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.settings.hpZ.Qhi
            public void cJ() {
                if (HzH.tP == null || HzH.tP.isEmpty()) {
                    return;
                }
                Iterator it = HzH.tP.iterator();
                while (it.hasNext()) {
                    ((hpZ.Qhi) it.next()).cJ();
                }
            }
        });
        this.ABk = new AtomicBoolean(false);
        this.iMK = false;
        this.pA = false;
        this.hpZ = 5000;
        this.HzH = 10;
        AnonymousClass11 anonymousClass11 = new AnonymousClass11();
        this.EBS = anonymousClass11;
        this.bxS = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.12
            @Override // java.lang.Runnable
            public void run() {
                HzH.this.CJ(2);
                HzH.this.eG();
            }
        };
        this.CJ = new Tgh.cJ<ConcurrentHashMap<String, Integer>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.13
            @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
            /* renamed from: Qhi */
            public ConcurrentHashMap<String, Integer> cJ(String str) {
                if (TextUtils.isEmpty(str)) {
                    return HzH.ac;
                }
                ConcurrentHashMap<String, Integer> concurrentHashMap = new ConcurrentHashMap<>();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        int optInt = jSONObject.optInt(next, 100);
                        if (!TextUtils.isEmpty(next) && optInt >= 0 && optInt <= 100) {
                            concurrentHashMap.put(next, Integer.valueOf(optInt));
                        }
                    }
                } catch (JSONException e2) {
                    Log.i("TTAD.SdkSettings", e2.getMessage());
                }
                return concurrentHashMap;
            }
        };
        this.Dww = new Tgh.cJ<Map<String, Integer>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.2
            @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
            /* renamed from: Qhi */
            public Map<String, Integer> cJ(String str) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    HashMap hashMap = new HashMap(jSONObject.length());
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (!TextUtils.isEmpty(next)) {
                            int optInt = jSONObject.optInt(next, 100);
                            if (optInt >= 0 && optInt <= 100) {
                                hashMap.put(next, Integer.valueOf(optInt));
                            } else {
                                hashMap.put(next, 100);
                            }
                        }
                    }
                    return hashMap;
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.cJ("get applog rate from sp failed:" + e2.getMessage());
                    return null;
                }
            }
        };
        this.CQU = new HashSet();
        this.pM = new Tgh.cJ<Set<String>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.3
            @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
            /* renamed from: Qhi */
            public Set<String> cJ(String str) {
                HashSet hashSet = new HashSet();
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int optInt = jSONObject.optInt("applog_count");
                        if (optInt >= 2 && optInt <= 100) {
                            HzH.this.HzH = optInt;
                        }
                        int optInt2 = jSONObject.optInt("applog_interval");
                        if (optInt2 >= 100 && optInt2 <= 30000) {
                            HzH.this.hpZ = optInt2;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("core_label_arr");
                        if (jSONArray != null) {
                            for (int i = 0; i < jSONArray.length(); i++) {
                                String string = jSONArray.getString(i);
                                if (!TextUtils.isEmpty(string)) {
                                    hashSet.add(string);
                                }
                            }
                        }
                    } catch (JSONException e2) {
                        Log.i("TTAD.SdkSettings", e2.getMessage());
                    }
                }
                return hashSet.size() == 0 ? new HashSet(Arrays.asList(Constants.CLICK, Constants.SHOW, "insight_log", "mrc_show")) : hashSet;
            }
        };
        this.Eh = new Tgh.cJ<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.4
            @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
            /* renamed from: Qhi */
            public JSONObject cJ(String str) {
                JSONObject jSONObject;
                try {
                    jSONObject = new JSONObject(str);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.SdkSettings", th.getMessage());
                    jSONObject = null;
                }
                return jSONObject == null ? new JSONObject() : jSONObject;
            }
        };
        this.fl = new Tgh.cJ<com.bytedance.sdk.openadsdk.cJ.Qhi.pA>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.5
            @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
            /* renamed from: Qhi */
            public com.bytedance.sdk.openadsdk.cJ.Qhi.pA cJ(String str) {
                com.bytedance.sdk.openadsdk.cJ.Qhi.pA pAVar = new com.bytedance.sdk.openadsdk.cJ.Qhi.pA();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    pAVar.Qhi(jSONObject.optInt("enable_strategy", 0) == 1);
                    pAVar.Qhi(Qhi(jSONObject.optJSONObject(RewardedVideo.VIDEO_MODE_DEFAULT)));
                    JSONObject optJSONObject = jSONObject.optJSONObject("adid_configs");
                    if (optJSONObject != null) {
                        Iterator<String> keys = optJSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            pAVar.Qhi(next, Qhi(optJSONObject.getJSONObject(next)));
                        }
                    }
                } catch (Exception unused) {
                }
                return pAVar;
            }

            private pA.Qhi Qhi(JSONObject jSONObject) {
                if (jSONObject != null) {
                    return new pA.Qhi(jSONObject.optInt("retry_times", -1), jSONObject.optInt("time_interval", -1));
                }
                return null;
            }
        };
        try {
            Context Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("_dataChanged");
            if (Build.VERSION.SDK_INT >= 33) {
                Qhi2.registerReceiver(anonymousClass11, intentFilter, 4);
            } else {
                Qhi2.registerReceiver(anonymousClass11, intentFilter);
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.SdkSettings", "", e2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void Qhi() {
        try {
            ac.Qhi();
            this.zc.ac();
            this.WAv.ac();
            this.Gm.ac();
            Context Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
            File file = new File(new File(Qhi2.getDataDir(), "shared_prefs"), "tt_sdk_settings.xml");
            if (file.exists() && file.isFile()) {
                Qhi2.deleteSharedPreferences(file.getName().replace(".xml", ""));
            }
        } catch (Throwable unused) {
        }
    }

    private static void cJ(int i, boolean z) {
        Context Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
        if (Qhi2 != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(Qhi2.getPackageName());
                intent.setAction("_tryFetRemoDat");
                intent.putExtra("_force", z);
                intent.putExtra("_source", i);
                Qhi2.sendBroadcast(intent);
            } catch (Throwable unused) {
            }
        }
    }

    public static void SNp() {
        Context Qhi2;
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac() && (Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi()) != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(Qhi2.getPackageName());
                intent.setAction("_dataChanged");
                Qhi2.sendBroadcast(intent);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.SdkSettings", "", th);
            }
        }
    }

    public static int cJ(Context context) {
        SharedPreferences CJ;
        if (context == null || (CJ = CJ(context)) == null) {
            return -2;
        }
        int i = CJ.getInt("IABTCF_CmpSdkID", Integer.MIN_VALUE);
        int i2 = CJ.getInt("IABTCF_CmpSdkVersion", Integer.MIN_VALUE);
        if (i == Integer.MIN_VALUE && i2 == Integer.MIN_VALUE) {
            return -2;
        }
        return CJ.getInt("IABTCF_gdprApplies", -1);
    }

    public static String ac(Context context) {
        SharedPreferences CJ;
        return (context == null || (CJ = CJ(context)) == null) ? "" : CJ.getString(cJ, "");
    }

    private static SharedPreferences CJ(Context context) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context);
        } catch (Exception unused) {
            return null;
        }
    }

    public static ROR YD() {
        if (com.bytedance.sdk.openadsdk.core.HzH.Qhi() == null) {
            IllegalStateException illegalStateException = new IllegalStateException("context is null");
            Log.e("Pangle", "context is null", illegalStateException);
            ApmHelper.reportCustomError("context is null", "context is null", illegalStateException);
            return qMt;
        }
        return Qhi.Qhi;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public synchronized void cJ() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = !this.iMK;
        this.WAv.Qhi(this.iMK);
        this.Gm.Qhi(this.iMK);
        this.zc.Qhi(this.iMK);
        ac.Qhi(z);
        com.bytedance.sdk.openadsdk.core.hm.cJ().CJ(Ohm());
        this.iMK = true;
        new Object[]{"loadLocalData: finished, used", Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime), "ms"};
        if (z) {
            com.bytedance.sdk.openadsdk.core.iMK.cJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.7
                @Override // java.lang.Runnable
                public void run() {
                    if (pA.Qhi()) {
                        HzH.this.CJ(1);
                        HzH.this.eG();
                        return;
                    }
                    com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().cJ();
                }
            }, 1000L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String ac() {
        return this.zc.Qhi("aes_key", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int CJ() {
        return this.zc.Qhi("max_tpl_cnts", 100);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public JSONObject fl() {
        return (JSONObject) this.zc.Qhi("digest", null, Tgh.Qhi);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public long Tgh() {
        return this.zc.Qhi("data_time", 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void ROR() {
        this.zc.Qhi().Qhi("tt_sdk_settings").Qhi("ab_test_param").Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void Qhi(JSONObject jSONObject, Tgh.Qhi qhi) {
        if (jSONObject == null || !jSONObject.has("dyn_draw_engine_url")) {
            return;
        }
        iMK imk = this.zc;
        String str = Tgh;
        String Qhi2 = imk.Qhi("dyn_draw_engine_url", str);
        final String optString = jSONObject.optString("dyn_draw_engine_url", str);
        if (!TextUtils.isEmpty(Qhi2) && !TextUtils.isEmpty(optString) && !optString.equals(Qhi2)) {
            com.bytedance.sdk.openadsdk.core.iMK.cJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.8
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.equals(HzH.this.zc.Qhi("dyn_draw_engine_url", HzH.Tgh), optString)) {
                        com.bytedance.sdk.component.adexpress.Qhi.cJ.Tgh.cJ().ac();
                    }
                }
            }, 5000L);
        }
        qhi.Qhi("dyn_draw_engine_url", optString);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int Qhi(String str) {
        if (str == null) {
            return 0;
        }
        return com.bytedance.sdk.openadsdk.core.HzH.CJ().Eh(str).tP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void cJ(JSONObject jSONObject, Tgh.Qhi qhi) {
        if (jSONObject.has("is_gdpr_user")) {
            int i = -1;
            int optInt = jSONObject.optInt("is_gdpr_user", -1);
            if (optInt == -1 || optInt == 1 || optInt == 0) {
                i = optInt;
            }
            qhi.Qhi("isGdprUser", i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Sf() {
        return this.zc.Qhi("if_both_open", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean hm() {
        return this.zc.Qhi("support_tnc", 1) != 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String WAv() {
        return this.zc.Qhi("ab_test_version", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int Gm() {
        return this.zc.Qhi("load_callback_strategy", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int zc() {
        return this.zc.Qhi("splash_video_load_strategy", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean ABk() {
        return this.zc.Qhi("support_mem_dynamic", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int cJ(String str) {
        Integer num;
        Map map = (Map) this.zc.Qhi("perf_con_stats_rate", ac, this.CJ);
        if (map == null || (num = (Integer) map.get(str)) == null || num.intValue() < 0 || num.intValue() > 100) {
            return 100;
        }
        return num.intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int NFd(String str) {
        Integer num;
        Map map = (Map) this.zc.Qhi("perf_con_applog_rate", null, this.Dww);
        if (map == null || (num = (Integer) map.get(str)) == null || num.intValue() < 0 || num.intValue() > 100) {
            return 100;
        }
        return num.intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int TKG() {
        return this.zc.Qhi("perf_con_drawable_code", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public Set<String> iMK() {
        return mz();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int pA() {
        mz();
        return this.HzH;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int hpZ() {
        mz();
        return this.hpZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean HzH() {
        return this.zc.Qhi("allow_blind_mode_request_ad", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean kYc() {
        return this.zc.Qhi("support_gzip", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean tP() {
        return this.zc.Qhi("ad_revenue_enable", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Ura() {
        return this.zc.Qhi("bus_con_adshow_check_enable", true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public long SL() {
        long Qhi2 = this.zc.Qhi("bus_con_tnc_interval", TTAdConstant.AD_MAX_EVENT_TIME);
        if (Qhi2 < 10000) {
            return 10000L;
        }
        return Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int Oy() {
        int Qhi2 = this.zc.Qhi("bus_con_token_thread_count", 4);
        if (Qhi2 <= 0 || Qhi2 > 30) {
            return 4;
        }
        return Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String DaO() {
        return this.zc.Qhi("bus_con_express_host", "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-sg/");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int rB() {
        return this.zc.Qhi("bus_con_behavior_count", VastError.ERROR_CODE_GENERAL_WRAPPER);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String bM() {
        return this.zc.Qhi("bus_con_check_clz", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean pF() {
        return this.zc.Qhi("bus_con_url_check", 1) != 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean vml() {
        return this.zc.Qhi("bus_con_collect_arbitrage", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int IC() {
        return this.zc.Qhi("bus_con_arbitrage_loading_timeout", 10000);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public float cJP() {
        return this.zc.Qhi("bus_con_arbitrage_loading_alpha", 1.0f);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int MQ() {
        return this.zc.Qhi("loadedCallbackOpportunity", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String qMt() {
        return this.zc.Qhi("ab_test_param", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public WAv EBS() {
        WAv wAv = this.MQ;
        if (wAv != null) {
            return wAv;
        }
        WAv wAv2 = (WAv) this.WAv.Qhi("mediation_init_conf", WAv.Qhi, new Tgh.cJ<WAv>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.9
            @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
            /* renamed from: Qhi */
            public WAv cJ(String str) {
                return new WAv(str);
            }
        });
        this.MQ = wAv2;
        return wAv2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean bxS() {
        return this.zc.Qhi("landingpage_new_style", -1) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public long Dww() {
        return this.zc.Qhi("duration", 10000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int CQU() {
        return this.zc.Qhi(AppLovinMediationProvider.MAX, 50);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public Sf pM() {
        return (Sf) this.zc.Qhi("insert_js_config", Sf.Qhi, new Tgh.cJ<Sf>() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.10
            @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.cJ
            /* renamed from: Qhi */
            public Sf cJ(String str) {
                return new Sf(str);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String Eh() {
        return this.zc.Qhi("playableLoadH5Url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int aP() {
        int Qhi2 = this.zc.Qhi("fetch_tpl_timeout_ctrl", 3000);
        if (Qhi2 <= 0) {
            return 3000;
        }
        return Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int NFd() {
        int Qhi2 = this.zc.Qhi("fetch_tpl_second", 0);
        if (Qhi2 <= 0) {
            return 0;
        }
        return Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void sDy() {
        String LcF = LcF();
        if (TextUtils.isEmpty(LcF)) {
            return;
        }
        if (LcF.equals("zh-Hant")) {
            com.bytedance.sdk.component.utils.WAv.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), "zh", "tw");
        } else {
            com.bytedance.sdk.component.utils.WAv.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), LcF, null);
        }
        try {
            TTAdDislikeToast.Qhi();
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.SdkSettings", th.getMessage());
        }
    }

    private String LcF() {
        return this.zc.Qhi("force_language", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int lB() {
        return this.zc.Qhi("disable_rotate_banner_on_dislike", Integer.MAX_VALUE);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean ac(String str) {
        return Eh(str).ac == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean CJ(String str) {
        return Eh(str).NFd;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean fl(String str) {
        int i = Eh(str).fl;
        if (i != 1) {
            return i == 2 && com.bytedance.sdk.component.utils.hpZ.ac(com.bytedance.sdk.openadsdk.core.HzH.Qhi()) != 0;
        }
        return com.bytedance.sdk.component.utils.hpZ.CJ(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Tgh(String str) {
        return Eh(str).ROR == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int ROR(String str) {
        return Eh(str).kYc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Sf(String str) {
        return str == null || Eh(str).iMK == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int hm(String str) {
        if (str == null) {
            return 1500;
        }
        return Eh(str).hpZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int WAv(String str) {
        return Eh(str).Gm;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int Gm(String str) {
        return Eh(str).zc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean zc(String str) {
        try {
            return Eh(str).bxS != null;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean lG() {
        return this.zc.cJ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int ABk(String str) {
        return Eh(String.valueOf(str)).Sf;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean iMK(String str) {
        return ABk(str) != 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int pA(String str) {
        return Eh(str).WAv;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int Qhi(String str, boolean z) {
        if (str == null) {
            return ac(z);
        }
        cJ Eh = Eh(str);
        return Eh.CQU != -1 ? Eh.CQU : ac(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean hpZ(String str) {
        return Eh(str).EBS == 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean HzH(String str) {
        return str == null || DeviceUtils.Sf(com.bytedance.sdk.openadsdk.core.HzH.Qhi()) == 0 || Eh(str).ABk == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String Jma() {
        return this.zc.Qhi("ads_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String js() {
        return this.zc.Qhi("app_log_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String zn() {
        return this.Gm.Qhi("apm_url", "pangolin16.sgsnssdk.com");
    }

    private int Ohm() {
        return this.zc.Qhi("coppa", -99);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String es() {
        return this.zc.Qhi("policy_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int yN() {
        return this.zc.Qhi("ivrv_downward", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String FQ() {
        return this.zc.Qhi("dyn_draw_engine_url", Tgh);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String PAe() {
        return this.zc.Qhi("dc", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int ip() {
        return this.zc.Qhi("isGdprUser", -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int Qhi(int i) {
        return Eh(String.valueOf(i)).Jma;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int cJ(int i) {
        return Eh(String.valueOf(i)).cJ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int ac(int i) {
        return Eh(String.valueOf(i)).hm;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int xyz() {
        return this.zc.Qhi("vbtt", 5);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public JSONObject kYc(String str) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject(this.zc.Qhi("core_settings", ""));
            try {
                jSONObject2.put("ad_slot_setting", Eh(str).dIT);
                return jSONObject2;
            } catch (JSONException e2) {
                e = e2;
                jSONObject = jSONObject2;
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.SdkSettings", "getCoreSettingJsonObj", e.getMessage());
                return jSONObject;
            }
        } catch (JSONException e3) {
            e = e3;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int tP(String str) {
        return Eh(str).MQ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean MQ(String str) {
        return Eh(str).qMt;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int qMt(String str) {
        return Eh(str).pM;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int EBS(String str) {
        return Eh(str).Eh;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int bxS(String str) {
        return Eh(str).aP;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Dww(String str) {
        return Eh(str).lB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int CQU(String str) {
        return Eh(str).lG;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean pM(String str) {
        return com.bytedance.sdk.openadsdk.core.HzH.CJ().Eh(str).pA == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public cJ Eh(String str) {
        return ac.Qhi(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean jPH() {
        int Qhi2 = this.zc.Qhi("privacy_ad_enable", Integer.MAX_VALUE);
        if (Qhi2 == 1) {
            return true;
        }
        if (Qhi2 == 0) {
            return false;
        }
        int hpZ = js.hpZ();
        return hpZ == 1 || hpZ == 2 || hpZ == 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int MND() {
        int Qhi2 = this.zc.Qhi("privacy_personalized_ad", Integer.MAX_VALUE);
        if (Qhi2 != Integer.MAX_VALUE) {
            return Qhi2;
        }
        int hpZ = js.hpZ();
        if (hpZ == 1 || hpZ == 2) {
            return 2;
        }
        return hpZ != 3 ? 0 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean VnT() {
        return this.zc.Qhi("perf_con_apm_native", Integer.MAX_VALUE) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Qe() {
        boolean z = this.zc.Qhi("bus_con_sec_type", Integer.MAX_VALUE) != 0;
        new Object[]{"secSdk type: ", Boolean.valueOf(z)};
        return z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean YB() {
        return this.zc.Qhi("bus_con_dislike_report_raw", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean cjC() {
        return this.zc.Qhi("privacy_debug_unlock", 1) != 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean aP(String str) {
        Set set = (Set) this.zc.Qhi("privacy_fields_allowed", Collections.emptySet(), Tgh.cJ);
        if (set.isEmpty()) {
            int hpZ = js.hpZ();
            if (hpZ != 1) {
                if (hpZ != 2 && hpZ != 3) {
                    return false;
                }
                if (!"mcc".equals(str) && !"mnc".equals(str)) {
                    return false;
                }
            }
            return true;
        }
        return set.contains(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Dq() {
        return this.iMK;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Hf() {
        return this.zc.Qhi("global_rate", 1.0f) == 1.0f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean NBs() {
        return this.zc.Qhi("read_video_from_cache", 1) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int dI() {
        int Qhi2 = this.zc.Qhi("perf_con_webview_cache_count", 0);
        if (Qhi2 < 0) {
            return 0;
        }
        return Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int dVA() {
        int Qhi2 = this.zc.Qhi("perf_con_webview_cache_count_v3", 0);
        if (Qhi2 < 0) {
            return 0;
        }
        return Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int zjb() {
        int Qhi2 = this.zc.Qhi("perf_con_webview_preload_cache", 0);
        if (Qhi2 < 0) {
            return 0;
        }
        if (Qhi2 > 5) {
            return 5;
        }
        int dI = dI();
        return Qhi2 > dI ? dI : Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int ots() {
        int Qhi2 = this.zc.Qhi("perf_con_webview_preload_cache_v3", 0);
        if (Qhi2 < 0) {
            return 0;
        }
        if (Qhi2 > 5) {
            return 5;
        }
        int dVA = dVA();
        return Qhi2 > dVA ? dVA : Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String[] HLI() {
        Set<String> set;
        try {
            set = this.ROR;
        } catch (Throwable unused) {
        }
        if (set == null || set.size() == 0) {
            JSONArray jSONArray = new JSONArray(this.zc.Qhi("gecko_hosts", (String) null));
            if (jSONArray.length() != 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.ROR.add(jSONArray.getString(i));
                }
            }
            Set<String> Qhi2 = iMK.Qhi(this.ROR);
            this.ROR = Qhi2;
            if (Qhi2 != null) {
                if (Qhi2.size() == 0) {
                }
            }
            return null;
        }
        return (String[]) this.ROR.toArray(new String[0]);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int oU() {
        return this.zc.Qhi("blank_detect_rate", 30);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public JSONObject pv() {
        return (JSONObject) this.zc.Qhi("video_cache_config", null, Tgh.Qhi);
    }

    private long Ki() {
        long Qhi2 = this.zc.Qhi("req_inter_min", TTAdConstant.AD_MAX_EVENT_TIME);
        return (Qhi2 < 0 || Qhi2 > Constants.MILLIS_IN_DAY) ? TTAdConstant.AD_MAX_EVENT_TIME : Qhi2;
    }

    private long yy() {
        return this.zc.Qhi("last_req_time", 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void Qhi(long j) {
        this.zc.Qhi().Qhi("last_req_time", j).Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void ReL() {
        this.pA = true;
    }

    void eG() {
        if (pA.Qhi()) {
            com.bytedance.sdk.openadsdk.core.iMK.cJ().removeCallbacks(this.bxS);
            com.bytedance.sdk.openadsdk.core.iMK.cJ().postDelayed(this.bxS, Ki());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void CJ(int i) {
        Qhi(i, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void Qhi(int i, boolean z) {
        if (!com.bytedance.sdk.openadsdk.core.iMK.fl() && i != 1 && i != 2) {
            if (z) {
                this.kYc = true;
                return;
            }
            return;
        }
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.hm.cJ().CJ())) {
                return;
            }
            if (this.kYc) {
                this.kYc = false;
                if (!z) {
                    z = true;
                }
            }
            long yy = yy();
            long currentTimeMillis = System.currentTimeMillis();
            long Ki = Ki();
            long j = currentTimeMillis - yy;
            if (!z && j < Ki) {
                com.bytedance.sdk.openadsdk.core.Tgh.Qhi.Qhi();
            } else if (!pA.Qhi()) {
                cJ(i, z);
            } else if (this.ABk.compareAndSet(false, true)) {
                lG.cJ(new pA(this, this.zc, this.WAv, this.Gm));
                com.bytedance.sdk.openadsdk.core.iMK.cJ().removeCallbacks(this.bxS);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.pA.Qhi
    public void Qhi(boolean z) {
        this.ABk.set(false);
        eG();
        if (z) {
            SNp();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public void Qhi(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("_tryFetRemoDat");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this.EBS, intentFilter, 4);
            } else {
                context.registerReceiver(this.EBS, intentFilter);
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.SdkSettings", "", e2);
        }
        if (Dq()) {
            CJ(1);
            eG();
        }
    }

    /* compiled from: TTSdkSettings.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.settings.HzH$11  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass11 extends BroadcastReceiver {
        private final Runnable cJ = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.11.1
            @Override // java.lang.Runnable
            public void run() {
                lG.cJ(new com.bytedance.sdk.component.Sf.hm("LoadLocalData") { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.11.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            HzH.this.cJ();
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        };

        AnonymousClass11() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            if (intent == null) {
                return;
            }
            lG.cJ(new com.bytedance.sdk.component.Sf.hm("setting_receiver") { // from class: com.bytedance.sdk.openadsdk.core.settings.HzH.11.2
                @Override // java.lang.Runnable
                public void run() {
                    String action = intent.getAction();
                    if ("_tryFetRemoDat".equals(action)) {
                        HzH.this.Qhi(intent.getIntExtra("_source", 0), intent.getBooleanExtra("_force", false));
                    } else if ("_dataChanged".equals(action)) {
                        com.bytedance.sdk.component.utils.Sf.Qhi().removeCallbacks(AnonymousClass11.this.cJ);
                        com.bytedance.sdk.component.utils.Sf.Qhi().postDelayed(AnonymousClass11.this.cJ, 10000L);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean EGK() {
        if (tP.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi())) {
            return this.zc.Qhi("support_rtl", false);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int gga() {
        return this.zc.Qhi("bus_con_send_log_type", 1);
    }

    private Set<String> mz() {
        return (Set) this.zc.Qhi("perf_con_applog_send", this.CQU, this.pM);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int Ri() {
        return this.zc.Qhi("perf_con_thread_stack_size", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean dIT() {
        int Qhi2 = this.Gm.Qhi("perf_con_apm", 100);
        if (Qhi2 == 0) {
            return false;
        }
        return Qhi2 < 0 || Qhi2 >= 100 || Qhi2 > ((int) (Math.random() * 100.0d));
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public long PER() {
        return this.zc.Qhi("perf_con_adlog_expire_time", 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean mZ() {
        return this.zc.Qhi("perf_con_use_new_thread_pool", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean VV() {
        return this.zc.Qhi("perf_con_is_new_net_thread", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Qhi(PangleEncryptConstant.CryptDataScene cryptDataScene) {
        if (cryptDataScene == PangleEncryptConstant.CryptDataScene.GET_ADS || cryptDataScene == PangleEncryptConstant.CryptDataScene.BIDDING_TOKEN) {
            return this.zc.Qhi("perf_con_crypt_V4_get_ad", false);
        }
        if (cryptDataScene == PangleEncryptConstant.CryptDataScene.APP_LOG) {
            return this.zc.Qhi("perf_con_crypt_V4_applog", false);
        }
        return this.zc.Qhi("perf_con_crypt_V4", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public JSONObject Wrw() {
        return (JSONObject) this.zc.Qhi("perf_con_thread_pool_config", new JSONObject(), this.Eh);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Gy() {
        return this.zc.Qhi("perf_con_adlog_turn_off_retry_ad", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean et() {
        return this.zc.Qhi("perf_con_adlog_turn_off_retry_stats", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public String SO() {
        return this.zc.Qhi("dual_event_url", (String) null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int XH() {
        int Qhi2 = this.zc.Qhi("bus_con_auto_click_delay", 3000);
        if (Qhi2 <= 0) {
            return 3000;
        }
        return Qhi2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public com.bytedance.sdk.openadsdk.cJ.Qhi.pA HUk() {
        return (com.bytedance.sdk.openadsdk.cJ.Qhi.pA) this.zc.Qhi("perf_con_track_url_strategy", com.bytedance.sdk.openadsdk.cJ.Qhi.pA.Qhi, this.fl);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public int wp() {
        return this.zc.Qhi("perf_con_close_button_delay_check_time", -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public Set<String> HWc() {
        return (Set) this.zc.Qhi("perf_con_drop2rt_skip_label_list", Collections.emptySet(), Tgh.cJ);
    }

    public static boolean Ug() {
        return hm;
    }

    public static void Qhi(hpZ.Qhi qhi) {
        ConcurrentLinkedQueue<hpZ.Qhi> concurrentLinkedQueue = tP;
        if (concurrentLinkedQueue.contains(qhi)) {
            return;
        }
        concurrentLinkedQueue.add(qhi);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean gT() {
        return this.zc.Qhi("bus_con_rewardedfull_link", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ROR
    public boolean Px() {
        return this.zc.Qhi("bus_con_video_keep_screen_on", 1) == 1;
    }
}
