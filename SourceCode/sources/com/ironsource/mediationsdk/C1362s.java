package com.ironsource.mediationsdk;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.ironsource.mediationsdk.C1349f;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.ironsource.mediationsdk.s  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1362s implements com.ironsource.mediationsdk.sdk.c {

    /* renamed from: a  reason: collision with root package name */
    ConcurrentHashMap<String, C1363t> f11332a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private com.ironsource.mediationsdk.utils.c f11333b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1362s(List<NetworkSettings> list, com.ironsource.mediationsdk.model.h hVar, String str, String str2) {
        this.f11333b = hVar.i;
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) || networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) {
                AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getRewardedVideoSettings(), true, false);
                if (a2 != null) {
                    this.f11332a.put(networkSettings.getSubProviderId(), new C1363t(str, str2, networkSettings, this, hVar.f11263e, a2));
                }
            } else {
                a("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, C1363t c1363t, Object[][] objArr) {
        Map<String, Object> c2 = c1363t.c();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    c2.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IS sendProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(c2)));
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
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(2500, new JSONObject(hashMap)));
    }

    private static void a(C1363t c1363t, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "DemandOnlyIsManager " + c1363t.d() + " : " + str, 0);
    }

    private static void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "DemandOnlyIsManager " + str, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, C1363t c1363t) {
        a(i, c1363t, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.c
    public final void a(IronSourceError ironSourceError, C1363t c1363t) {
        a(c1363t, "onInterstitialAdShowFailed error=" + ironSourceError.toString());
        a((int) IronSourceConstants.IS_INSTANCE_SHOW_FAILED, c1363t, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}});
        A.a().b(c1363t.f(), ironSourceError);
    }

    @Override // com.ironsource.mediationsdk.sdk.c
    public final void a(IronSourceError ironSourceError, C1363t c1363t, long j) {
        a(c1363t, "onInterstitialAdLoadFailed error=" + ironSourceError.toString());
        if (ironSourceError.getErrorCode() == 1158) {
            a((int) IronSourceConstants.IS_INSTANCE_LOAD_NO_FILL, c1363t, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(j)}});
        } else {
            a((int) IronSourceConstants.IS_INSTANCE_LOAD_FAILED, c1363t, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
        }
        A.a().a(c1363t.f(), ironSourceError);
    }

    @Override // com.ironsource.mediationsdk.sdk.c
    public final void a(C1363t c1363t) {
        a(c1363t, "onInterstitialAdOpened");
        a(2005, c1363t, (Object[][]) null);
        final A a2 = A.a();
        final String f2 = c1363t.f();
        if (a2.f10637a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.A.3
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10637a.onInterstitialAdOpened(f2);
                    A.a(a2, "onInterstitialAdOpened() instanceId=" + f2);
                }
            });
        }
        if (c1363t.i()) {
            for (String str : c1363t.f11482g) {
                C1349f.a();
                String a3 = C1349f.a(str, c1363t.d(), c1363t.e(), c1363t.f11483h, "", "", "", "");
                C1349f.a();
                C1349f.a("onInterstitialAdOpened", c1363t.d(), a3);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.c
    public final void a(C1363t c1363t, long j) {
        a(c1363t, "onInterstitialAdReady");
        a(2003, c1363t, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
        final A a2 = A.a();
        final String f2 = c1363t.f();
        if (a2.f10637a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.A.1
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10637a.onInterstitialAdReady(f2);
                    A.a(a2, "onInterstitialAdReady() instanceId=" + f2);
                }
            });
        }
    }

    public final void a(String str, String str2, boolean z) {
        IronSourceError buildLoadFailedError;
        try {
            if (!this.f11332a.containsKey(str)) {
                a(2500, str);
                A.a().a(str, ErrorBuilder.buildNonExistentInstanceError("Interstitial"));
                return;
            }
            C1363t c1363t = this.f11332a.get(str);
            if (!z) {
                if (!c1363t.i()) {
                    a(2002, c1363t, (Object[][]) null);
                    c1363t.a("", "", null, null);
                    return;
                }
                IronSourceError buildLoadFailedError2 = ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm in non IAB flow must be called by non bidder instances");
                a(buildLoadFailedError2.getErrorMessage());
                a((int) IronSourceConstants.IS_INSTANCE_LOAD_FAILED, c1363t, (Object[][]) null);
                A.a().a(str, buildLoadFailedError2);
                return;
            }
            if (c1363t.i()) {
                C1349f.a();
                JSONObject a2 = C1349f.a(str2);
                C1349f.a();
                C1349f.a a3 = C1349f.a(a2);
                C1349f.a();
                com.ironsource.mediationsdk.server.b a4 = C1349f.a(c1363t.d(), a3.f11112b);
                if (a4 != null) {
                    c1363t.a(a4.b());
                    c1363t.b(a3.f11111a);
                    c1363t.a(a3.f11114d);
                    a(2002, c1363t, (Object[][]) null);
                    c1363t.a(a4.b(), a3.f11111a, a3.f11114d, a4.d());
                    return;
                }
                buildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm invalid enriched adm");
                a(buildLoadFailedError.getErrorMessage());
                a((int) IronSourceConstants.IS_INSTANCE_LOAD_FAILED, c1363t, (Object[][]) null);
            } else {
                buildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm in IAB flow must be called by bidder instances");
                a(buildLoadFailedError.getErrorMessage());
                a((int) IronSourceConstants.IS_INSTANCE_LOAD_FAILED, c1363t, (Object[][]) null);
            }
            A.a().a(str, buildLoadFailedError);
        } catch (Exception unused) {
            IronSourceError buildLoadFailedError3 = ErrorBuilder.buildLoadFailedError("loadInterstitialWithAdm exception");
            a(buildLoadFailedError3.getErrorMessage());
            A.a().a(str, buildLoadFailedError3);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.c
    public final void b(C1363t c1363t) {
        a(c1363t, "onInterstitialAdClosed");
        a((int) IronSourceConstants.IS_INSTANCE_CLOSED, c1363t, new Object[][]{new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(com.ironsource.mediationsdk.utils.o.a().b(2))}});
        com.ironsource.mediationsdk.utils.o.a().a(2);
        final A a2 = A.a();
        final String f2 = c1363t.f();
        if (a2.f10637a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.A.4
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10637a.onInterstitialAdClosed(f2);
                    A.a(a2, "onInterstitialAdClosed() instanceId=" + f2);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.c
    public final void c(C1363t c1363t) {
        a(c1363t, "onInterstitialAdClicked");
        a(2006, c1363t, (Object[][]) null);
        final A a2 = A.a();
        final String f2 = c1363t.f();
        if (a2.f10637a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.A.6
                @Override // java.lang.Runnable
                public final void run() {
                    a2.f10637a.onInterstitialAdClicked(f2);
                    A.a(a2, "onInterstitialAdClicked() instanceId=" + f2);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.c
    public final void d(C1363t c1363t) {
        a((int) IronSourceConstants.IS_INSTANCE_VISIBLE, c1363t, (Object[][]) null);
        a(c1363t, "onInterstitialAdVisible");
    }
}
