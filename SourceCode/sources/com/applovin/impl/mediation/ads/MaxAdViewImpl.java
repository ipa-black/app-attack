package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.d;
import com.applovin.impl.sdk.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.utils.r;
import com.applovin.impl.sdk.v;
import com.applovin.impl.sdk.y;
import com.applovin.impl.sdk.z;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes.dex */
public class MaxAdViewImpl extends com.applovin.impl.mediation.ads.a implements d.a, e.a, z.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4713a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxAdView f4714b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4715c;

    /* renamed from: d  reason: collision with root package name */
    private final View f4716d;

    /* renamed from: e  reason: collision with root package name */
    private long f4717e;

    /* renamed from: f  reason: collision with root package name */
    private com.applovin.impl.mediation.a.b f4718f;

    /* renamed from: g  reason: collision with root package name */
    private String f4719g;

    /* renamed from: h  reason: collision with root package name */
    private String f4720h;
    private final a i;
    private final c j;
    private final d k;
    private final y l;
    private final z m;
    private final Object n;
    private com.applovin.impl.mediation.a.b o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends b {
        private a() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            v vVar = MaxAdViewImpl.this.logger;
            if (v.a()) {
                MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Calling ad load failed callback for publisher: " + MaxAdViewImpl.this.adListener);
            }
            k.a(MaxAdViewImpl.this.adListener, str, maxError, true);
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.t) {
                v vVar = MaxAdViewImpl.this.logger;
                if (v.a()) {
                    MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Precache ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.H().destroyAd(maxAd);
                return;
            }
            com.applovin.impl.mediation.a.b bVar = (com.applovin.impl.mediation.a.b) maxAd;
            bVar.e(MaxAdViewImpl.this.f4719g);
            bVar.f(MaxAdViewImpl.this.f4720h);
            if (bVar.o() == null) {
                MaxAdViewImpl.this.sdk.H().destroyAd(bVar);
                onAdLoadFailed(bVar.getAdUnitId(), new MaxErrorImpl(-5001, "Ad view not fully loaded"));
                return;
            }
            MaxAdViewImpl.this.a(bVar);
            if (bVar.C()) {
                long D = bVar.D();
                MaxAdViewImpl.this.sdk.D();
                if (v.a()) {
                    MaxAdViewImpl.this.sdk.D().b(MaxAdViewImpl.this.tag, "Scheduling banner ad refresh " + D + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                }
                MaxAdViewImpl.this.k.a(D);
                if (MaxAdViewImpl.this.k.f() || MaxAdViewImpl.this.q) {
                    v vVar2 = MaxAdViewImpl.this.logger;
                    if (v.a()) {
                        MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Pausing ad refresh for publisher");
                    }
                    MaxAdViewImpl.this.k.d();
                }
            }
            v vVar3 = MaxAdViewImpl.this.logger;
            if (v.a()) {
                MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Calling ad load success callback for publisher: " + MaxAdViewImpl.this.adListener);
            }
            k.a(MaxAdViewImpl.this.adListener, maxAd, true);
        }
    }

    /* loaded from: classes.dex */
    private abstract class b implements a.InterfaceC0065a, MaxAdListener, MaxAdRevenueListener, MaxAdViewAdListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f4729a;

        private b() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.o)) {
                k.d(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.o)) {
                if ((MaxAdViewImpl.this.o.E() || MaxAdViewImpl.this.x) && this.f4729a) {
                    this.f4729a = false;
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                k.h(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            if (maxAd.equals(MaxAdViewImpl.this.o)) {
                k.a(MaxAdViewImpl.this.adListener, maxAd, maxError, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.o)) {
                k.b(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.o)) {
                if ((MaxAdViewImpl.this.o.E() || MaxAdViewImpl.this.x) && !MaxAdViewImpl.this.k.f()) {
                    this.f4729a = true;
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                k.g(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.o)) {
                k.c(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            k.a(MaxAdViewImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            k.a(MaxAdViewImpl.this.revenueListener, maxAd, true);
        }
    }

    /* loaded from: classes.dex */
    private class c extends b {
        private c() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            v vVar = MaxAdViewImpl.this.logger;
            if (v.a()) {
                MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Failed to precache ad for refresh with error code: " + maxError.getCode());
            }
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.t) {
                v vVar = MaxAdViewImpl.this.logger;
                if (v.a()) {
                    MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.H().destroyAd(maxAd);
                return;
            }
            v vVar2 = MaxAdViewImpl.this.logger;
            if (v.a()) {
                MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Successfully pre-cached ad for refresh");
            }
            MaxAdViewImpl.this.a(maxAd);
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdView maxAdView, View view, n nVar, Context context) {
        super(str, maxAdFormat, "MaxAdView", nVar);
        this.f4715c = UUID.randomUUID().toString().toLowerCase(Locale.US);
        this.f4717e = Long.MAX_VALUE;
        this.n = new Object();
        this.o = null;
        this.t = false;
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.f4713a = context.getApplicationContext();
        this.f4714b = maxAdView;
        this.f4716d = view;
        this.i = new a();
        this.j = new c();
        this.k = new d(nVar, this);
        this.l = new y(maxAdView, nVar);
        this.m = new z(maxAdView, nVar, this);
        nVar.E().a(this);
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Created new MaxAdView (" + this + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.applovin.impl.mediation.a.b bVar;
        MaxAdView maxAdView = this.f4714b;
        if (maxAdView != null) {
            com.applovin.impl.sdk.utils.c.a(maxAdView, this.f4716d);
        }
        this.m.a();
        synchronized (this.n) {
            bVar = this.o;
        }
        if (bVar != null) {
            this.sdk.H().destroyAd(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        if (!Utils.bitMaskContainsFlag(j, ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.x)).longValue()) || this.y) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "No undesired viewability flags matched or forcing pre-cache - scheduling viewability");
            }
            this.p = false;
            b();
            return;
        }
        v vVar2 = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Undesired flags matched - current: " + Long.toBinaryString(j) + ", undesired: " + Long.toBinaryString(j));
        }
        v vVar3 = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Waiting for refresh timer to manually fire request");
        }
        this.p = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, com.applovin.impl.mediation.a.b bVar) {
        int z = bVar.z();
        int A = bVar.A();
        int dpToPx = z == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), z);
        int dpToPx2 = A != -1 ? AppLovinSdkUtils.dpToPx(view.getContext(), A) : -1;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(dpToPx, dpToPx2);
        } else {
            layoutParams.width = dpToPx;
            layoutParams.height = dpToPx2;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Pinning ad view to MAX ad view with width: " + dpToPx + " and height: " + dpToPx2 + ".");
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            for (int i : r.a(this.f4714b.getGravity(), 10, 14)) {
                layoutParams2.addRule(i);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.applovin.impl.mediation.a.b bVar) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl.2
            /* JADX WARN: Removed duplicated region for block: B:42:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 305
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.ads.MaxAdViewImpl.AnonymousClass2.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.a.b bVar, long j) {
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Scheduling viewability impression for ad...");
        }
        this.sdk.H().processViewabilityAdImpressionPostback(bVar, j, this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final d.a aVar, final a.InterfaceC0065a interfaceC0065a) {
        if (e()) {
            v.i(this.tag, "Failed to load new ad - this instance is already destroyed");
        } else {
            AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MaxAdViewImpl.this.o != null) {
                        long a2 = MaxAdViewImpl.this.l.a(MaxAdViewImpl.this.o);
                        MaxAdViewImpl.this.extraParameters.put("visible_ad_ad_unit_id", MaxAdViewImpl.this.o.getAdUnitId());
                        MaxAdViewImpl.this.extraParameters.put("viewability_flags", Long.valueOf(a2));
                    } else {
                        MaxAdViewImpl.this.extraParameters.remove("visible_ad_ad_unit_id");
                        MaxAdViewImpl.this.extraParameters.remove("viewability_flags");
                    }
                    int pxToDp = AppLovinSdkUtils.pxToDp(MaxAdViewImpl.this.f4714b.getContext(), MaxAdViewImpl.this.f4714b.getWidth());
                    int pxToDp2 = AppLovinSdkUtils.pxToDp(MaxAdViewImpl.this.f4714b.getContext(), MaxAdViewImpl.this.f4714b.getHeight());
                    MaxAdViewImpl.this.extraParameters.put("viewport_width", Integer.valueOf(pxToDp));
                    MaxAdViewImpl.this.extraParameters.put("viewport_height", Integer.valueOf(pxToDp2));
                    MaxAdViewImpl.this.extraParameters.put("auto_refresh_stopped", Boolean.valueOf(MaxAdViewImpl.this.k.f() || MaxAdViewImpl.this.q));
                    MaxAdViewImpl.this.extraParameters.put("auto_retries_disabled", Boolean.valueOf(MaxAdViewImpl.this.v));
                    v vVar = MaxAdViewImpl.this.logger;
                    if (v.a()) {
                        MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Loading " + MaxAdViewImpl.this.adFormat.getLabel().toLowerCase(Locale.ENGLISH) + " ad for '" + MaxAdViewImpl.this.adUnitId + "' and notifying " + interfaceC0065a + APSSharedUtil.TRUNCATE_SEPARATOR);
                    }
                    MaxAdViewImpl.this.sdk.H().loadAd(MaxAdViewImpl.this.adUnitId, MaxAdViewImpl.this.f4715c, MaxAdViewImpl.this.adFormat, aVar, MaxAdViewImpl.this.localExtraParameters, MaxAdViewImpl.this.extraParameters, MaxAdViewImpl.this.f4713a, interfaceC0065a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.s = false;
        if (this.r) {
            this.r = false;
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Rendering precache request ad: " + maxAd.getAdUnitId() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            this.i.onAdLoaded(maxAd);
            return;
        }
        v vVar2 = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Saving pre-cache ad...");
        }
        com.applovin.impl.mediation.a.b bVar = (com.applovin.impl.mediation.a.b) maxAd;
        this.f4718f = bVar;
        bVar.e(this.f4719g);
        this.f4718f.f(this.f4720h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxError maxError) {
        if (this.sdk.b(com.applovin.impl.sdk.c.a.n).contains(String.valueOf(maxError.getCode()))) {
            this.sdk.D();
            if (v.a()) {
                this.sdk.D().b(this.tag, "Ignoring banner ad refresh for error code " + maxError.getCode());
            }
        } else if (!this.q && !this.k.f()) {
            this.p = true;
            this.s = false;
            long longValue = ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.m)).longValue();
            if (longValue >= 0) {
                this.sdk.D();
                if (v.a()) {
                    this.sdk.D().b(this.tag, "Scheduling failed banner ad refresh " + longValue + " milliseconds from now for '" + this.adUnitId + "'...");
                }
                this.k.a(longValue);
            }
        } else {
            if (this.s) {
                v vVar = this.logger;
                if (v.a()) {
                    this.logger.b(this.tag, "Refresh pre-cache failed when auto-refresh is stopped");
                }
                this.s = false;
            }
            if (this.r) {
                v vVar2 = this.logger;
                if (v.a()) {
                    this.logger.b(this.tag, "Refresh pre-cache failed - calling ad load failed callback for publisher");
                }
                k.a(this.adListener, this.adUnitId, maxError);
            }
        }
    }

    private void a(String str, String str2) {
        if (AppLovinSdkExtraParameterKey.ALLOW_IMMEDIATE_AUTO_REFRESH_PAUSE.equalsIgnoreCase(str)) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Updated allow immediate auto-refresh pause and ad load to: " + str2);
            }
            this.u = Boolean.parseBoolean(str2);
        } else if (AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES.equalsIgnoreCase(str)) {
            v vVar2 = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Updated disable auto-retries to: " + str2);
            }
            this.v = Boolean.parseBoolean(str2);
        } else if (AppLovinSdkExtraParameterKey.DISABLE_PRECACHE.equalsIgnoreCase(str)) {
            v vVar3 = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Updated precached disabled to: " + str2);
            }
            this.w = Boolean.parseBoolean(str2);
        } else if (AppLovinSdkExtraParameterKey.DISABLE_AUTO_REFRESH_ON_AD_EXPAND.equals(str)) {
            v vVar4 = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Updated should stop auto-refresh on ad expand to: " + str2);
            }
            this.x = Boolean.parseBoolean(str2);
        } else if (AppLovinSdkExtraParameterKey.FORCE_PRECACHE.equals(str)) {
            v vVar5 = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Updated force precache to: " + str2);
            }
            this.y = Boolean.parseBoolean(str2);
        } else if (AppLovinSdkExtraParameterKey.IS_ADAPTIVE_BANNER.equalsIgnoreCase(str)) {
            v vVar6 = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Updated is adaptive banner to: " + str2);
            }
            this.z = Boolean.parseBoolean(str2);
            setLocalExtraParameter(str, str2);
        }
    }

    private void b() {
        if (d()) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Scheduling refresh precache request now");
            }
            this.s = true;
            this.sdk.V().a(new com.applovin.impl.sdk.e.z(this.sdk, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    v vVar2 = MaxAdViewImpl.this.logger;
                    if (v.a()) {
                        MaxAdViewImpl.this.logger.b(MaxAdViewImpl.this.tag, "Loading ad for pre-cache request...");
                    }
                    MaxAdViewImpl.this.a(d.a.SEQUENTIAL_OR_PRECACHE, MaxAdViewImpl.this.j);
                }
            }), com.applovin.impl.mediation.c.c.a(this.adFormat));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.applovin.impl.mediation.a.b bVar) {
        int height = this.f4714b.getHeight();
        int width = this.f4714b.getWidth();
        if (height > 0 || width > 0) {
            int pxToDp = AppLovinSdkUtils.pxToDp(this.f4713a, height);
            int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f4713a, width);
            MaxAdFormat format = bVar.getFormat();
            int height2 = (this.z ? format.getAdaptiveSize(pxToDp2, this.f4713a) : format.getSize()).getHeight();
            int width2 = format.getSize().getWidth();
            if (pxToDp < height2 || pxToDp2 < width2) {
                String str = "\n**************************************************\n`MaxAdView` size " + pxToDp2 + "x" + pxToDp + " dp smaller than required " + (this.z ? "adaptive " : "") + "size: " + width2 + "x" + height2 + " dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n";
                v vVar = this.logger;
                if (v.a()) {
                    this.logger.e("AppLovinSdk", str);
                }
            }
        }
    }

    private void c() {
        v vVar = this.logger;
        if (v.a()) {
            this.logger.b(this.tag, "Rendering for cached ad: " + this.f4718f + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        this.i.onAdLoaded(this.f4718f);
        this.f4718f = null;
    }

    private boolean d() {
        if (this.w) {
            return false;
        }
        return ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.y)).booleanValue();
    }

    private boolean e() {
        boolean z;
        synchronized (this.n) {
            z = this.t;
        }
        return z;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        a();
        if (this.f4718f != null) {
            this.sdk.H().destroyAd(this.f4718f);
        }
        synchronized (this.n) {
            this.t = true;
        }
        this.k.c();
        this.sdk.E().b(this);
        this.sdk.M().a(this.adUnitId, this.f4715c);
        super.destroy();
    }

    public MaxAdFormat getAdFormat() {
        return this.adFormat;
    }

    public String getPlacement() {
        return this.f4719g;
    }

    public void loadAd() {
        loadAd(d.a.PUBLISHER_INITIATED);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bd, code lost:
        if (com.applovin.impl.sdk.v.a() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
        if (com.applovin.impl.sdk.v.a() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c8, code lost:
        r4.logger.b(r4.tag, "Loading ad...");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd(com.applovin.impl.mediation.d.a r5) {
        /*
            r4 = this;
            com.applovin.impl.sdk.v r0 = r4.logger
            boolean r0 = com.applovin.impl.sdk.v.a()
            if (r0 == 0) goto L30
            com.applovin.impl.sdk.v r0 = r4.logger
            java.lang.String r1 = r4.tag
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = ""
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r3 = " Loading ad for "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r4.adUnitId
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "..."
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r0.b(r1, r2)
        L30:
            boolean r0 = r4.u
            r1 = 1
            if (r0 != 0) goto L48
            com.applovin.impl.sdk.n r0 = r4.sdk
            com.applovin.impl.sdk.c.b<java.lang.Boolean> r2 = com.applovin.impl.sdk.c.a.t
            java.lang.Object r0 = r0.a(r2)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L46
            goto L48
        L46:
            r0 = 0
            goto L49
        L48:
            r0 = r1
        L49:
            if (r0 == 0) goto L82
            com.applovin.impl.sdk.d r2 = r4.k
            boolean r2 = r2.f()
            if (r2 != 0) goto L82
            com.applovin.impl.sdk.d r2 = r4.k
            boolean r2 = r2.a()
            if (r2 == 0) goto L82
            java.lang.String r5 = r4.tag
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unable to load a new ad. An ad refresh has already been scheduled in "
            r0.<init>(r1)
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS
            com.applovin.impl.sdk.d r2 = r4.k
            long r2 = r2.b()
            long r1 = r1.toSeconds(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " seconds."
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.applovin.impl.sdk.v.i(r5, r0)
            return
        L82:
            java.lang.String r2 = "Loading ad..."
            if (r0 == 0) goto Lc0
            com.applovin.impl.mediation.a.b r0 = r4.f4718f
            if (r0 == 0) goto L9f
            com.applovin.impl.sdk.v r5 = r4.logger
            boolean r5 = com.applovin.impl.sdk.v.a()
            if (r5 == 0) goto L9b
            com.applovin.impl.sdk.v r5 = r4.logger
            java.lang.String r0 = r4.tag
            java.lang.String r1 = "Rendering cached ad"
            r5.b(r0, r1)
        L9b:
            r4.c()
            goto Ld4
        L9f:
            boolean r0 = r4.s
            if (r0 == 0) goto Lb7
            com.applovin.impl.sdk.v r5 = r4.logger
            boolean r5 = com.applovin.impl.sdk.v.a()
            if (r5 == 0) goto Lb4
            com.applovin.impl.sdk.v r5 = r4.logger
            java.lang.String r0 = r4.tag
            java.lang.String r2 = "Waiting for precache ad to load to render"
            r5.b(r0, r2)
        Lb4:
            r4.r = r1
            goto Ld4
        Lb7:
            com.applovin.impl.sdk.v r0 = r4.logger
            boolean r0 = com.applovin.impl.sdk.v.a()
            if (r0 == 0) goto Lcf
            goto Lc8
        Lc0:
            com.applovin.impl.sdk.v r0 = r4.logger
            boolean r0 = com.applovin.impl.sdk.v.a()
            if (r0 == 0) goto Lcf
        Lc8:
            com.applovin.impl.sdk.v r0 = r4.logger
            java.lang.String r1 = r4.tag
            r0.b(r1, r2)
        Lcf:
            com.applovin.impl.mediation.ads.MaxAdViewImpl$a r0 = r4.i
            r4.a(r5, r0)
        Ld4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.ads.MaxAdViewImpl.loadAd(com.applovin.impl.mediation.d$a):void");
    }

    @Override // com.applovin.impl.sdk.d.a
    public void onAdRefresh() {
        v vVar;
        String str;
        String str2;
        this.r = false;
        if (this.f4718f != null) {
            c();
        } else if (!d()) {
            v vVar2 = this.logger;
            if (v.a()) {
                vVar = this.logger;
                str = this.tag;
                str2 = "Refreshing ad from network...";
                vVar.b(str, str2);
            }
            loadAd(d.a.REFRESH);
        } else if (!this.p) {
            v vVar3 = this.logger;
            if (v.a()) {
                this.logger.e(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            }
            this.r = true;
        } else {
            v vVar4 = this.logger;
            if (v.a()) {
                vVar = this.logger;
                str = this.tag;
                str2 = "Refreshing ad from network due to viewability requirements not met for refresh request...";
                vVar.b(str, str2);
            }
            loadAd(d.a.REFRESH);
        }
    }

    @Override // com.applovin.impl.sdk.e.a
    public void onCreativeIdGenerated(String str, String str2) {
        com.applovin.impl.mediation.a.b bVar = this.o;
        if (bVar != null && bVar.f().equalsIgnoreCase(str)) {
            this.o.b(str2);
            k.a(this.adReviewListener, str2, this.o);
            return;
        }
        com.applovin.impl.mediation.a.b bVar2 = this.f4718f;
        if (bVar2 == null || !bVar2.f().equalsIgnoreCase(str)) {
            return;
        }
        this.f4718f.b(str2);
    }

    @Override // com.applovin.impl.sdk.z.a
    public void onLogVisibilityImpression() {
        a(this.o, this.l.a(this.o));
    }

    public void onWindowVisibilityChanged(int i) {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.r)).booleanValue() && this.k.a()) {
            if (r.a(i)) {
                v vVar = this.logger;
                if (v.a()) {
                    this.logger.b(this.tag, "Ad view visible");
                }
                this.k.h();
                return;
            }
            v vVar2 = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Ad view hidden");
            }
            this.k.g();
        }
    }

    public void setCustomData(String str) {
        if (this.o != null) {
            v.i(this.tag, "Custom data for Ad Unit ID (" + this.adUnitId + ") was set after load was called. For the ads to be correctly attributed to this custom data, please set the custom data before loading the " + this.adFormat.getLabel() + ".");
        }
        Utils.maybeLogCustomDataSizeLimit(str, this.tag);
        this.f4720h = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setExtraParameter(String str, String str2) {
        super.setExtraParameter(str, str2);
        a(str, str2);
    }

    public void setPlacement(String str) {
        if (this.o != null) {
            v.i(this.tag, "Placement for Ad Unit ID (" + this.adUnitId + ") was set after load was called. For the ads to be correctly attributed to this placement, please set the placement before loading the " + this.adFormat.getLabel() + ".");
        }
        this.f4719g = str;
    }

    public void setPublisherBackgroundColor(int i) {
        this.f4717e = i;
    }

    public void startAutoRefresh() {
        v vVar;
        String str;
        String str2;
        this.q = false;
        if (this.k.f()) {
            this.k.e();
            v vVar2 = this.logger;
            if (!v.a()) {
                return;
            }
            vVar = this.logger;
            str = this.tag;
            str2 = "Resumed auto-refresh with remaining time: " + this.k.b() + "ms";
        } else {
            v vVar3 = this.logger;
            if (!v.a()) {
                return;
            }
            vVar = this.logger;
            str = this.tag;
            str2 = "Ignoring call to startAutoRefresh() - ad refresh is not paused";
        }
        vVar.b(str, str2);
    }

    public void stopAutoRefresh() {
        if (this.o != null) {
            v vVar = this.logger;
            if (v.a()) {
                this.logger.b(this.tag, "Pausing auto-refresh with remaining time: " + this.k.b() + "ms");
            }
            this.k.d();
        } else if (this.u || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.t)).booleanValue()) {
            this.q = true;
        } else {
            v.h(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
        }
    }

    public String toString() {
        return "MaxAdView{adUnitId='" + this.adUnitId + "', adListener=" + (this.adListener == this.f4714b ? "this" : this.adListener) + ", isDestroyed=" + e() + '}';
    }
}
