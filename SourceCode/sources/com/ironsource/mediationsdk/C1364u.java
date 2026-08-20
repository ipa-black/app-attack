package com.ironsource.mediationsdk;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.ironsource.mediationsdk.C1349f;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.ironsource.mediationsdk.u  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1364u implements com.ironsource.mediationsdk.sdk.d {

    /* renamed from: a  reason: collision with root package name */
    ConcurrentHashMap<String, C1365v> f11395a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private String f11396b;

    /* renamed from: c  reason: collision with root package name */
    private com.ironsource.mediationsdk.utils.c f11397c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1364u(List<NetworkSettings> list, com.ironsource.mediationsdk.model.o oVar, String str, String str2) {
        this.f11396b = str;
        this.f11397c = oVar.l;
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) || networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) {
                AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getRewardedVideoSettings(), true, false);
                if (a2 != null) {
                    this.f11395a.put(networkSettings.getSubProviderId(), new C1365v(str, str2, networkSettings, this, oVar.f11303e, a2));
                }
            } else {
                a("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, C1365v c1365v, Object[][] objArr) {
        Map<String, Object> c2 = c1365v.c();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    c2.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "RV sendProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(c2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        hashMap.put(IronSourceConstants.EVENTS_DEMAND_ONLY, 1);
        if (str == null) {
            str = "";
        }
        hashMap.put("spId", str);
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(1500, new JSONObject(hashMap)));
    }

    private static void a(C1365v c1365v, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "DemandOnlyRvManager " + c1365v.d() + " : " + str, 0);
    }

    private static void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "DemandOnlyRvManager " + str, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, C1365v c1365v) {
        a(i, c1365v, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void a(IronSourceError ironSourceError, C1365v c1365v) {
        a(c1365v, "onRewardedVideoAdShowFailed error=" + ironSourceError);
        a((int) IronSourceConstants.RV_INSTANCE_SHOW_FAILED, c1365v, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}});
        Z.a().b(c1365v.f(), ironSourceError);
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void a(IronSourceError ironSourceError, C1365v c1365v, long j) {
        a(c1365v, "onRewardedVideoAdLoadFailed error=" + ironSourceError);
        a((int) IronSourceConstants.RV_INSTANCE_LOAD_FAILED, c1365v, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
        if (ironSourceError.getErrorCode() == 1058) {
            a((int) IronSourceConstants.RV_INSTANCE_LOAD_NO_FILL, c1365v, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(j)}});
        } else {
            a((int) IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON, c1365v, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
        }
        Z.a().a(c1365v.f(), ironSourceError);
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void a(C1365v c1365v) {
        a(c1365v, "onRewardedVideoAdOpened");
        a(1005, c1365v, (Object[][]) null);
        final Z a2 = Z.a();
        final String f2 = c1365v.f();
        if (a2.f10878a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.Z.3
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10878a.onRewardedVideoAdOpened(f2);
                    Z.a(a2, "onRewardedVideoAdOpened() instanceId=" + f2);
                }
            });
        }
        if (c1365v.i()) {
            for (String str : c1365v.f11482g) {
                C1349f.a();
                String a3 = C1349f.a(str, c1365v.d(), c1365v.e(), c1365v.f11483h, "", "", "", "");
                C1349f.a();
                C1349f.a("onRewardedVideoAdOpened", c1365v.d(), a3);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void a(C1365v c1365v, long j) {
        a(c1365v, "onRewardedVideoLoadSuccess");
        a(1002, c1365v, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
        final Z a2 = Z.a();
        final String f2 = c1365v.f();
        if (a2.f10878a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.Z.1
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10878a.onRewardedVideoAdLoadSuccess(f2);
                    Z.a(a2, "onRewardedVideoAdLoadSuccess() instanceId=" + f2);
                }
            });
        }
    }

    public final void a(String str, String str2, boolean z) {
        IronSourceError buildLoadFailedError;
        Z a2;
        try {
            if (!this.f11395a.containsKey(str)) {
                a(1500, str);
                Z.a().a(str, ErrorBuilder.buildNonExistentInstanceError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            C1365v c1365v = this.f11395a.get(str);
            if (!z) {
                if (!c1365v.i()) {
                    a(1001, c1365v, (Object[][]) null);
                    c1365v.a("", "", null, null);
                    return;
                }
                IronSourceError buildLoadFailedError2 = ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm in non IAB flow must be called by non bidder instances");
                a(buildLoadFailedError2.getErrorMessage());
                a((int) IronSourceConstants.RV_INSTANCE_LOAD_FAILED, c1365v, (Object[][]) null);
                Z.a().a(str, buildLoadFailedError2);
                return;
            }
            if (c1365v.i()) {
                C1349f.a();
                JSONObject a3 = C1349f.a(str2);
                C1349f.a();
                C1349f.a a4 = C1349f.a(a3);
                C1349f.a();
                com.ironsource.mediationsdk.server.b a5 = C1349f.a(c1365v.d(), a4.f11112b);
                if (a5 != null) {
                    c1365v.a(a5.b());
                    c1365v.b(a4.f11111a);
                    c1365v.a(a4.f11114d);
                    a(1001, c1365v, (Object[][]) null);
                    c1365v.a(a5.b(), a4.f11111a, a4.f11114d, a5.d());
                    return;
                }
                buildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm invalid enriched adm");
                a(buildLoadFailedError.getErrorMessage());
                a((int) IronSourceConstants.RV_INSTANCE_LOAD_FAILED, c1365v, (Object[][]) null);
                a2 = Z.a();
            } else {
                buildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm in IAB flow must be called by bidder instances");
                a(buildLoadFailedError.getErrorMessage());
                a((int) IronSourceConstants.RV_INSTANCE_LOAD_FAILED, c1365v, (Object[][]) null);
                a2 = Z.a();
            }
            a2.a(str, buildLoadFailedError);
        } catch (Exception e2) {
            a("loadRewardedVideoWithAdm exception " + e2.getMessage());
            Z.a().a(str, ErrorBuilder.buildLoadFailedError("loadRewardedVideoWithAdm exception"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void b(C1365v c1365v) {
        a(c1365v, "onRewardedVideoAdClosed");
        a((int) IronSourceConstants.RV_INSTANCE_CLOSED, c1365v, new Object[][]{new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(com.ironsource.mediationsdk.utils.o.a().b(1))}});
        com.ironsource.mediationsdk.utils.o.a().a(1);
        final Z a2 = Z.a();
        final String f2 = c1365v.f();
        if (a2.f10878a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.Z.4
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10878a.onRewardedVideoAdClosed(f2);
                    Z.a(a2, "onRewardedVideoAdClosed() instanceId=" + f2);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void c(C1365v c1365v) {
        a(c1365v, "onRewardedVideoAdClicked");
        a(1006, c1365v, (Object[][]) null);
        final Z a2 = Z.a();
        final String f2 = c1365v.f();
        if (a2.f10878a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.Z.6
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10878a.onRewardedVideoAdClicked(f2);
                    Z.a(a2, "onRewardedVideoAdClicked() instanceId=" + f2);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void d(C1365v c1365v) {
        a(c1365v, "onRewardedVideoAdVisible");
        a((int) IronSourceConstants.RV_INSTANCE_VISIBLE, c1365v, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.d
    public final void e(C1365v c1365v) {
        a(c1365v, "onRewardedVideoAdRewarded");
        Map<String, Object> c2 = c1365v.c();
        if (!TextUtils.isEmpty(H.a().m)) {
            c2.put(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, H.a().m);
        }
        if (H.a().n != null) {
            for (String str : H.a().n.keySet()) {
                c2.put(ContentMetadata.KEY_CUSTOM_PREFIX + str, H.a().n.get(str));
            }
        }
        Placement a2 = H.a().i.f11449c.f11254a.a();
        if (a2 != null) {
            c2.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, a2.getPlacementName());
            c2.put(IronSourceConstants.EVENTS_REWARD_NAME, a2.getRewardName());
            c2.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(a2.getRewardAmount()));
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "defaultPlacement is null", 3);
        }
        com.ironsource.mediationsdk.a.c cVar = new com.ironsource.mediationsdk.a.c(1010, new JSONObject(c2));
        cVar.a(IronSourceConstants.EVENTS_TRANS_ID, IronSourceUtils.getTransId(cVar.b(), c1365v.d()));
        com.ironsource.mediationsdk.a.h.e().b(cVar);
        final Z a3 = Z.a();
        final String f2 = c1365v.f();
        if (a3.f10878a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.Z.7
                @Override // java.lang.Runnable
                public final void run() {
                    a3.f10878a.onRewardedVideoAdRewarded(f2);
                    Z.a(a3, "onRewardedVideoAdRewarded() instanceId=" + f2);
                }
            });
        }
    }
}
