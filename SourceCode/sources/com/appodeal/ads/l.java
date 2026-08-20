package com.appodeal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.n;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.r;
import com.appodeal.ads.unified.UnifiedAd;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.utils.ExchangeAd;
import com.appodeal.ads.utils.Log;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class l<AdRequestType extends r, UnifiedAdType extends UnifiedAd, UnifiedAdParamsType extends UnifiedAdParams, UnifiedAdCallbackType extends UnifiedAdCallback> implements c0 {

    /* renamed from: a  reason: collision with root package name */
    public final AdRequestType f6824a;

    /* renamed from: b  reason: collision with root package name */
    public final AdNetwork f6825b;

    /* renamed from: c  reason: collision with root package name */
    public f5 f6826c;

    /* renamed from: d  reason: collision with root package name */
    public String f6827d;

    /* renamed from: f  reason: collision with root package name */
    public UnifiedAdType f6829f;

    /* renamed from: g  reason: collision with root package name */
    public UnifiedAdParamsType f6830g;

    /* renamed from: h  reason: collision with root package name */
    public UnifiedAdCallbackType f6831h;
    public ExchangeAd i;
    public com.appodeal.ads.utils.campaign_frequency.b j;
    public JSONObject k;
    public final int m;
    public long n;
    public long o;
    public long p;
    public long q;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayList f6828e = new ArrayList();
    public int l = 1;
    public boolean r = false;

    /* loaded from: classes.dex */
    public interface a<AdRequestType extends r> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l(r rVar, AdNetwork adNetwork, @Deprecated d0 d0Var, int i) {
        this.f6824a = rVar;
        this.f6825b = adNetwork;
        this.f6826c = d0Var;
        this.f6827d = adNetwork.getName();
        this.m = i;
    }

    public abstract UnifiedAdType a(AdNetwork adNetwork);

    public abstract UnifiedAdParamsType a(int i);

    public final void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("exchange_ad")) {
            this.i = (ExchangeAd) bundle.getParcelable("exchange_ad");
        }
        String string = bundle.getString("id");
        if (!TextUtils.isEmpty(string)) {
            this.f6826c.a(string);
        }
        if (bundle.containsKey("demand_source")) {
            this.f6827d = bundle.getString("demand_source");
        }
        if (bundle.containsKey("ecpm")) {
            this.f6826c.a(bundle.getDouble("ecpm"));
        }
        if (bundle.containsKey("additional_stats")) {
            try {
                this.k = new JSONObject(bundle.getString("additional_stats"));
            } catch (Throwable th) {
                Log.log(th);
            }
        }
    }

    public void a(ContextProvider contextProvider, UnifiedAdParamsType unifiedadparamstype, Object obj, UnifiedAdCallbackType unifiedadcallbacktype, UnifiedAdType unifiedadtype) {
        unifiedadtype.load(contextProvider, unifiedadparamstype, obj, unifiedadcallbacktype);
    }

    public final void a(String str, double d2) {
        if (this.f6829f == null || f() || this.r) {
            return;
        }
        this.r = true;
        this.f6829f.onMediationLoss(str, d2);
    }

    public final void a(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("target_placements");
        this.f6828e.clear();
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                this.f6828e.add(optJSONArray.optString(i));
            }
        }
    }

    @Override // com.appodeal.ads.c0
    public final void b() {
        this.f6826c.b();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:7|8|(16:38|39|(2:43|44)|46|(1:12)|13|14|(1:16)(1:35)|17|18|19|20|21|(1:23)(1:30)|(1:29)(1:27)|28)|10|(0)|13|14|(0)(0)|17|18|19|20|21|(0)(0)|(1:25)|29|28) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0068, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0069, code lost:
        com.appodeal.ads.utils.Log.log(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007d, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007e, code lost:
        com.appodeal.ads.utils.Log.log(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c A[Catch: Exception -> 0x00c3, TRY_LEAVE, TryCatch #3 {Exception -> 0x00c3, blocks: (B:8:0x0012, B:22:0x003c, B:31:0x006c, B:36:0x0081, B:38:0x008b, B:41:0x00a1, B:43:0x00a9, B:45:0x00b7, B:39:0x0094, B:35:0x007e, B:30:0x0069, B:19:0x0036, B:32:0x0071, B:23:0x0041, B:25:0x0049, B:27:0x0055, B:26:0x0050, B:10:0x0022, B:14:0x0029, B:15:0x002e, B:16:0x002f), top: B:61:0x0012, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0049 A[Catch: Exception -> 0x0068, TryCatch #1 {Exception -> 0x0068, blocks: (B:23:0x0041, B:25:0x0049, B:27:0x0055, B:26:0x0050), top: B:58:0x0041, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050 A[Catch: Exception -> 0x0068, TryCatch #1 {Exception -> 0x0068, blocks: (B:23:0x0041, B:25:0x0049, B:27:0x0055, B:26:0x0050), top: B:58:0x0041, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008b A[Catch: Exception -> 0x00c3, TryCatch #3 {Exception -> 0x00c3, blocks: (B:8:0x0012, B:22:0x003c, B:31:0x006c, B:36:0x0081, B:38:0x008b, B:41:0x00a1, B:43:0x00a9, B:45:0x00b7, B:39:0x0094, B:35:0x007e, B:30:0x0069, B:19:0x0036, B:32:0x0071, B:23:0x0041, B:25:0x0049, B:27:0x0055, B:26:0x0050, B:10:0x0022, B:14:0x0029, B:15:0x002e, B:16:0x002f), top: B:61:0x0012, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094 A[Catch: Exception -> 0x00c3, TryCatch #3 {Exception -> 0x00c3, blocks: (B:8:0x0012, B:22:0x003c, B:31:0x006c, B:36:0x0081, B:38:0x008b, B:41:0x00a1, B:43:0x00a9, B:45:0x00b7, B:39:0x0094, B:35:0x007e, B:30:0x0069, B:19:0x0036, B:32:0x0071, B:23:0x0041, B:25:0x0049, B:27:0x0055, B:26:0x0050, B:10:0x0022, B:14:0x0029, B:15:0x002e, B:16:0x002f), top: B:61:0x0012, inners: #0, #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(int r7) {
        /*
            r6 = this;
            com.appodeal.ads.utils.ExchangeAd r0 = r6.i
            if (r0 == 0) goto L7
            r0.trackImpression(r7)
        L7:
            com.appodeal.ads.utils.campaign_frequency.b r7 = r6.j
            if (r7 == 0) goto Lc7
            com.appodeal.ads.context.b r0 = com.appodeal.ads.context.b.f6583b
            com.appodeal.ads.context.f r0 = r0.f6584a
            r0.getApplicationContext()
            com.appodeal.ads.utils.campaign_frequency.a r0 = r7.f7750a     // Catch: java.lang.Exception -> Lc3
            com.appodeal.ads.storage.o r1 = com.appodeal.ads.utils.campaign_frequency.a.f7747b     // Catch: java.lang.Exception -> Lc3
            java.lang.String r0 = r0.f7749a     // Catch: java.lang.Exception -> Lc3
            java.lang.String r0 = r1.e(r0)     // Catch: java.lang.Exception -> Lc3
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Lc3
            if (r1 != 0) goto L39
            boolean r1 = com.appodeal.ads.utils.campaign_frequency.a.f7748c     // Catch: java.lang.Exception -> L35
            if (r1 != 0) goto L2f
            if (r0 == 0) goto L29
            goto L2f
        L29:
            java.lang.AssertionError r0 = new java.lang.AssertionError     // Catch: java.lang.Exception -> L35
            r0.<init>()     // Catch: java.lang.Exception -> L35
            throw r0     // Catch: java.lang.Exception -> L35
        L2f:
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L35
            r1.<init>(r0)     // Catch: java.lang.Exception -> L35
            goto L3a
        L35:
            r0 = move-exception
            com.appodeal.ads.utils.Log.log(r0)     // Catch: java.lang.Exception -> Lc3
        L39:
            r1 = 0
        L3a:
            if (r1 != 0) goto L41
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> Lc3
            r1.<init>()     // Catch: java.lang.Exception -> Lc3
        L41:
            java.lang.String r0 = r7.f7753d     // Catch: java.lang.Exception -> L68
            boolean r0 = r1.has(r0)     // Catch: java.lang.Exception -> L68
            if (r0 == 0) goto L50
            java.lang.String r0 = r7.f7753d     // Catch: java.lang.Exception -> L68
            org.json.JSONArray r0 = r1.getJSONArray(r0)     // Catch: java.lang.Exception -> L68
            goto L55
        L50:
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: java.lang.Exception -> L68
            r0.<init>()     // Catch: java.lang.Exception -> L68
        L55:
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L68
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            r4 = 60
            long r2 = r2 / r4
            r0.put(r2)     // Catch: java.lang.Exception -> L68
            java.lang.String r2 = r7.f7753d     // Catch: java.lang.Exception -> L68
            r1.put(r2, r0)     // Catch: java.lang.Exception -> L68
            goto L6c
        L68:
            r0 = move-exception
            com.appodeal.ads.utils.Log.log(r0)     // Catch: java.lang.Exception -> Lc3
        L6c:
            com.appodeal.ads.utils.campaign_frequency.a r0 = r7.f7750a     // Catch: java.lang.Exception -> Lc3
            r0.getClass()     // Catch: java.lang.Exception -> Lc3
            com.appodeal.ads.storage.o r2 = com.appodeal.ads.utils.campaign_frequency.a.f7747b     // Catch: java.lang.Exception -> L7d
            java.lang.String r0 = r0.f7749a     // Catch: java.lang.Exception -> L7d
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L7d
            r2.a(r0, r1)     // Catch: java.lang.Exception -> L7d
            goto L81
        L7d:
            r0 = move-exception
            com.appodeal.ads.utils.Log.log(r0)     // Catch: java.lang.Exception -> Lc3
        L81:
            java.util.HashMap r0 = com.appodeal.ads.utils.campaign_frequency.b.l     // Catch: java.lang.Exception -> Lc3
            java.lang.String r1 = r7.f7752c     // Catch: java.lang.Exception -> Lc3
            boolean r1 = r0.containsKey(r1)     // Catch: java.lang.Exception -> Lc3
            if (r1 == 0) goto L94
            java.lang.String r1 = r7.f7752c     // Catch: java.lang.Exception -> Lc3
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> Lc3
            java.util.HashMap r0 = (java.util.HashMap) r0     // Catch: java.lang.Exception -> Lc3
            goto L9f
        L94:
            java.util.HashMap r1 = new java.util.HashMap     // Catch: java.lang.Exception -> Lc3
            r1.<init>()     // Catch: java.lang.Exception -> Lc3
            java.lang.String r2 = r7.f7752c     // Catch: java.lang.Exception -> Lc3
            r0.put(r2, r1)     // Catch: java.lang.Exception -> Lc3
            r0 = r1
        L9f:
            if (r0 == 0) goto Lb6
            java.lang.String r1 = r7.f7753d     // Catch: java.lang.Exception -> Lc3
            boolean r1 = r0.containsKey(r1)     // Catch: java.lang.Exception -> Lc3
            if (r1 == 0) goto Lb6
            java.lang.String r1 = r7.f7753d     // Catch: java.lang.Exception -> Lc3
            java.lang.Object r1 = r0.get(r1)     // Catch: java.lang.Exception -> Lc3
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Exception -> Lc3
            int r1 = r1.intValue()     // Catch: java.lang.Exception -> Lc3
            goto Lb7
        Lb6:
            r1 = 0
        Lb7:
            int r1 = r1 + 1
            java.lang.String r7 = r7.f7753d     // Catch: java.lang.Exception -> Lc3
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Exception -> Lc3
            r0.put(r7, r1)     // Catch: java.lang.Exception -> Lc3
            goto Lc7
        Lc3:
            r7 = move-exception
            com.appodeal.ads.utils.Log.log(r7)
        Lc7:
            UnifiedAdType extends com.appodeal.ads.unified.UnifiedAd r7 = r6.f6829f
            if (r7 == 0) goto Lce
            r7.onImpression()
        Lce:
            long r0 = r6.p
            r2 = 0
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 != 0) goto Ldc
            long r0 = java.lang.System.currentTimeMillis()
            r6.p = r0
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.l.b(int):void");
    }

    public abstract UnifiedAdCallbackType c();

    public final AdRequestType d() {
        return this.f6824a;
    }

    public final JSONObject e() {
        return this.k;
    }

    public final boolean f() {
        return !this.f6828e.isEmpty();
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getAdUnitName() {
        return this.f6826c.getAdUnitName();
    }

    @Override // com.appodeal.ads.AdUnit
    public final double getEcpm() {
        return this.f6826c.getEcpm();
    }

    @Override // com.appodeal.ads.AdUnit
    public final long getExpTime() {
        return this.f6826c.getExpTime();
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getId() {
        return this.f6826c.getId();
    }

    @Override // com.appodeal.ads.AdUnit
    public final int getImpressionInterval() {
        return this.f6826c.getImpressionInterval();
    }

    @Override // com.appodeal.ads.AdUnit
    public final JSONObject getJsonData() {
        return this.f6826c.getJsonData();
    }

    @Override // com.appodeal.ads.AdUnit
    public final int getLoadingTimeout() {
        int loadingTimeout = this.f6826c.getLoadingTimeout();
        return loadingTimeout > 0 ? loadingTimeout : this.m;
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getMediatorName() {
        return this.f6826c.getMediatorName();
    }

    @Override // com.appodeal.ads.AdUnit
    public final e0 getRequestResult() {
        return this.f6826c.getRequestResult();
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getStatus() {
        return this.f6826c.getStatus();
    }

    public final void h() {
        ExchangeAd exchangeAd = this.i;
        if (exchangeAd != null) {
            exchangeAd.trackClick();
        }
        com.appodeal.ads.utils.campaign_frequency.b bVar = this.j;
        if (bVar != null) {
            try {
                com.appodeal.ads.utils.campaign_frequency.a.f7747b.a(bVar.f7750a.f7749a, System.currentTimeMillis());
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
        UnifiedAdType unifiedadtype = this.f6829f;
        if (unifiedadtype != null) {
            unifiedadtype.onClicked();
        }
        if (this.o == 0) {
            this.o = System.currentTimeMillis();
        }
    }

    /* renamed from: i */
    public void g() {
        UnifiedAdType unifiedadtype = this.f6829f;
        if (unifiedadtype != null) {
            unifiedadtype.onDestroy();
        }
    }

    @Override // com.appodeal.ads.AdUnit
    public final boolean isAsync() {
        return this.f6826c.isAsync();
    }

    @Override // com.appodeal.ads.AdUnit
    public final Boolean isMuted() {
        return this.f6826c.isMuted();
    }

    @Override // com.appodeal.ads.AdUnit
    public final boolean isPrecache() {
        return this.f6826c.isPrecache();
    }

    public final void j() {
        if (this.f6829f == null || f() || this.r) {
            return;
        }
        this.r = true;
        String id = this.f6826c.getId();
        if (!TextUtils.isEmpty(id) && TextUtils.getTrimmedLength(id) > 5) {
            id = id.substring(0, 5) + APSSharedUtil.TRUNCATE_SEPARATOR;
        }
        Log.log(this.f6824a.n().getDisplayName(), LogConstants.EVENT_NOTIFY_MEDIATION_RESULT, String.format(Locale.ENGLISH, "(winner): %s - eCPM: %.2f, id: %s", n5.a(this.f6826c.getStatus()), Double.valueOf(this.f6826c.getEcpm()), id));
        this.f6829f.onMediationWin();
    }

    public final void k() {
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.l$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                l.this.g();
            }
        });
    }

    public LoadingError l() {
        return null;
    }

    public final String toString() {
        return getClass().getSimpleName() + "[@" + Integer.toHexString(hashCode()) + "]: " + this.f6826c.getId();
    }

    public final void a(com.appodeal.ads.context.b bVar, r rVar, int i, n.a aVar) {
        JSONObject optJSONObject = this.f6826c.getJsonData().optJSONObject(Constants.CAMPAIGN_FREQUENCY);
        if (optJSONObject != null) {
            com.appodeal.ads.utils.campaign_frequency.b a2 = com.appodeal.ads.utils.campaign_frequency.b.a(optJSONObject, this.f6826c.getJsonData().optString("package"));
            this.j = a2;
            if (a2 != null && !a2.a(bVar.getApplicationContext())) {
                rVar.d(this);
                aVar.a(LoadingError.Canceled);
                return;
            }
        }
        LoadingError l = l();
        if (l == null) {
            l = this.f6825b.verifyLoadAvailability(rVar.n());
        }
        if (l != null) {
            aVar.a(l);
            return;
        }
        k kVar = new k(this, aVar, rVar, i, bVar);
        this.f6825b.initialize(bVar, this, new h(rVar, new u2(this.f6825b.getName())), kVar);
    }
}
