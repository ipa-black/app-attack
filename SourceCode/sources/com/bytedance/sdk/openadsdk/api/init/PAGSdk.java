package com.bytedance.sdk.openadsdk.api.init;

import android.app.Application;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.WebView;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.adsdk.ugeno.cJ.fl;
import com.bytedance.sdk.component.Sf.ROR;
import com.bytedance.sdk.component.Sf.WAv;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.cJ;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.utils.Sf;
import com.bytedance.sdk.component.widget.PangleWebView;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.ac.Qhi;
import com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.factory.SDKTypeConfig;
import com.bytedance.sdk.openadsdk.common.ac;
import com.bytedance.sdk.openadsdk.core.ABk;
import com.bytedance.sdk.openadsdk.core.Eh;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.nativeexpress.Gm;
import com.bytedance.sdk.openadsdk.core.pA;
import com.bytedance.sdk.openadsdk.tP.Qhi;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.hpZ;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.kYc;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class PAGSdk {
    public static final int INIT_LOCAL_FAIL_CODE = 4000;
    private static long Qhi;

    /* loaded from: classes2.dex */
    public interface PAGInitCallback {
        void fail(int i, String str);

        void success();
    }

    static {
        try {
            cJ.Qhi(new cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.1
                @Override // com.bytedance.sdk.component.cJ.Qhi
                public ExecutorService getExecutorService() {
                    return lG.CJ();
                }
            });
            lG.Qhi(new hm("tt_init_memory_data") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.2
                @Override // java.lang.Runnable
                public void run() {
                    PAGInitHelper.initAPM();
                    PAGInitHelper.initMemoryData();
                }
            });
            iMK.Qhi(System.currentTimeMillis());
            iMK.cJ();
            SSWebView.setWebViewProvider(new SSWebView.ac() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.3
                @Override // com.bytedance.sdk.component.widget.SSWebView.ac
                public WebView createWebView(Context context, AttributeSet attributeSet, int i) {
                    if (!(context instanceof MutableContextWrapper)) {
                        context = context.getApplicationContext();
                    }
                    try {
                        return i == 0 ? new PangleWebView(context, attributeSet) : new PangleWebView(context, attributeSet, i);
                    } catch (Exception unused) {
                        return i == 0 ? new PangleWebView(context, attributeSet) : new PangleWebView(context, attributeSet, i);
                    }
                }
            });
        } catch (Throwable th) {
            Log.i("TTAD.PAGSdk", th.getMessage());
        }
        Qhi = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ(final Context context, final InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        Context applicationContext;
        Qhi = SystemClock.elapsedRealtime();
        HzH.cJ(context);
        if (pAGInitCallback != null) {
            synchronized (PAGInitHelper.CALLBACK_LIST) {
                if (!PAGInitHelper.CALLBACK_LIST.contains(pAGInitCallback)) {
                    PAGInitHelper.CALLBACK_LIST.add(pAGInitCallback);
                    if (iMK.CJ() == 3) {
                        return;
                    }
                }
            }
        }
        if (ac.Qhi()) {
            cJ(-1, "DisableSDK is called, interrupt initialization");
        } else if (isInitSuccess()) {
            CJ();
        } else {
            iMK.Qhi(3);
            if (context == null) {
                cJ(4000, "Context is null, please check. ");
                return;
            }
            if (!(context instanceof Application) && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            if (initConfig == null) {
                cJ(4000, "PAGConfig is null, please check.");
                return;
            }
            CJ(context, initConfig);
            ApmHelper.initApm(context, initConfig);
            try {
                com.bytedance.sdk.openadsdk.core.hm.Qhi(new ABk() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.4
                    public void success() {
                        PAGSdk.CJ();
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.ABk
                    public void fail(int i, String str) {
                        PAGSdk.cJ(i, str);
                    }
                });
                try {
                    MQ.Qhi(HzH.Qhi(), "tt_ad_logo_txt");
                    if (MQ.CJ(context, "tt_ad_logo") == 0) {
                        Qhi(initConfig, pAGInitCallback);
                    } else if (isInitSuccess()) {
                        if (pAGInitCallback != null) {
                            CJ();
                        }
                    } else {
                        final Qhi qhi = new Qhi();
                        SDKTypeConfig.setSdkTypeFactory(new ISDKTypeFactory() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.5
                            @Override // com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory
                            public IADTypeLoaderFactory createADTypeLoaderFactory(String str) {
                                return Qhi.this;
                            }
                        });
                        if (!initConfig.isSupportMultiProcess()) {
                            cJ(context, initConfig);
                            return;
                        }
                        com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().Qhi(new com.bytedance.sdk.openadsdk.multipro.aidl.cJ() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.6
                            @Override // com.bytedance.sdk.openadsdk.multipro.aidl.cJ
                            public void onServiceConnected() {
                                iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.6.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        PAGSdk.cJ(context, initConfig);
                                    }
                                });
                            }
                        });
                        com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().ac();
                    }
                } catch (Throwable unused) {
                    Qhi(initConfig, pAGInitCallback);
                }
            } catch (Throwable unused2) {
                cJ(4000, "Internal Error, setting exception. ");
            }
        }
    }

    private static void Qhi(InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        iMK.Qhi(2);
        if (pAGInitCallback != null) {
            if (initConfig instanceof PAGConfig) {
                cJ(4000, "resources not found, if you use aab please call PAGConfig.setPackageName");
            } else {
                cJ(4000, "resources not found, if you use aab please call TTAdConfig.setPackageName");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ(Context context, InitConfig initConfig) {
        long elapsedRealtime;
        try {
        } catch (Throwable th) {
            th.getMessage();
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.PAGSdk", th.getMessage());
            cJ(4000, th.getMessage());
            elapsedRealtime = SystemClock.elapsedRealtime() - Qhi;
        }
        if (isInitSuccess()) {
            CJ();
            return;
        }
        fl(context, initConfig);
        com.bytedance.sdk.openadsdk.core.settings.HzH.YD().EBS();
        elapsedRealtime = SystemClock.elapsedRealtime() - Qhi;
        CJ();
        Tgh(context, initConfig);
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - Qhi;
        Qhi(context, isInitSuccess(), initConfig, elapsedRealtime2, elapsedRealtime);
        new Object[]{"init Pangle exec init sdk sdkInitTime=", Long.valueOf(elapsedRealtime), " duration=", Long.valueOf(elapsedRealtime2)};
    }

    private static void ac(Context context, InitConfig initConfig) {
        iMK.Qhi = true;
        Eh.Qhi().Qhi(initConfig.getAppId()).cJ(initConfig.getCoppa()).ac(initConfig.getGdpr()).CJ(initConfig.getCcpa()).Tgh(initConfig.getAppIconId()).Qhi(initConfig.getTitleBarTheme());
        com.bytedance.sdk.openadsdk.core.hm.bxS();
        if (initConfig instanceof PAGConfig) {
            Eh.Qhi().fl(((PAGConfig) initConfig).getDebugLog() ? 1 : 0);
        }
        try {
            if (cJ(initConfig)) {
                Eh.Qhi().Qhi();
                hpZ.Qhi();
            }
        } catch (Throwable unused) {
        }
        Sf.Qhi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean cJ(InitConfig initConfig) {
        return ((PAGConfig) initConfig).getDebugLog();
    }

    private static void CJ(Context context, InitConfig initConfig) {
        if (!TextUtils.isEmpty(initConfig.getPackageName())) {
            MQ.Qhi(initConfig.getPackageName());
            fl.Qhi(initConfig.getPackageName());
        } else {
            MQ.Qhi((String) null);
            fl.Qhi((String) null);
        }
        HzH.cJ(context);
        if (initConfig.isSupportMultiProcess()) {
            com.bytedance.sdk.openadsdk.multipro.cJ.Qhi();
        } else {
            com.bytedance.sdk.openadsdk.multipro.cJ.cJ();
        }
        Gm.Qhi();
        com.bytedance.sdk.openadsdk.core.ugen.cJ.Qhi(context);
    }

    private static void fl(Context context, InitConfig initConfig) {
        if (com.bytedance.sdk.openadsdk.core.settings.ABk.Qhi()) {
            ROR.ac(-1);
            ROR.Qhi(new com.bytedance.sdk.component.Sf.Gm() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.7
                @Override // com.bytedance.sdk.component.Sf.Gm
                public WAv createThreadFactory(int i, String str) {
                    return new WAv(i, str) { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.7.1
                        @Override // com.bytedance.sdk.component.Sf.WAv, java.util.concurrent.ThreadFactory
                        public Thread newThread(Runnable runnable) {
                            int Ri = com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Ri();
                            if (Ri >= -524288 && Ri < 0) {
                                Thread thread = new Thread(this.Qhi, runnable, this.cJ, Ri);
                                if (thread.isDaemon()) {
                                    thread.setDaemon(false);
                                }
                                if (this.ac > 10 || this.ac <= 0) {
                                    this.ac = 5;
                                }
                                thread.setPriority(this.ac);
                                return thread;
                            }
                            return super.newThread(runnable);
                        }
                    };
                }
            });
            com.bytedance.sdk.openadsdk.multipro.ac.Qhi(context);
            com.bytedance.sdk.component.ROR.ac.Qhi.Qhi(new com.bytedance.sdk.component.ROR.ac.ac() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.8
                @Override // com.bytedance.sdk.component.ROR.ac.ac
                public ExecutorService getThreadPool() {
                    return lG.CJ();
                }
            });
            com.bytedance.sdk.openadsdk.fl.cJ.ac();
            iMK.cJ.set(true);
            try {
                com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().Qhi(new com.bytedance.sdk.openadsdk.ROR.Qhi());
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.PAGSdk", e2.getMessage());
            }
            ac(initConfig);
            ac(context, initConfig);
            com.bykv.vk.openvk.component.video.api.ac.Qhi(context, null);
            com.bykv.vk.openvk.component.video.api.ac.Qhi(2);
            com.bykv.vk.openvk.component.video.api.ac.Qhi(initConfig.isSupportMultiProcess());
            com.bykv.vk.openvk.component.video.api.ac.Qhi(com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().fl());
        }
    }

    private static void Tgh(final Context context, final InitConfig initConfig) {
        SystemClock.elapsedRealtime();
        lG.Qhi(new hm("init_sync") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.9
            @Override // java.lang.Runnable
            public void run() {
                iMK.Qhi(initConfig.getData());
                com.bytedance.sdk.openadsdk.HzH.Qhi.Qhi(context, initConfig.getAppId());
                com.bytedance.sdk.openadsdk.HzH.Qhi.Qhi();
                com.bytedance.sdk.openadsdk.ABk.ac.Qhi();
                com.bytedance.sdk.openadsdk.ABk.ac.cJ();
                new com.bytedance.sdk.openadsdk.utils.iMK();
                com.bytedance.sdk.component.adexpress.Qhi.cJ.ROR.Qhi(kYc.Qhi() * 10);
                com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(context, initConfig.isSupportMultiProcess());
                pA.Qhi().cJ();
                com.bytedance.sdk.openadsdk.core.fl.ac.Qhi();
                com.bytedance.sdk.openadsdk.tP.Qhi.Qhi(new Qhi.InterfaceC0241Qhi() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.9.1
                    public void onGdprChanged(int i) {
                        PAGConfig.setGDPRConsent(i);
                    }
                });
                com.bytedance.sdk.openadsdk.core.settings.HzH.Qhi = com.bytedance.sdk.openadsdk.core.settings.HzH.ac(context);
                com.bytedance.sdk.openadsdk.MQ.Qhi.Sf.cJ();
                com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi(HzH.CJ().pv());
                com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi(CacheDirFactory.getICacheDir(0));
                com.bytedance.sdk.openadsdk.core.settings.ROR CJ = HzH.CJ();
                if (!CJ.Dq()) {
                    synchronized (CJ) {
                        if (!CJ.Dq()) {
                            CJ.cJ();
                            CJ.sDy();
                        }
                    }
                }
                DeviceUtils.WAv();
                PAGInitHelper.maybeAsyncInitTask(context);
                PAGSdk.getBiddingToken();
                ROR.Qhi(true);
                ROR.Qhi(new com.bytedance.sdk.openadsdk.Gm.cJ.Qhi());
                DeviceUtils.Qhi(context);
                DeviceUtils.WAv(context);
                DeviceUtils.Gm(context);
                com.bytedance.sdk.openadsdk.Gm.Qhi.Qhi();
                com.bytedance.sdk.openadsdk.core.settings.fl.Qhi();
                com.bytedance.sdk.openadsdk.Gm.ac.CJ();
                js.ABk(context);
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi();
                PAGSdk.ac();
                com.bytedance.sdk.openadsdk.core.fl.ac.cJ();
                com.bytedance.sdk.component.Sf.ac.ac.Qhi(iMK.cJ());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ac() {
        ShortcutManager shortcutManager;
        try {
            Context Qhi2 = HzH.Qhi();
            if (Qhi2 == null || (shortcutManager = (ShortcutManager) Qhi2.getSystemService(ShortcutManager.class)) == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.hm.cJ().Qhi(shortcutManager.isRequestPinShortcutSupported());
        } catch (Throwable unused) {
        }
    }

    private static void ac(InitConfig initConfig) {
        if (!TextUtils.isEmpty(initConfig.getData())) {
            com.bytedance.sdk.openadsdk.core.hm.cJ().ac(initConfig.getData());
        }
        com.bytedance.sdk.openadsdk.core.hm.cJ().ac(cJ(initConfig));
    }

    private static void Qhi(final Context context, final boolean z, final InitConfig initConfig, final long j, final long j2) {
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi();
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("pangle_sdk_init", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.10
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    boolean ac = com.bytedance.sdk.openadsdk.core.hm.cJ().ac();
                    jSONObject.put("duration", j);
                    jSONObject.put("sdk_init_time", j2);
                    jSONObject.put("is_async", true);
                    jSONObject.put("is_multi_process", initConfig.isSupportMultiProcess());
                    jSONObject.put("is_debug", PAGSdk.cJ(initConfig));
                    jSONObject.put("is_use_texture_view", initConfig.isUseTextureView());
                    jSONObject.put("is_activate_init", ac);
                    jSONObject.put("minSdkVersion", js.Gm(context));
                    jSONObject.put("targetSdkVersion", js.WAv(context));
                    jSONObject.put("apm_is_init", ApmHelper.isIsInit());
                    jSONObject.put("is_success", z);
                    com.bytedance.sdk.openadsdk.core.hm.cJ().cJ(false);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.PAGSdk", "run: ", e2);
                }
                return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("pangle_sdk_init").cJ(jSONObject.toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void CJ() {
        iMK.Qhi(1);
        try {
            synchronized (PAGInitHelper.CALLBACK_LIST) {
                Iterator<PAGInitCallback> it = PAGInitHelper.CALLBACK_LIST.iterator();
                while (it.hasNext()) {
                    PAGInitCallback next = it.next();
                    if (next != null) {
                        it.remove();
                        next.success();
                    }
                }
            }
            com.bytedance.sdk.openadsdk.ABk.ac.cJ(new com.bytedance.sdk.openadsdk.ABk.fl() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.11
                @Override // com.bytedance.sdk.openadsdk.ABk.fl
                public com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel() {
                    com.bytedance.sdk.openadsdk.ABk.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.ABk.cJ.Qhi();
                    qhi.cJ(Constants.INIT);
                    return qhi;
                }
            });
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.cJ(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ(int i, String str) {
        iMK.Qhi(2);
        try {
            synchronized (PAGInitHelper.CALLBACK_LIST) {
                Iterator<PAGInitCallback> it = PAGInitHelper.CALLBACK_LIST.iterator();
                while (it.hasNext()) {
                    PAGInitCallback next = it.next();
                    if (next != null) {
                        it.remove();
                        next.fail(i, str);
                    }
                }
                com.bytedance.sdk.openadsdk.ABk.ac.ac(new com.bytedance.sdk.openadsdk.ABk.fl() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.12
                    @Override // com.bytedance.sdk.openadsdk.ABk.fl
                    public com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel() {
                        com.bytedance.sdk.openadsdk.ABk.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.ABk.cJ.Qhi();
                        qhi.cJ(Constants.INIT);
                        return qhi;
                    }
                });
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.cJ(th.getMessage());
        }
    }

    public static void init(final Context context, final PAGConfig pAGConfig, final PAGInitCallback pAGInitCallback) {
        iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.13
            @Override // java.lang.Runnable
            public void run() {
                PAGSdk.cJ(context, pAGConfig, pAGInitCallback);
            }
        });
        iMK.ROR();
    }

    public static boolean isInitSuccess() {
        return iMK.CJ() == 1;
    }

    public static String getSDKVersion() {
        if (Eh.Qhi() != null) {
            return Eh.Qhi().CJ();
        }
        return "";
    }

    public static String getBiddingToken(Context context, String str) {
        if (ac.Qhi()) {
            return null;
        }
        HzH.cJ(context);
        return getBiddingToken(str);
    }

    public static void getBiddingToken(final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (ac.Qhi()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            lG.fl(new hm("getBiddingToken") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.14
                @Override // java.lang.Runnable
                public void run() {
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken());
                }
            });
        }
    }

    public static void getBiddingToken(final String str, final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (ac.Qhi()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            lG.fl(new hm("getBiddingToken") { // from class: com.bytedance.sdk.openadsdk.api.init.PAGSdk.15
                @Override // java.lang.Runnable
                public void run() {
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken(str));
                }
            });
        }
    }

    public static String getBiddingToken(String str) {
        if (ac.Qhi()) {
            return null;
        }
        return (HzH.Qhi() == null || Eh.Qhi() == null) ? "" : Eh.Qhi().ac(str);
    }

    public static String getBiddingToken(Context context) {
        if (ac.Qhi()) {
            return null;
        }
        HzH.cJ(context);
        return getBiddingToken();
    }

    public static String getBiddingToken() {
        if (ac.Qhi()) {
            return null;
        }
        return (HzH.Qhi() == null || Eh.Qhi() == null) ? "" : Eh.Qhi().fl();
    }

    public static boolean onlyVerityPlayable(String str, int i, String str2, String str3, String str4) {
        if (Eh.Qhi() != null) {
            return Eh.Qhi().Qhi(str, i, str2, str3, str4);
        }
        return false;
    }

    public static String getApplicationName(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static void closeMultiWebViewFileLock() {
        com.bytedance.sdk.openadsdk.multipro.ac.Qhi();
    }

    public static void addPAGInitCallback(PAGInitCallback pAGInitCallback) {
        if (pAGInitCallback != null && iMK.CJ() == 0) {
            PAGInitHelper.CALLBACK_LIST.add(pAGInitCallback);
        }
    }

    public static void setAabPackageName(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        MQ.Qhi(str);
        fl.Qhi(str);
    }

    public static void setAdRevenue(JSONObject jSONObject) {
        if (jSONObject != null && HzH.CJ().tP() && isInitSuccess()) {
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi(jSONObject);
        }
    }

    private static void setSdkDisable(boolean z) {
        ac.Qhi(z);
    }
}
