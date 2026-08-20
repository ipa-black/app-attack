package com.ironsource.mediationsdk;

import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.q  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1360q implements com.ironsource.mediationsdk.sdk.b {

    /* renamed from: a  reason: collision with root package name */
    C1361r f11327a;

    /* renamed from: b  reason: collision with root package name */
    IronSourceBannerLayout f11328b;

    /* renamed from: c  reason: collision with root package name */
    ConcurrentHashMap<String, C1361r> f11329c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private C1361r f11330d;

    public C1360q(List<NetworkSettings> list, com.ironsource.mediationsdk.model.e eVar, String str, String str2) {
        for (NetworkSettings networkSettings : list) {
            if (networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) || networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) {
                AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getBannerSettings(), true, false);
                if (a2 != null) {
                    this.f11329c.put(networkSettings.getSubProviderId(), new C1361r(str, str2, networkSettings, this, (int) eVar.f11247b, a2));
                }
            } else {
                IronLog.INTERNAL.error("cannot load " + networkSettings.getProviderTypeForReflection());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, C1361r c1361r, Object[][] objArr) {
        Map<String, Object> c2 = c1361r.c();
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    c2.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronLog.INTERNAL.error(e2.getMessage());
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
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(hashMap)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, C1361r c1361r) {
        a(i, c1361r, (Object[][]) null);
    }

    public final synchronized void a(IronSourceBannerLayout ironSourceBannerLayout) {
        IronLog.INTERNAL.verbose("demand only banner manager : destroyBanner");
        if (ironSourceBannerLayout == null) {
            IronLog.INTERNAL.error("destroyBanner banner cannot be null");
        } else if (ironSourceBannerLayout.isDestroyed()) {
            IronLog.INTERNAL.error("Banner is already destroyed and can't be used anymore. Please create a new one using IronSource.createBanner API");
        } else {
            ironSourceBannerLayout.b();
            this.f11328b = null;
            if (this.f11330d != null) {
                IronLog.INTERNAL.verbose("demand only banner manager : destroyBanner | mActiveSmash != null ");
                a((int) IronSourceConstants.BN_INSTANCE_DESTROY, this.f11330d, (Object[][]) null);
                this.f11330d.a();
                this.f11330d = null;
                return;
            }
            if (this.f11327a != null) {
                IronLog.INTERNAL.verbose("demand only banner manager : destroyBanner | mLoadingSmash != null ");
                a((int) IronSourceConstants.BN_INSTANCE_DESTROY, this.f11327a, (Object[][]) null);
                this.f11327a.a();
                this.f11327a = null;
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.b
    public final void a(IronSourceError ironSourceError, C1361r c1361r, boolean z, long j) {
        IronLog.INTERNAL.verbose("error = " + ironSourceError.getErrorMessage() + " smash - " + c1361r.b());
        if (z) {
            a((int) IronSourceConstants.BN_INSTANCE_LOAD_NO_FILL, c1361r, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(j)}});
        } else {
            a((int) IronSourceConstants.BN_INSTANCE_LOAD_ERROR, c1361r, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
        }
        IronSourceBannerLayout ironSourceBannerLayout = this.f11328b;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            return;
        }
        this.f11328b.a(ironSourceError);
    }

    @Override // com.ironsource.mediationsdk.sdk.b
    public final void a(C1361r c1361r) {
        IronLog.INTERNAL.verbose(c1361r.b());
        a((int) IronSourceConstants.BN_INSTANCE_CLICK, c1361r, (Object[][]) null);
        IronSourceBannerLayout ironSourceBannerLayout = this.f11328b;
        if (ironSourceBannerLayout != null) {
            ironSourceBannerLayout.c();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.b
    public final void a(C1361r c1361r, View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose("smash = " + c1361r.b());
        IronSourceBannerLayout ironSourceBannerLayout = this.f11328b;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            a(IronSourceConstants.BN_INSTANCE_LOAD_ERROR, c1361r);
            return;
        }
        IronSourceBannerLayout ironSourceBannerLayout2 = this.f11328b;
        if (ironSourceBannerLayout2 != null) {
            ironSourceBannerLayout2.a(view, layoutParams);
        }
        this.f11330d = c1361r;
        int b2 = com.ironsource.mediationsdk.utils.o.a().b(3);
        a(3005, c1361r, new Object[][]{new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(b2)}});
        a((int) IronSourceConstants.BN_CALLBACK_LOAD_SUCCESS, c1361r, new Object[][]{new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(b2)}});
        com.ironsource.mediationsdk.utils.o.a().a(3);
        if (c1361r.i()) {
            for (String str : c1361r.f11482g) {
                C1349f.a();
                String a2 = C1349f.a(str, c1361r.d(), c1361r.e(), c1361r.f11483h, "", "", "", "");
                C1349f.a();
                C1349f.a("onBannerAdLoaded", c1361r.d(), a2);
            }
        }
        IronSourceBannerLayout ironSourceBannerLayout3 = this.f11328b;
        if (ironSourceBannerLayout3 != null) {
            ironSourceBannerLayout3.a(String.format("%s %s", c1361r.b(), Integer.valueOf(c1361r.hashCode())));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.b
    public final void b(C1361r c1361r) {
        IronLog.INTERNAL.verbose(c1361r.b());
        a((int) IronSourceConstants.BN_INSTANCE_DISMISS_SCREEN, c1361r, (Object[][]) null);
        IronSourceBannerLayout ironSourceBannerLayout = this.f11328b;
        if (ironSourceBannerLayout != null) {
            ironSourceBannerLayout.e();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.b
    public final void c(C1361r c1361r) {
        IronLog.INTERNAL.verbose(c1361r.b());
        a((int) IronSourceConstants.BN_INSTANCE_PRESENT_SCREEN, c1361r, (Object[][]) null);
        IronSourceBannerLayout ironSourceBannerLayout = this.f11328b;
        if (ironSourceBannerLayout != null) {
            ironSourceBannerLayout.d();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.b
    public final void d(C1361r c1361r) {
        IronLog.INTERNAL.verbose(c1361r.b());
        a((int) IronSourceConstants.BN_INSTANCE_LEFT_APPLICATION, c1361r, (Object[][]) null);
        IronSourceBannerLayout ironSourceBannerLayout = this.f11328b;
        if (ironSourceBannerLayout != null) {
            ironSourceBannerLayout.f();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.b
    public final void e(C1361r c1361r) {
        IronLog.INTERNAL.verbose(c1361r.b());
        a((int) IronSourceConstants.BN_INSTANCE_SHOW, c1361r, (Object[][]) null);
        a((int) IronSourceConstants.BN_CALLBACK_SHOW, "");
    }
}
