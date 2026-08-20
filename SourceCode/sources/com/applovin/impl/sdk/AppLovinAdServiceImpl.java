package com.applovin.impl.sdk;

import android.content.Context;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.text.TextUtils;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.ad.c;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AppLovinAdServiceImpl implements AppLovinAdService {

    /* renamed from: a  reason: collision with root package name */
    private final n f5347a;

    /* renamed from: b  reason: collision with root package name */
    private final v f5348b;

    /* renamed from: d  reason: collision with root package name */
    private final Map<com.applovin.impl.sdk.ad.d, b> f5350d;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f5349c = new Handler(Looper.getMainLooper());

    /* renamed from: e  reason: collision with root package name */
    private final Object f5351e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f5352f = CollectionUtils.map();

    /* renamed from: g  reason: collision with root package name */
    private final AtomicReference<JSONObject> f5353g = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements AppLovinAdLoadListener {

        /* renamed from: b  reason: collision with root package name */
        private final b f5371b;

        private a(b bVar) {
            this.f5371b = bVar;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            HashSet<AppLovinAdLoadListener> hashSet;
            AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
            com.applovin.impl.sdk.ad.d adZone = appLovinAdImpl.getAdZone();
            if (!(appLovinAd instanceof com.applovin.impl.sdk.ad.f)) {
                AppLovinAdServiceImpl.this.f5347a.ac().a(appLovinAdImpl);
                appLovinAd = new com.applovin.impl.sdk.ad.f(adZone, AppLovinAdServiceImpl.this.f5347a);
            }
            synchronized (this.f5371b.f5372a) {
                hashSet = new HashSet(this.f5371b.f5374c);
                this.f5371b.f5374c.clear();
                this.f5371b.f5373b = false;
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : hashSet) {
                AppLovinAdServiceImpl.this.a(appLovinAd, appLovinAdLoadListener);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            HashSet<AppLovinAdLoadListener> hashSet;
            synchronized (this.f5371b.f5372a) {
                hashSet = new HashSet(this.f5371b.f5374c);
                this.f5371b.f5374c.clear();
                this.f5371b.f5373b = false;
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : hashSet) {
                AppLovinAdServiceImpl.this.a(i, appLovinAdLoadListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final Object f5372a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5373b;

        /* renamed from: c  reason: collision with root package name */
        final Collection<AppLovinAdLoadListener> f5374c;

        private b() {
            this.f5372a = new Object();
            this.f5374c = new HashSet();
        }

        public String toString() {
            return "AdLoadState{, isWaitingForAd=" + this.f5373b + ", pendingAdListeners=" + this.f5374c + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAdServiceImpl(n nVar) {
        this.f5347a = nVar;
        this.f5348b = nVar.D();
        Map<com.applovin.impl.sdk.ad.d, b> map = CollectionUtils.map(6);
        this.f5350d = map;
        map.put(com.applovin.impl.sdk.ad.d.g(), new b());
        map.put(com.applovin.impl.sdk.ad.d.h(), new b());
        map.put(com.applovin.impl.sdk.ad.d.i(), new b());
        map.put(com.applovin.impl.sdk.ad.d.j(), new b());
        map.put(com.applovin.impl.sdk.ad.d.k(), new b());
        map.put(com.applovin.impl.sdk.ad.d.l(), new b());
    }

    private Uri a(Uri uri, String str) {
        try {
            return Uri.parse(uri.getQueryParameter(str));
        } catch (Throwable unused) {
            this.f5347a.D();
            if (v.a()) {
                this.f5347a.D().d("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
                return null;
            }
            return null;
        }
    }

    private b a(com.applovin.impl.sdk.ad.d dVar) {
        b bVar;
        synchronized (this.f5351e) {
            bVar = this.f5350d.get(dVar);
            if (bVar == null) {
                bVar = new b();
                this.f5350d.put(dVar, bVar);
            }
        }
        return bVar;
    }

    private String a(String str, long j, int i, String str2, boolean z) {
        try {
            if (StringUtils.isValidString(str)) {
                return Uri.parse(str).buildUpon().appendQueryParameter("et_s", Long.toString(j)).appendQueryParameter("pv", Integer.toString((i < 0 || i > 100) ? 0 : 0)).appendQueryParameter("vid_ts", str2).appendQueryParameter("uvs", Boolean.toString(z)).build().toString();
            }
            return null;
        } catch (Throwable th) {
            if (v.a()) {
                this.f5348b.b("AppLovinAdService", "Unknown error parsing the video end url: " + str, th);
            }
            return null;
        }
    }

    private String a(String str, long j, long j2, List<Long> list, boolean z, int i) {
        if (StringUtils.isValidString(str)) {
            Uri.Builder appendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("et_ms", Long.toString(j)).appendQueryParameter("vs_ms", Long.toString(j2));
            if (list != null && list.size() > 0) {
                appendQueryParameter.appendQueryParameter("ec_ms", list.toString());
            }
            if (i != h.f5791a) {
                appendQueryParameter.appendQueryParameter("musw_ch", Boolean.toString(z));
                appendQueryParameter.appendQueryParameter("musw_st", Boolean.toString(h.a(i)));
            }
            return appendQueryParameter.build().toString();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f5349c.post(new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdLoadListener.failedToReceiveAd(i);
                } catch (Throwable th) {
                    v.c("AppLovinAdService", "Unable to notify listener about ad load failure", th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Uri uri, com.applovin.impl.sdk.ad.e eVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.b bVar) {
        if (Utils.openUri(appLovinAdView.getContext(), uri, this.f5347a)) {
            com.applovin.impl.sdk.utils.k.c(bVar.g(), eVar, appLovinAdView);
        }
        bVar.o();
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.e eVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.b bVar, Context context, n nVar) {
        if (uri == null || !StringUtils.isValidString(uri.getQuery())) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("AppLovinAdService", "Failed to execute Deep Link+ command - no query parameters found");
                return;
            }
            return;
        }
        Uri a2 = a(uri, "primaryUrl");
        List<Uri> b2 = b(uri, "primaryTrackingUrl");
        Uri a3 = a(uri, "fallbackUrl");
        List<Uri> b3 = b(uri, "fallbackTrackingUrl");
        if (a2 == null && a3 == null) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("AppLovinAdService", "Failed to parse both primary and backup URLs for Deep Link+ command");
                return;
            }
            return;
        }
        if (!a(a2, "primary", b2, eVar, appLovinAdView, bVar, context, nVar)) {
            a(a3, "backup", b3, eVar, appLovinAdView, bVar, context, nVar);
        }
        if (bVar != null) {
            bVar.o();
        }
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.adview.b bVar, final com.applovin.impl.adview.activity.b.a aVar) {
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Forwarding click " + uri);
        }
        eVar.setMaxAdValue("forwarding_clicked_url", uri.toString());
        String str = this.f5347a.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.CLOSE_AD_ON_FORWARDING_CLICK_SCHEME);
        if (StringUtils.isValidString(str) && Boolean.parseBoolean(str)) {
            if (aVar != null) {
                this.f5349c.post(new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (aVar != null) {
                            v unused = AppLovinAdServiceImpl.this.f5348b;
                            if (v.a()) {
                                AppLovinAdServiceImpl.this.f5348b.b("AppLovinAdService", "Dismissing ad after forwarding click");
                            }
                            aVar.h();
                        }
                    }
                });
            } else if (bVar == null || Utils.isBML(eVar.getSize())) {
            } else {
                if (v.a()) {
                    this.f5348b.b("AppLovinAdService", "Closing ad after forwarding click");
                }
                bVar.l();
            }
        }
    }

    private void a(com.applovin.impl.sdk.ad.d dVar, a aVar) {
        AppLovinAdImpl a2 = this.f5347a.ac().a(dVar);
        if (a2 == null) {
            a(new com.applovin.impl.sdk.e.k(dVar, aVar, this.f5347a));
            return;
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Using pre-loaded ad: " + a2 + " for " + dVar);
        }
        aVar.adReceived(a2);
    }

    private void a(com.applovin.impl.sdk.ad.d dVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (dVar == null) {
            throw new IllegalArgumentException("No zone specified");
        }
        if (appLovinAdLoadListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        this.f5347a.D();
        if (v.a()) {
            this.f5347a.D().b("AppLovinAdService", "Loading next ad of zone {" + dVar + "}...");
        }
        b a2 = a(dVar);
        synchronized (a2.f5372a) {
            a2.f5374c.add(appLovinAdLoadListener);
            if (!a2.f5373b) {
                a2.f5373b = true;
                a(dVar, new a(a2));
            } else if (v.a()) {
                this.f5348b.b("AppLovinAdService", "Already waiting on an ad load...");
            }
        }
    }

    private void a(com.applovin.impl.sdk.d.a aVar) {
        if (StringUtils.isValidString(aVar.a())) {
            this.f5347a.X().a(com.applovin.impl.sdk.network.h.o().c(aVar.a()).d(StringUtils.isValidString(aVar.b()) ? aVar.b() : null).b(aVar.c()).a(false).c(aVar.d()).a());
        } else if (v.a()) {
            this.f5348b.d("AppLovinAdService", "Requested a postback dispatch for a null URL; nothing to do...");
        }
    }

    private void a(com.applovin.impl.sdk.e.a aVar) {
        if (!this.f5347a.d()) {
            v.h("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.f5347a.a();
        this.f5347a.V().a(aVar, o.a.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AppLovinAd appLovinAd, final AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f5349c.post(new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    appLovinAdLoadListener.adReceived(appLovinAd);
                } catch (Throwable th) {
                    v.c("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
                }
            }
        });
    }

    private boolean a(Uri uri, String str, List<Uri> list, com.applovin.impl.sdk.ad.e eVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.b bVar, Context context, n nVar) {
        nVar.D();
        if (v.a()) {
            nVar.D().b("AppLovinAdService", "Opening " + str + " URL: " + uri);
        }
        boolean openUri = Utils.openUri(context, uri, nVar);
        nVar.D();
        boolean a2 = v.a();
        if (openUri) {
            if (a2) {
                nVar.D().b("AppLovinAdService", "URL opened successfully, dispatching tracking URLs: " + list);
            }
            for (Uri uri2 : list) {
                nVar.aa().dispatchPostbackAsync(uri2.toString(), null);
            }
            if (bVar != null) {
                com.applovin.impl.sdk.utils.k.c(bVar.g(), eVar, appLovinAdView);
            }
        } else if (a2) {
            nVar.D().e("AppLovinAdService", "URL failed to open");
        }
        return openUri;
    }

    private boolean a(String str) {
        String str2 = this.f5347a.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.FORWARDING_CLICK_SCHEME);
        return StringUtils.isValidString(str2) && StringUtils.isValidString(str) && str.equalsIgnoreCase(str2);
    }

    private List<Uri> b(Uri uri, String str) {
        List<String> queryParameters = uri.getQueryParameters(str);
        ArrayList arrayList = new ArrayList(queryParameters.size());
        for (String str2 : queryParameters) {
            try {
                arrayList.add(Uri.parse(str2));
            } catch (Throwable unused) {
                this.f5347a.D();
                if (v.a()) {
                    this.f5347a.D().d("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
                }
            }
        }
        return arrayList;
    }

    public void addCustomQueryParams(Map<String, String> map) {
        synchronized (this.f5352f) {
            this.f5352f.putAll(map);
        }
    }

    public AppLovinAd dequeueAd(com.applovin.impl.sdk.ad.d dVar) {
        AppLovinAdImpl b2 = this.f5347a.ac().b(dVar);
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Dequeued ad: " + b2 + " for zone: " + dVar + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        return b2;
    }

    public JSONObject getAndResetCustomPostBody() {
        return this.f5353g.getAndSet(null);
    }

    public Map<String, String> getAndResetCustomQueryParams() {
        Map<String, String> map;
        synchronized (this.f5352f) {
            map = CollectionUtils.map(this.f5352f);
            this.f5352f.clear();
        }
        return map;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public String getBidToken() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String a2 = this.f5347a.Y().a();
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return a2;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        a(com.applovin.impl.sdk.ad.d.a(appLovinAdSize, AppLovinAdType.REGULAR), appLovinAdLoadListener);
    }

    public void loadNextAd(String str, AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Loading next ad of zone {" + str + "} with size " + appLovinAdSize);
        }
        a(com.applovin.impl.sdk.ad.d.a(appLovinAdSize, AppLovinAdType.REGULAR, str), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForAdToken(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        StringBuilder sb;
        com.applovin.impl.sdk.e.a pVar;
        String trim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(trim)) {
            v.i("AppLovinAdService", "Invalid ad token specified");
            a(-8, appLovinAdLoadListener);
            return;
        }
        com.applovin.impl.sdk.ad.c cVar = new com.applovin.impl.sdk.ad.c(trim, this.f5347a);
        if (cVar.b() != c.a.REGULAR) {
            if (cVar.b() == c.a.AD_RESPONSE_JSON) {
                JSONObject d2 = cVar.d();
                if (d2 != null) {
                    com.applovin.impl.sdk.utils.i.f(d2, this.f5347a);
                    com.applovin.impl.sdk.utils.i.d(d2, this.f5347a);
                    com.applovin.impl.sdk.utils.i.c(d2, this.f5347a);
                    com.applovin.impl.sdk.utils.i.e(d2, this.f5347a);
                    f.a(this.f5347a);
                    if (JsonUtils.getJSONArray(d2, "ads", new JSONArray()).length() <= 0) {
                        if (v.a()) {
                            this.f5348b.e("AppLovinAdService", "No ad returned from the server for token: " + cVar);
                        }
                        appLovinAdLoadListener.failedToReceiveAd(204);
                        return;
                    }
                    if (v.a()) {
                        this.f5348b.b("AppLovinAdService", "Rendering ad for token: " + cVar);
                    }
                    pVar = new com.applovin.impl.sdk.e.p(d2, Utils.getZone(d2, this.f5347a), com.applovin.impl.sdk.ad.b.DECODED_AD_TOKEN_JSON, appLovinAdLoadListener, this.f5347a);
                } else {
                    sb = new StringBuilder("Unable to retrieve ad response JSON from token: ");
                }
            } else {
                sb = new StringBuilder("Invalid ad token specified: ");
            }
            v.i("AppLovinAdService", sb.append(cVar).toString());
            appLovinAdLoadListener.failedToReceiveAd(-8);
            return;
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Loading next ad for token: " + cVar);
        }
        pVar = new com.applovin.impl.sdk.e.l(cVar, appLovinAdLoadListener, this.f5347a);
        a(pVar);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneId(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No zone id specified");
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Loading next ad of zone {" + str + "}");
        }
        a(com.applovin.impl.sdk.ad.d.a(str), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneIds(List<String> list, AppLovinAdLoadListener appLovinAdLoadListener) {
        List<String> removeTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(list);
        if (removeTrimmedEmptyStrings == null || removeTrimmedEmptyStrings.isEmpty()) {
            v.i("AppLovinAdService", "No zones were provided");
            a(-7, appLovinAdLoadListener);
            return;
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Loading next ad for zones: " + removeTrimmedEmptyStrings);
        }
        a(new com.applovin.impl.sdk.e.j(removeTrimmedEmptyStrings, appLovinAdLoadListener, this.f5347a));
    }

    public void loadNextIncentivizedAd(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Loading next incentivized ad of zone {" + str + "}");
        }
        a(com.applovin.impl.sdk.ad.d.b(str), appLovinAdLoadListener);
    }

    public void maybeSubmitPersistentPostbacks(List<com.applovin.impl.sdk.d.a> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (com.applovin.impl.sdk.d.a aVar : list) {
            a(aVar);
        }
    }

    public void setCustomPostBody(JSONObject jSONObject) {
        this.f5353g.set(jSONObject);
    }

    public String toString() {
        return "AppLovinAdService{adLoadStates=" + this.f5350d + '}';
    }

    public void trackAndLaunchClick(final com.applovin.impl.sdk.ad.e eVar, final AppLovinAdView appLovinAdView, final com.applovin.impl.adview.b bVar, final Uri uri, PointF pointF, boolean z) {
        if (eVar == null) {
            if (v.a()) {
                this.f5348b.e("AppLovinAdService", "Unable to track ad view click. No ad specified");
                return;
            }
            return;
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Tracking click on an ad...");
        }
        maybeSubmitPersistentPostbacks(eVar.a(pointF, z));
        if (appLovinAdView == null || uri == null) {
            if (v.a()) {
                this.f5348b.e("AppLovinAdService", "Unable to launch click - adView has been prematurely destroyed");
            }
        } else if (eVar.isDirectDownloadEnabled()) {
            this.f5347a.aq().startDirectDownloadActivity(eVar, new ArrayService.DirectDownloadListener() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.4
                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDismissed() {
                    if (bVar != null) {
                        AppLovinAdServiceImpl.this.f5347a.ag().resumeForClick();
                        com.applovin.impl.sdk.utils.k.b(bVar.g(), eVar, appLovinAdView);
                    }
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDisplayed() {
                    AppLovinAdServiceImpl.this.f5347a.ag().pauseForClick();
                    com.applovin.impl.adview.b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.o();
                        com.applovin.impl.sdk.utils.k.a(bVar.g(), eVar, appLovinAdView);
                    }
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onFailure() {
                    AppLovinAdServiceImpl.this.a(uri, eVar, appLovinAdView, bVar);
                }
            });
        } else if (a(uri.getScheme())) {
            a(uri, eVar, bVar, (com.applovin.impl.adview.activity.b.a) null);
        } else if (Utils.isDeepLinkPlusUrl(uri)) {
            a(uri, eVar, appLovinAdView, bVar, appLovinAdView.getContext(), this.f5347a);
        } else {
            a(uri, eVar, appLovinAdView, bVar);
        }
    }

    public void trackAndLaunchVideoClick(com.applovin.impl.sdk.ad.e eVar, final Uri uri, PointF pointF, com.applovin.impl.adview.activity.b.a aVar, final Context context) {
        if (eVar == null) {
            if (v.a()) {
                this.f5348b.e("AppLovinAdService", "Unable to track video click. No ad specified");
                return;
            }
            return;
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Tracking VIDEO click on an ad...");
        }
        maybeSubmitPersistentPostbacks(eVar.a(pointF));
        if (eVar.isDirectDownloadEnabled()) {
            this.f5347a.aq().startDirectDownloadActivity(eVar, new ArrayService.DirectDownloadListener() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl.3
                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDismissed() {
                    AppLovinAdServiceImpl.this.f5347a.ag().resumeForClick();
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onAppDetailsDisplayed() {
                    AppLovinAdServiceImpl.this.f5347a.ag().pauseForClick();
                }

                @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
                public void onFailure() {
                    Utils.openUri(context, uri, AppLovinAdServiceImpl.this.f5347a);
                }
            });
        } else if (a(uri.getScheme())) {
            a(uri, eVar, (com.applovin.impl.adview.b) null, aVar);
        } else if (Utils.isDeepLinkPlusUrl(uri)) {
            a(uri, eVar, (AppLovinAdView) null, (com.applovin.impl.adview.b) null, context, this.f5347a);
        } else {
            Utils.openUri(context, uri, this.f5347a);
        }
    }

    public void trackAppKilled(com.applovin.impl.sdk.ad.e eVar) {
        if (eVar == null) {
            if (v.a()) {
                this.f5348b.e("AppLovinAdService", "Unable to track app killed. No ad specified");
                return;
            }
            return;
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Tracking app killed during ad...");
        }
        List<com.applovin.impl.sdk.d.a> as = eVar.as();
        if (as == null || as.isEmpty()) {
            if (v.a()) {
                this.f5348b.d("AppLovinAdService", "Unable to track app killed during AD #" + eVar.getAdIdNumber() + ". Missing app killed tracking URL.");
                return;
            }
            return;
        }
        for (com.applovin.impl.sdk.d.a aVar : as) {
            a(new com.applovin.impl.sdk.d.a(aVar.a(), aVar.b()));
        }
    }

    public void trackFullScreenAdClosed(com.applovin.impl.sdk.ad.e eVar, long j, List<Long> list, long j2, boolean z, int i) {
        boolean a2 = v.a();
        if (eVar == null) {
            if (a2) {
                this.f5348b.e("AppLovinAdService", "Unable to track ad closed. No ad specified.");
                return;
            }
            return;
        }
        if (a2) {
            this.f5348b.b("AppLovinAdService", "Tracking ad closed...");
        }
        List<com.applovin.impl.sdk.d.a> ar = eVar.ar();
        if (ar == null || ar.isEmpty()) {
            if (v.a()) {
                this.f5348b.d("AppLovinAdService", "Unable to track ad closed for AD #" + eVar.getAdIdNumber() + ". Missing ad close tracking URL." + eVar.getAdIdNumber());
                return;
            }
            return;
        }
        for (com.applovin.impl.sdk.d.a aVar : ar) {
            String a3 = a(aVar.a(), j, j2, list, z, i);
            String a4 = a(aVar.b(), j, j2, list, z, i);
            if (StringUtils.isValidString(a3)) {
                a(new com.applovin.impl.sdk.d.a(a3, a4));
            } else if (v.a()) {
                this.f5348b.e("AppLovinAdService", "Failed to parse url: " + aVar.a());
            }
        }
    }

    public void trackImpression(com.applovin.impl.sdk.ad.e eVar) {
        if (eVar == null) {
            if (v.a()) {
                this.f5348b.e("AppLovinAdService", "Unable to track impression click. No ad specified");
                return;
            }
            return;
        }
        if (v.a()) {
            this.f5348b.b("AppLovinAdService", "Tracking impression on ad...");
        }
        maybeSubmitPersistentPostbacks(eVar.at());
    }

    public void trackVideoEnd(com.applovin.impl.sdk.ad.e eVar, long j, int i, boolean z) {
        boolean a2 = v.a();
        if (eVar == null) {
            if (a2) {
                this.f5348b.e("AppLovinAdService", "Unable to track video end. No ad specified");
                return;
            }
            return;
        }
        if (a2) {
            this.f5348b.b("AppLovinAdService", "Tracking video end on ad...");
        }
        List<com.applovin.impl.sdk.d.a> aq = eVar.aq();
        if (aq == null || aq.isEmpty()) {
            if (v.a()) {
                this.f5348b.d("AppLovinAdService", "Unable to submit persistent postback for AD #" + eVar.getAdIdNumber() + ". Missing video end tracking URL.");
                return;
            }
            return;
        }
        String l = Long.toString(System.currentTimeMillis());
        for (com.applovin.impl.sdk.d.a aVar : aq) {
            if (StringUtils.isValidString(aVar.a())) {
                String a3 = a(aVar.a(), j, i, l, z);
                String a4 = a(aVar.b(), j, i, l, z);
                if (a3 != null) {
                    a(new com.applovin.impl.sdk.d.a(a3, a4));
                } else if (v.a()) {
                    this.f5348b.e("AppLovinAdService", "Failed to parse url: " + aVar.a());
                }
            } else if (v.a()) {
                this.f5348b.d("AppLovinAdService", "Requested a postback dispatch for an empty video end URL; nothing to do...");
            }
        }
    }
}
