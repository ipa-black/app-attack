package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.C1356m;
import com.ironsource.mediationsdk.H;
import com.ironsource.mediationsdk.M;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.logger.LogListener;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener;
import com.ironsource.mediationsdk.sdk.InitializationListener;
import com.ironsource.mediationsdk.sdk.InterstitialListener;
import com.ironsource.mediationsdk.sdk.OfferwallListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoManualListener;
import com.ironsource.mediationsdk.sdk.SegmentListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class IronSource {
    public static final String DataSource_MOPUB = "MoPub";

    /* loaded from: classes3.dex */
    public enum AD_UNIT {
        REWARDED_VIDEO("rewardedVideo"),
        INTERSTITIAL("interstitial"),
        OFFERWALL("offerwall"),
        BANNER("banner");
        

        /* renamed from: a  reason: collision with root package name */
        private String f10701a;

        AD_UNIT(String str) {
            this.f10701a = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f10701a;
        }
    }

    public static void addImpressionDataListener(ImpressionDataListener impressionDataListener) {
        H a2 = H.a();
        if (com.ironsource.mediationsdk.c.a.a(impressionDataListener, "addImpressionDataListener - listener is null")) {
            com.ironsource.mediationsdk.utils.k.a().a(impressionDataListener);
            if (a2.z != null) {
                a2.z.a(impressionDataListener);
            }
            if (a2.A != null) {
                a2.A.a(impressionDataListener);
            }
            if (a2.C != null) {
                a2.C.a(impressionDataListener);
            }
            if (a2.D != null) {
                a2.D.a(impressionDataListener);
            }
            if (a2.B != null) {
                a2.B.a(impressionDataListener);
            }
            IronLog.API.info("add impression data listener to " + impressionDataListener.getClass().getSimpleName());
        }
    }

    public static void clearRewardedVideoServerParameters() {
        H.a().n = null;
    }

    public static IronSourceBannerLayout createBanner(Activity activity, ISBannerSize iSBannerSize) {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "createBanner()", 1);
        if (activity == null) {
            a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "createBanner() : Activity cannot be null", 3);
            return null;
        }
        ContextProvider.getInstance().updateActivity(activity);
        return new IronSourceBannerLayout(activity, iSBannerSize);
    }

    public static void destroyBanner(final IronSourceBannerLayout ironSourceBannerLayout) {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "destroyBanner()", 1);
        try {
            if (!a2.K || a2.B == null) {
                if (a2.f10674e != null) {
                    a2.f10674e.a(ironSourceBannerLayout);
                    return;
                } else if (a2.N != null) {
                    a2.N.a(ironSourceBannerLayout);
                    return;
                } else {
                    return;
                }
            }
            final P p = a2.B;
            IronLog.INTERNAL.verbose("");
            C1356m.b bVar = new C1356m.b() { // from class: com.ironsource.mediationsdk.P.2
                @Override // com.ironsource.mediationsdk.C1356m.b
                public final void a() {
                    IronLog.INTERNAL.verbose("destroying banner");
                    P.this.f10790d.d();
                    P.this.a(IronSourceConstants.BN_DESTROY, (Object[][]) null, P.this.f10793g != null ? P.this.f10793g.m() : P.this.f10794h);
                    P p2 = P.this;
                    if (p2.f10793g != null) {
                        IronLog.INTERNAL.verbose("mActiveSmash = " + p2.f10793g.p());
                        p2.f10793g.a();
                        p2.f10793g = null;
                    }
                    ironSourceBannerLayout.b();
                    P.this.f10791e = null;
                    P.this.f10792f = null;
                    P.this.a(a.READY_TO_LOAD);
                }

                @Override // com.ironsource.mediationsdk.C1356m.b
                public final void a(String str) {
                    IronLog.API.error("destroy banner failed - errorMessage = " + str);
                }
            };
            if (ironSourceBannerLayout != null && !ironSourceBannerLayout.isDestroyed()) {
                bVar.a();
                return;
            }
            bVar.a(String.format("can't destroy banner - %s", ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed"));
        } catch (Throwable th) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "destroyBanner()", th);
        }
    }

    public static String getAdvertiserId(Context context) {
        H.a();
        return H.a(context);
    }

    public static synchronized String getISDemandOnlyBiddingData() {
        String l;
        synchronized (IronSource.class) {
            l = H.a().l();
        }
        return l;
    }

    public static synchronized String getISDemandOnlyBiddingData(Context context) {
        String b2;
        synchronized (IronSource.class) {
            b2 = H.a().b(context);
        }
        return b2;
    }

    public static InterstitialPlacement getInterstitialPlacementInfo(String str) {
        return H.a().k(str);
    }

    public static void getOfferwallCredits() {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "getOfferwallCredits()", 1);
        try {
            O o = a2.f10673d;
            if (o.f10781a != null) {
                o.f10781a.getOfferwallCredits();
            }
        } catch (Throwable th) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "getOfferwallCredits()", th);
        }
    }

    public static Placement getRewardedVideoPlacementInfo(String str) {
        return H.a().l(str);
    }

    public static void init(Activity activity, String str) {
        init(activity, str, (AD_UNIT[]) null);
    }

    public static void init(Activity activity, String str, InitializationListener initializationListener) {
        init(activity, str, initializationListener, null);
    }

    public static void init(Activity activity, String str, InitializationListener initializationListener, AD_UNIT... ad_unitArr) {
        H.a().a(activity, str, false, initializationListener, ad_unitArr);
    }

    public static void init(Activity activity, String str, AD_UNIT... ad_unitArr) {
        H.a().a(activity, str, false, null, ad_unitArr);
    }

    @Deprecated
    public static void initISDemandOnly(Activity activity, String str, AD_UNIT... ad_unitArr) {
        H.a().a(activity, str, (InitializationListener) null, ad_unitArr);
    }

    public static void initISDemandOnly(Context context, String str, AD_UNIT... ad_unitArr) {
        H.a().a(context, str, (InitializationListener) null, ad_unitArr);
    }

    public static boolean isBannerPlacementCapped(String str) {
        return H.a().n(str);
    }

    public static boolean isISDemandOnlyInterstitialReady(String str) {
        return H.a().i(str);
    }

    public static boolean isISDemandOnlyRewardedVideoAvailable(String str) {
        return H.a().g(str);
    }

    public static boolean isInterstitialPlacementCapped(String str) {
        return H.a().m(str);
    }

    public static boolean isInterstitialReady() {
        return H.a().g();
    }

    public static boolean isOfferwallAvailable() {
        return H.a().j();
    }

    public static boolean isRewardedVideoAvailable() {
        return H.a().c();
    }

    public static boolean isRewardedVideoPlacementCapped(String str) {
        int i;
        H a2 = H.a();
        int o = a2.o(str);
        boolean z = o != 0 && ((i = H.AnonymousClass1.f10679b[o - 1]) == 1 || i == 2 || i == 3);
        if (z) {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(a2.u, a2.E, a2.L);
            if (str != null) {
                H.a(mediationAdditionalData, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, str}});
            }
            H.a((int) IronSourceConstants.RV_API_IS_CAPPED_TRUE, mediationAdditionalData);
        }
        return z;
    }

    public static void loadBanner(IronSourceBannerLayout ironSourceBannerLayout) {
        H.a().a(ironSourceBannerLayout, "");
    }

    public static void loadBanner(IronSourceBannerLayout ironSourceBannerLayout, String str) {
        H.a().a(ironSourceBannerLayout, str);
    }

    public static void loadISDemandOnlyBannerWithAdm(Activity activity, IronSourceBannerLayout ironSourceBannerLayout, String str, String str2) {
        H.a().a(activity, ironSourceBannerLayout, str, str2);
    }

    public static void loadISDemandOnlyInterstitial(Activity activity, String str) {
        H.a().d(activity, str, null);
    }

    @Deprecated
    public static void loadISDemandOnlyInterstitial(String str) {
        H.a().d(null, str, null);
    }

    public static void loadISDemandOnlyInterstitialWithAdm(Activity activity, String str, String str2) {
        H.a().c(activity, str, str2);
    }

    @Deprecated
    public static void loadISDemandOnlyInterstitialWithAdm(String str, String str2) {
        H.a().c(null, str, str2);
    }

    public static void loadISDemandOnlyRewardedVideo(Activity activity, String str) {
        H.a().b(activity, str, (String) null);
    }

    @Deprecated
    public static void loadISDemandOnlyRewardedVideo(String str) {
        H.a().b((Activity) null, str, (String) null);
    }

    public static void loadISDemandOnlyRewardedVideoWithAdm(Activity activity, String str, String str2) {
        H.a().a(activity, str, str2);
    }

    @Deprecated
    public static void loadISDemandOnlyRewardedVideoWithAdm(String str, String str2) {
        H.a().a((Activity) null, str, str2);
    }

    public static void loadInterstitial() {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "loadInterstitial()", 1);
        try {
            if (a2.v) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead", 3);
                C1359p.a().a(AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead", "Interstitial"));
            } else if (!a2.x) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadInterstitial()", 3);
                C1359p.a().a(AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() must be called before loadInterstitial()", "Interstitial"));
            } else {
                M.a b2 = M.a().b();
                if (b2 == M.a.INIT_FAILED) {
                    a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    C1359p.a().a(AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                } else if (b2 == M.a.INIT_IN_PROGRESS) {
                    if (!M.a().c()) {
                        a2.J = true;
                        return;
                    }
                    a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    C1359p.a().a(AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                } else if (!a2.h()) {
                    a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "No interstitial configurations found", 3);
                    C1359p.a().a(AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
                } else if (!a2.H) {
                    a2.f10672c.c();
                } else {
                    if (a2.I) {
                        if (a2.C != null) {
                            a2.C.e();
                            return;
                        }
                    } else if (a2.A != null) {
                        a2.A.d();
                        return;
                    }
                    a2.J = true;
                }
            }
        } catch (Throwable th) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "loadInterstitial()", th);
            C1359p.a().a(AD_UNIT.INTERSTITIAL, new IronSourceError(510, th.getMessage()));
        }
    }

    public static void loadRewardedVideo() {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "loadRewardedVideo()", 1);
        try {
            if (a2.u) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in demand only mode. Use loadISDemandOnlyRewardedVideo instead", 3);
                C1359p.a().a(AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("Rewarded Video was initialized in demand only mode. Use loadISDemandOnlyRewardedVideo instead", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else if (!a2.F) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video is not initiated with manual load", 3);
            } else if (!a2.w) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadRewardedVideo()", 3);
                C1359p.a().a(AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() must be called before loadRewardedVideo()", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                M.a b2 = M.a().b();
                if (b2 == M.a.INIT_FAILED) {
                    a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    C1359p.a().a(AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                } else if (b2 == M.a.INIT_IN_PROGRESS) {
                    if (!M.a().c()) {
                        a2.G = true;
                        return;
                    }
                    a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    C1359p.a().a(AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("init() had failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                } else if (!a2.d()) {
                    a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "No rewarded video configurations found", 3);
                    C1359p.a().a(AD_UNIT.REWARDED_VIDEO, ErrorBuilder.buildInitFailedError("the server response does not contain rewarded video data", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                } else if (a2.D == null) {
                    a2.G = true;
                } else {
                    a2.D.e();
                }
            }
        } catch (Throwable th) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "loadRewardedVideo()", th);
            C1359p.a().a(AD_UNIT.REWARDED_VIDEO, new IronSourceError(510, th.getMessage()));
        }
    }

    public static void onPause(Activity activity) {
        H a2 = H.a();
        try {
            a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "onPause()", 1);
            ContextProvider.getInstance().onPause(activity);
        } catch (Throwable th) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "onPause()", th);
        }
    }

    public static void onResume(Activity activity) {
        H a2 = H.a();
        try {
            a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "onResume()", 1);
            ContextProvider.getInstance().onResume(activity);
        } catch (Throwable th) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "onResume()", th);
        }
    }

    public static void removeImpressionDataListener(ImpressionDataListener impressionDataListener) {
        H a2 = H.a();
        if (com.ironsource.mediationsdk.c.a.a(impressionDataListener, "removeImpressionDataListener - listener is null")) {
            com.ironsource.mediationsdk.utils.k.a().b(impressionDataListener);
            if (a2.z != null) {
                a2.z.b(impressionDataListener);
            }
            if (a2.A != null) {
                a2.A.b(impressionDataListener);
            }
            if (a2.C != null) {
                a2.C.b(impressionDataListener);
            }
            if (a2.D != null) {
                a2.D.b(impressionDataListener);
            }
            if (a2.B != null) {
                a2.B.b(impressionDataListener);
            }
            IronLog.API.info("remove impression data listener from " + impressionDataListener.getClass().getSimpleName());
        }
    }

    public static void removeInterstitialListener() {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "removeInterstitialListener()", 1);
        a2.f10676g.f11337b = null;
    }

    public static void removeOfferwallListener() {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "removeOfferwallListener()", 1);
        a2.f10676g.f11338c = null;
    }

    public static void removeRewardedVideoListener() {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "removeRewardedVideoListener()", 1);
        a2.f10676g.f11336a = null;
    }

    public static void setAdRevenueData(String str, JSONObject jSONObject) {
        H a2 = H.a();
        if (com.ironsource.mediationsdk.c.a.a(jSONObject, "setAdRevenueData - impressionData is null") && com.ironsource.mediationsdk.c.a.a(str, "setAdRevenueData - dataSource is null")) {
            a2.O.a(str, jSONObject);
        }
    }

    public static void setAdaptersDebug(boolean z) {
        H.a();
        H.a(z);
    }

    public static void setConsent(boolean z) {
        H.a().b(z);
    }

    public static boolean setDynamicUserId(String str) {
        return H.a().c(str);
    }

    public static void setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener iSDemandOnlyInterstitialListener) {
        H.a();
        H.a(iSDemandOnlyInterstitialListener);
    }

    public static void setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener iSDemandOnlyRewardedVideoListener) {
        H.a();
        H.a(iSDemandOnlyRewardedVideoListener);
    }

    @Deprecated
    public static void setImpressionDataListener(ImpressionDataListener impressionDataListener) {
        H a2 = H.a();
        IronLog.API.info("removing all impression data listeners");
        com.ironsource.mediationsdk.utils.k.a().c();
        if (a2.z != null) {
            a2.z.b();
        }
        if (a2.A != null) {
            a2.A.b();
        }
        if (a2.C != null) {
            a2.C.g();
        }
        if (a2.D != null) {
            a2.D.g();
        }
        if (a2.B != null) {
            a2.B.b();
        }
        addImpressionDataListener(impressionDataListener);
    }

    public static void setInterstitialListener(InterstitialListener interstitialListener) {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, interstitialListener == null ? "setInterstitialListener(ISListener:null)" : "setInterstitialListener(ISListener)", 1);
        a2.f10676g.f11337b = interstitialListener;
        B.a().a(interstitialListener);
        C1359p.a().f11317a = interstitialListener;
    }

    public static void setLogListener(LogListener logListener) {
        H a2 = H.a();
        if (logListener == null) {
            a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "setLogListener(LogListener:null)", 1);
            return;
        }
        a2.f10677h.f11208c = logListener;
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "setLogListener(LogListener:" + logListener.getClass().getSimpleName() + ")", 1);
    }

    public static void setManualLoadRewardedVideo(RewardedVideoManualListener rewardedVideoManualListener) {
        H.a().a(rewardedVideoManualListener);
    }

    public static void setMediationSegment(String str) {
        H a2 = H.a();
        try {
            a2.f10675f.log(IronSourceLogger.IronSourceTag.API, a2.f10670a + ":setMediationSegment(segment:" + str + ")", 1);
            com.ironsource.d.a aVar = new com.ironsource.d.a();
            H.a(str, aVar);
            if (aVar.a()) {
                a2.l = str;
            } else {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, aVar.b().toString(), 2);
            }
        } catch (Exception e2) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, a2.f10670a + ":setMediationSegment(segment:" + str + ")", e2);
        }
    }

    public static void setMediationType(String str) {
        H.a().d(str);
    }

    public static void setMetaData(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        H.a().a(str, arrayList);
    }

    public static void setMetaData(String str, List<String> list) {
        H.a().a(str, list);
    }

    public static void setNetworkData(String str, JSONObject jSONObject) {
        H.a();
        H.a(str, jSONObject);
    }

    public static void setOfferwallListener(OfferwallListener offerwallListener) {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, offerwallListener == null ? "setOfferwallListener(OWListener:null)" : "setOfferwallListener(OWListener)", 1);
        a2.f10676g.f11338c = offerwallListener;
    }

    public static void setRewardedVideoListener(RewardedVideoListener rewardedVideoListener) {
        H.a().a(rewardedVideoListener);
    }

    public static void setRewardedVideoServerParameters(Map<String, String> map) {
        H a2 = H.a();
        if (map != null) {
            try {
                if (map.size() == 0) {
                    return;
                }
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, a2.f10670a + ":setRewardedVideoServerParameters(params:" + map.toString() + ")", 1);
                a2.n = new HashMap(map);
            } catch (Exception e2) {
                a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, a2.f10670a + ":setRewardedVideoServerParameters(params:" + map.toString() + ")", e2);
            }
        }
    }

    public static void setSegment(IronSourceSegment ironSourceSegment) {
        H a2 = H.a();
        a2.s = ironSourceSegment;
        if (a2.D != null) {
            a2.D.a(ironSourceSegment);
        }
        if (a2.z != null) {
            a2.z.a(ironSourceSegment);
        }
        if (a2.C != null) {
            a2.C.a(ironSourceSegment);
        }
        if (a2.A != null) {
            a2.A.a(ironSourceSegment);
        }
        if (a2.B != null) {
            a2.B.a(ironSourceSegment);
        }
        com.ironsource.mediationsdk.a.d.e().v = a2.s;
        com.ironsource.mediationsdk.a.h.e().v = a2.s;
        com.ironsource.mediationsdk.a.g.w.v = a2.s;
    }

    public static void setSegmentListener(SegmentListener segmentListener) {
        H a2 = H.a();
        if (a2.f10676g != null) {
            a2.f10676g.f11339d = segmentListener;
            M.a().p = a2.f10676g;
        }
    }

    public static void setUserId(String str) {
        H.a().a(str, true);
    }

    public static void shouldTrackNetworkState(Context context, boolean z) {
        H a2 = H.a();
        a2.q = context;
        a2.r = Boolean.valueOf(z);
        if (a2.H) {
            if (a2.I) {
                if (a2.C != null) {
                    a2.C.b(z);
                }
            } else if (a2.A != null) {
                a2.A.a(z);
            }
        } else if (a2.f10672c != null) {
            a2.f10672c.a(context, z);
        }
        if (a2.E) {
            if (a2.z != null) {
                a2.z.a(context, z);
            }
        } else if (a2.f10671b != null) {
            a2.f10671b.a(context, z);
        }
    }

    public static void showISDemandOnlyInterstitial(String str) {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "showISDemandOnlyInterstitial() instanceId=" + str, 1);
        try {
            if (!a2.v) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in mediation mode. Use showInterstitial instead", 3);
            } else if (a2.M == null) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "Interstitial video was not initiated", 3);
                A.a().b(str, new IronSourceError(508, "Interstitial video was not initiated"));
            } else {
                C1362s c1362s = a2.M;
                if (c1362s.f11332a.containsKey(str)) {
                    C1363t c1363t = c1362s.f11332a.get(str);
                    c1362s.a(IronSourceConstants.IS_INSTANCE_SHOW, c1363t);
                    c1363t.a();
                    return;
                }
                C1362s.a(2500, str);
                A.a().b(str, ErrorBuilder.buildNonExistentInstanceError("Interstitial"));
            }
        } catch (Exception e2) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "showISDemandOnlyInterstitial", e2);
            A.a().b(str, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
        }
    }

    public static void showISDemandOnlyRewardedVideo(String str) {
        H.a().f(str);
    }

    public static void showInterstitial() {
        H a2 = H.a();
        a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "showInterstitial()", 1);
        try {
            if (a2.v) {
                a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead", 3);
                a2.f10676g.onInterstitialAdShowFailed(new IronSourceError(510, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead"));
            } else if (!a2.h()) {
                a2.f10676g.onInterstitialAdShowFailed(ErrorBuilder.buildInitFailedError("showInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
            } else {
                InterstitialPlacement e2 = a2.e();
                if (e2 != null) {
                    a2.h(e2.getPlacementName());
                } else {
                    a2.f10676g.onInterstitialAdShowFailed(new IronSourceError(1020, "showInterstitial error: empty default placement in response"));
                }
            }
        } catch (Exception e3) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "showInterstitial()", e3);
            a2.f10676g.onInterstitialAdShowFailed(new IronSourceError(510, e3.getMessage()));
        }
    }

    public static void showInterstitial(String str) {
        H.a().h(str);
    }

    public static void showOfferwall() {
        H a2 = H.a();
        try {
            a2.f10675f.log(IronSourceLogger.IronSourceTag.API, "showOfferwall()", 1);
            if (!a2.i()) {
                a2.f10676g.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
                return;
            }
            com.ironsource.mediationsdk.model.j a3 = a2.i.f11449c.f11256c.a();
            if (a3 != null) {
                a2.j(a3.f11272b);
            }
        } catch (Exception e2) {
            a2.f10675f.logException(IronSourceLogger.IronSourceTag.API, "showOfferwall()", e2);
            a2.f10676g.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
        }
    }

    public static void showOfferwall(String str) {
        H.a().j(str);
    }

    public static void showRewardedVideo() {
        H a2 = H.a();
        if (!a2.d()) {
            a2.f10676g.onRewardedVideoAdShowFailed(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            a2.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", 3);
            return;
        }
        Placement b2 = a2.b();
        if (b2 != null) {
            a2.e(b2.getPlacementName());
            return;
        }
        a2.f10675f.log(IronSourceLogger.IronSourceTag.INTERNAL, "showRewardedVideo error: empty default placement in response", 3);
        a2.f10676g.onRewardedVideoAdShowFailed(new IronSourceError(1021, "showRewardedVideo error: empty default placement in response"));
    }

    public static void showRewardedVideo(String str) {
        H.a().e(str);
    }
}
