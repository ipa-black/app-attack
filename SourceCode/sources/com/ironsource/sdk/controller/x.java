package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.amazon.aps.shared.APSAnalytics;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.environment.a;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.sdk.controller.f;
import com.ironsource.sdk.controller.k;
import com.ironsource.sdk.controller.r;
import com.ironsource.sdk.controller.v;
import com.ironsource.sdk.f.a;
import com.ironsource.sdk.g.d;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.unity3d.services.core.request.metrics.AdOperationMetric;
import io.bidmachine.utils.IabUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class x extends WebView implements DownloadListener, m, com.ironsource.sdk.k.c {
    private static String ab = "success";
    private static String ac = "fail";

    /* renamed from: b  reason: collision with root package name */
    public static String f11803b = "is_store";

    /* renamed from: c  reason: collision with root package name */
    public static String f11804c = "external_url";

    /* renamed from: d  reason: collision with root package name */
    public static String f11805d = "secondary_web_view";
    private static int y;
    private String A;
    private String B;
    private Map<String, String> C;
    private com.ironsource.sdk.k.b D;
    private boolean E;
    private boolean F;
    private CountDownTimer G;
    private int H;
    private int I;
    private String J;
    private FrameLayout K;
    private WebChromeClient.CustomViewCallback L;
    private com.ironsource.sdk.j.a.d M;
    private com.ironsource.sdk.j.a.c N;
    private com.ironsource.sdk.j.e O;
    private com.ironsource.sdk.j.a.b P;
    private Boolean Q;
    private String R;
    private com.ironsource.sdk.controller.f S;
    private Object T;
    private boolean U;
    private j V;
    private com.ironsource.sdk.controller.e W;

    /* renamed from: a  reason: collision with root package name */
    String f11806a;
    private com.ironsource.sdk.service.Connectivity.b aa;

    /* renamed from: e  reason: collision with root package name */
    b f11807e;

    /* renamed from: f  reason: collision with root package name */
    public CountDownTimer f11808f;

    /* renamed from: g  reason: collision with root package name */
    a f11809g;

    /* renamed from: h  reason: collision with root package name */
    View f11810h;
    FrameLayout i;
    g j;
    String k;
    w l;
    com.ironsource.sdk.g.b m;
    q n;
    r o;
    v p;
    k q;
    com.ironsource.sdk.controller.a r;
    l s;
    y t;
    com.ironsource.sdk.controller.c u;
    com.ironsource.sdk.j.g v;
    private final com.ironsource.environment.e.a w;
    private String x;
    private final String z;

    /* loaded from: classes3.dex */
    class a extends WebChromeClient {
        private a() {
        }

        /* synthetic */ a(x xVar, byte b2) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public final View getVideoLoadingProgressView() {
            FrameLayout frameLayout = new FrameLayout(x.this.u.a());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return frameLayout;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            Logger.i("MyApplication", consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebChromeClient(this);
            webView2.setWebViewClient(new c(x.this, (byte) 0));
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            Logger.i("onCreateWindow", "onCreateWindow");
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public final void onHideCustomView() {
            Logger.i("Test", "onHideCustomView");
            if (x.this.f11810h == null) {
                return;
            }
            x.this.f11810h.setVisibility(8);
            x.this.K.removeView(x.this.f11810h);
            x.this.f11810h = null;
            x.this.K.setVisibility(8);
            x.this.L.onCustomViewHidden();
            x.this.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            Logger.i("Test", "onShowCustomView");
            x.this.setVisibility(8);
            if (x.this.f11810h != null) {
                Logger.i("Test", "mCustomView != null");
                customViewCallback.onCustomViewHidden();
                return;
            }
            Logger.i("Test", "mCustomView == null");
            x.this.K.addView(view);
            x.this.f11810h = view;
            x.this.L = customViewCallback;
            x.this.K.setVisibility(0);
        }
    }

    /* loaded from: classes3.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        d.e f11846a;

        /* renamed from: b  reason: collision with root package name */
        String f11847b;

        public b(d.e eVar, String str) {
            this.f11846a = eVar;
            this.f11847b = str;
        }
    }

    /* loaded from: classes3.dex */
    class c extends WebViewClient {
        private c() {
        }

        /* synthetic */ c(x xVar, byte b2) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e(x.this.f11806a, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Activity a2 = x.this.u.a();
            Intent intent = new Intent(a2, OpenUrlActivity.class);
            intent.putExtra(x.f11804c, str);
            intent.putExtra(x.f11805d, false);
            a2.startActivity(intent);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public class d {

        /* loaded from: classes3.dex */
        public class a {
            public a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public final void a(boolean z, String str, com.ironsource.sdk.g.f fVar) {
                fVar.a(z ? x.ab : x.ac, str);
                x.a(x.this, fVar.toString(), z, (String) null, (String) null);
            }

            public final void a(boolean z, String str, JSONObject jSONObject) {
                try {
                    jSONObject.put(z ? x.ab : x.ac, str);
                    x.a(x.this, jSONObject.toString(), z, (String) null, (String) null);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    e2.getMessage();
                }
            }
        }

        public d() {
        }

        private void a(String str, boolean z) {
            com.ironsource.sdk.g.c a2 = x.this.V.a(d.e.Interstitial, str);
            if (a2 != null) {
                a2.f12030f = z;
            }
        }

        private void a(JSONObject jSONObject) {
            try {
                FeaturesManager featuresManager = FeaturesManager.getInstance();
                if (featuresManager.a().isEmpty()) {
                    return;
                }
                jSONObject.put("nativeFeatures", new JSONArray((Collection) featuresManager.a()));
            } catch (Exception e2) {
                com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.m, new com.ironsource.sdk.a.a().a("callfailreason", e2.getMessage()).f11500a);
                Logger.d(x.this.f11806a, "getControllerConfig Error while adding supported features data from FeaturesManager");
            }
        }

        private void a(JSONObject jSONObject, String str) {
            if (a(str)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str);
                    jSONObject.putOpt("testerABGroup", jSONObject2.get("testerABGroup"));
                    jSONObject.putOpt("testFriendlyName", jSONObject2.get("testFriendlyName"));
                } catch (JSONException unused) {
                    Logger.d(x.this.f11806a, "getControllerConfig Error while parsing Tester AB Group parameters");
                }
            }
        }

        private static boolean a(String str) {
            if (TextUtils.isEmpty(str) || str.contains("-1")) {
                return false;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getString("testerABGroup").isEmpty()) {
                    return false;
                }
                return !jSONObject.getString("testFriendlyName").isEmpty();
            } catch (JSONException e2) {
                e2.printStackTrace();
                return false;
            }
        }

        private void b(JSONObject jSONObject) {
            try {
                jSONObject.put("controllerSourceData", x.this.S.f());
            } catch (Exception unused) {
            }
        }

        @JavascriptInterface
        public void adClicked(String str) {
            Logger.i(x.this.f11806a, "adClicked(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            String d2 = fVar.d("productType");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                return;
            }
            final d.e e2 = x.e(x.this, d2);
            final com.ironsource.sdk.j.a.a b2 = x.this.b(e2);
            if (e2 == null || b2 == null) {
                return;
            }
            x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.8
                @Override // java.lang.Runnable
                public final void run() {
                    b2.b(e2, fetchDemandSourceId);
                }
            });
        }

        @JavascriptInterface
        public void adCredited(final String str) {
            final boolean z;
            final boolean z2;
            final String str2;
            com.ironsource.sdk.g.c a2;
            Log.d(x.this.x, "adCredited(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            String d2 = fVar.d("credits");
            boolean z3 = false;
            final int parseInt = d2 != null ? Integer.parseInt(d2) : 0;
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            final String d3 = fVar.d("productType");
            if (TextUtils.isEmpty(d3)) {
                Log.d(x.this.x, "adCredited | product type is missing");
            }
            if (d.e.Interstitial.toString().equalsIgnoreCase(d3)) {
                if (!x.this.a(d.e.Interstitial.toString()) || (a2 = x.this.V.a(d.e.Interstitial, fetchDemandSourceId)) == null) {
                    return;
                }
                if (a2.f12028d != null && a2.f12028d.containsKey("rewarded")) {
                    z3 = Boolean.parseBoolean(a2.f12028d.get("rewarded"));
                }
                if (z3) {
                    x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.28
                        @Override // java.lang.Runnable
                        public final void run() {
                            x.this.N.b(fetchDemandSourceId, parseInt);
                        }
                    });
                    return;
                }
                return;
            }
            String d4 = fVar.d("total");
            final int parseInt2 = d4 != null ? Integer.parseInt(d4) : 0;
            if (!d.e.OfferWall.toString().equalsIgnoreCase(d3)) {
                z = false;
                z2 = false;
                str2 = null;
            } else if (fVar.b(InAppPurchaseMetaData.KEY_SIGNATURE) || fVar.b("timestamp") || fVar.b("totalCreditsFlag")) {
                x.a(x.this, str, false, "One of the keys are missing: signature/timestamp/totalCreditsFlag", (String) null);
                return;
            } else {
                if (fVar.d(InAppPurchaseMetaData.KEY_SIGNATURE).equalsIgnoreCase(SDKUtils.getMD5(d4 + x.this.A + x.this.B))) {
                    z3 = true;
                } else {
                    x.a(x.this, str, false, "Controller signature is not equal to SDK signature", (String) null);
                }
                boolean e2 = fVar.e("totalCreditsFlag");
                str2 = fVar.d("timestamp");
                z2 = e2;
                z = z3;
            }
            if (x.this.a(d3)) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.27
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (d3.equalsIgnoreCase(d.e.RewardedVideo.toString())) {
                            x.this.M.a(fetchDemandSourceId, parseInt);
                        } else if (d3.equalsIgnoreCase(d.e.OfferWall.toString()) && z && x.this.O.onOWAdCredited(parseInt, parseInt2, z2) && !TextUtils.isEmpty(str2)) {
                            if (com.ironsource.sdk.utils.b.a().a(str2, x.this.A, x.this.B)) {
                                x.a(x.this, str, true, (String) null, (String) null);
                            } else {
                                x.a(x.this, str, false, "Time Stamp could not be stored", (String) null);
                            }
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void adUnitsReady(String str) {
            Logger.i(x.this.f11806a, "adUnitsReady(" + str + ")");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(new com.ironsource.sdk.g.f(str));
            final com.ironsource.sdk.g.a aVar = new com.ironsource.sdk.g.a(str);
            if (!aVar.f12016c) {
                x.a(x.this, str, false, "Num Of Ad Units Do Not Exist", (String) null);
                return;
            }
            x.a(x.this, str, true, (String) null, (String) null);
            String str2 = aVar.f12014a;
            if (d.e.RewardedVideo.toString().equalsIgnoreCase(str2) && x.this.a(str2)) {
                final int parseInt = Integer.parseInt(aVar.f12015b);
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.25
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (parseInt <= 0) {
                            x.this.M.b(fetchDemandSourceId);
                            return;
                        }
                        Log.d(x.this.f11806a, "onRVInitSuccess()");
                        x.this.M.a(d.e.RewardedVideo, fetchDemandSourceId, aVar);
                    }
                });
            }
        }

        @JavascriptInterface
        public void adViewAPI(String str) {
            try {
                Logger.i(x.this.f11806a, "adViewAPI(" + str + ")");
                x.this.r.a(new com.ironsource.sdk.g.f(str).toString(), new a());
            } catch (Exception e2) {
                e2.printStackTrace();
                Logger.i(x.this.f11806a, "adViewAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void bannerViewAPI(String str) {
            Logger.e(x.this.f11806a, "bannerViewAPI is not supported in this native version, only adview API");
        }

        @JavascriptInterface
        public void cleanAdInstance(String str) {
            d.e e2;
            Map<String, com.ironsource.sdk.g.c> a2;
            com.ironsource.sdk.g.c remove;
            try {
                Logger.i(x.this.f11806a, "cleanAdInstance(" + str + ")");
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                String d2 = fVar.d("productType");
                String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
                if (TextUtils.isEmpty(fetchDemandSourceId) || (e2 = x.e(x.this, d2)) == null) {
                    return;
                }
                j jVar = x.this.V;
                if (TextUtils.isEmpty(fetchDemandSourceId) || (a2 = jVar.a(e2)) == null || (remove = a2.remove(fetchDemandSourceId)) == null) {
                    return;
                }
                remove.f12031g = null;
                if (remove.f12028d != null) {
                    remove.f12028d.clear();
                }
                remove.f12028d = null;
            } catch (Exception e3) {
                x.a(x.this, str, false, e3.getMessage(), (String) null);
                e3.printStackTrace();
            }
        }

        @JavascriptInterface
        public void clearLastUpdateTimeData(String str) {
            try {
                com.ironsource.sdk.utils.b a2 = com.ironsource.sdk.utils.b.a();
                ArrayList arrayList = new ArrayList();
                String[] strArr = (String[]) a2.f12137a.getAll().keySet().toArray(new String[0]);
                SharedPreferences.Editor edit = a2.f12137a.edit();
                for (String str2 : strArr) {
                    if (com.ironsource.sdk.utils.b.b(str2)) {
                        arrayList.add(str2);
                        edit.remove(str2);
                    }
                }
                edit.apply();
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                if (!arrayList.isEmpty()) {
                    fVar.a("removedAdsLastUpdateTime", arrayList.toString());
                }
                x.a(x.this, fVar.toString(), true, (String) null, (String) null);
            } catch (Exception e2) {
                x.a(x.this, str, false, e2.getMessage(), (String) null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void deleteFile(String str) {
            try {
                Logger.i(x.this.f11806a, "deleteFile(" + str + ")");
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                String d2 = fVar.d("file");
                String d3 = fVar.d("path");
                if (d3 != null && !TextUtils.isEmpty(d2)) {
                    com.ironsource.sdk.h.c cVar = new com.ironsource.sdk.h.c(IronSourceStorageUtils.buildAbsolutePathToDirInCache(x.this.R, d3), d2);
                    if (!cVar.exists()) {
                        x.a(x.this, str, false, "File not exist", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                        return;
                    }
                    x.a(x.this, str, IronSourceStorageUtils.deleteFile(cVar), (String) null, (String) null);
                    return;
                }
                x.a(x.this, str, false, "Missing parameters for file", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            } catch (Exception e2) {
                x.a(x.this, str, false, e2.getMessage(), (String) null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void deleteFolder(String str) {
            try {
                Logger.i(x.this.f11806a, "deleteFolder(" + str + ")");
                String d2 = new com.ironsource.sdk.g.f(str).d("path");
                if (d2 == null) {
                    x.a(x.this, str, false, "Missing parameters for file", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    return;
                }
                com.ironsource.sdk.h.c cVar = new com.ironsource.sdk.h.c(IronSourceStorageUtils.buildAbsolutePathToDirInCache(x.this.R, d2));
                if (!cVar.exists()) {
                    x.a(x.this, str, false, "Folder not exist", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    return;
                }
                x.a(x.this, str, IronSourceStorageUtils.deleteFolder(cVar.getPath()), (String) null, (String) null);
            } catch (Exception e2) {
                x.a(x.this, str, false, e2.getMessage(), (String) null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void deviceDataAPI(String str) {
            try {
                Logger.i(x.this.f11806a, "deviceDataAPI(" + str + ")");
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                k kVar = x.this.q;
                String fVar2 = fVar.toString();
                a aVar = new a();
                JSONObject jSONObject = new JSONObject(fVar2);
                k.a aVar2 = new k.a((byte) 0);
                aVar2.f11720a = jSONObject.optString("deviceDataFunction");
                aVar2.f11721b = jSONObject.optJSONObject("deviceDataParams");
                aVar2.f11722c = jSONObject.optString(FirebaseAnalytics.Param.SUCCESS);
                aVar2.f11723d = jSONObject.optString("fail");
                if (!"getDeviceData".equals(aVar2.f11720a)) {
                    Logger.i(k.f11718b, "unhandled API request " + fVar2);
                    return;
                }
                String str2 = aVar2.f11722c;
                com.ironsource.sdk.g.f fVar3 = new com.ironsource.sdk.g.f();
                fVar3.a(SDKUtils.encodeString("sdCardAvailable"), SDKUtils.encodeString(String.valueOf(com.ironsource.environment.h.d())));
                fVar3.a(SDKUtils.encodeString("totalDeviceRAM"), SDKUtils.encodeString(String.valueOf(com.ironsource.environment.h.d(kVar.f11719a))));
                fVar3.a(SDKUtils.encodeString("isCharging"), SDKUtils.encodeString(String.valueOf(com.ironsource.environment.h.e(kVar.f11719a))));
                fVar3.a(SDKUtils.encodeString("chargingType"), SDKUtils.encodeString(String.valueOf(com.ironsource.environment.h.f(kVar.f11719a))));
                fVar3.a(SDKUtils.encodeString("airplaneMode"), SDKUtils.encodeString(String.valueOf(com.ironsource.environment.h.g(kVar.f11719a))));
                fVar3.a(SDKUtils.encodeString("stayOnWhenPluggedIn"), SDKUtils.encodeString(String.valueOf(com.ironsource.environment.h.h(kVar.f11719a))));
                aVar.a(true, str2, fVar3);
            } catch (Exception e2) {
                e2.printStackTrace();
                Logger.i(x.this.f11806a, "deviceDataAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void displayWebView(String str) {
            int i;
            Logger.i(x.this.f11806a, "displayWebView(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            boolean booleanValue = ((Boolean) fVar.c("display")).booleanValue();
            String d2 = fVar.d("productType");
            boolean e2 = fVar.e("standaloneView");
            String d3 = fVar.d("adViewId");
            String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            boolean e3 = fVar.e("ctrWVPauseResume");
            if (!booleanValue) {
                x.this.j = g.Gone;
                x.this.j();
                return;
            }
            x.this.U = fVar.e("immersive");
            boolean e4 = fVar.e("activityThemeTranslucent");
            if (x.this.j == g.Display) {
                Logger.i(x.this.f11806a, "State: " + x.this.j);
                return;
            }
            x.this.j = g.Display;
            Logger.i(x.this.f11806a, "State: " + x.this.j);
            Activity a2 = x.this.u.a();
            String str2 = x.this.k;
            int k = com.ironsource.environment.h.k(a2);
            if (e2) {
                final com.ironsource.sdk.controller.i iVar = new com.ironsource.sdk.controller.i(a2);
                iVar.addView(x.this.i);
                iVar.f11712b = x.this;
                iVar.f11712b.v = iVar;
                iVar.f11712b.requestFocus();
                iVar.f11711a = iVar.f11712b.u.a();
                if ((((Activity) iVar.f11711a).getWindow().getAttributes().flags & 1024) != 0 || (i = iVar.a()) <= 0) {
                    i = 0;
                }
                int b2 = iVar.b();
                try {
                    if (iVar.f11711a != null) {
                        int o = com.ironsource.environment.h.o(iVar.f11711a);
                        if (o == 1) {
                            iVar.setPadding(0, i, 0, b2);
                        } else if (o == 2) {
                            iVar.setPadding(0, i, b2, 0);
                        }
                    }
                } catch (Exception unused) {
                }
                ((Activity) iVar.f11711a).runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.i.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewGroup a3 = i.a(i.this);
                        if (a3 != null) {
                            a3.addView(i.this);
                        }
                    }
                });
                return;
            }
            Intent intent = e4 ? new Intent(a2, InterstitialActivity.class) : new Intent(a2, ControllerActivity.class);
            if (d.e.RewardedVideo.toString().equalsIgnoreCase(d2)) {
                if (MimeTypes.BASE_TYPE_APPLICATION.equals(str2)) {
                    str2 = SDKUtils.translateRequestedOrientation(com.ironsource.environment.h.m(a2));
                }
                intent.putExtra("productType", d.e.RewardedVideo.toString());
                x.this.m.f12021e = d.e.RewardedVideo.ordinal();
                x.this.m.f12019c = fetchDemandSourceId;
                if (x.this.a(d.e.RewardedVideo.toString())) {
                    x.this.M.c(d.e.RewardedVideo, fetchDemandSourceId);
                }
            } else if (d.e.OfferWall.toString().equalsIgnoreCase(d2)) {
                intent.putExtra("productType", d.e.OfferWall.toString());
                x.this.m.f12021e = d.e.OfferWall.ordinal();
            } else if (d.e.Interstitial.toString().equalsIgnoreCase(d2)) {
                if (MimeTypes.BASE_TYPE_APPLICATION.equals(str2)) {
                    str2 = SDKUtils.translateRequestedOrientation(com.ironsource.environment.h.m(a2));
                }
                intent.putExtra("productType", d.e.Interstitial.toString());
            }
            if (d3 != null) {
                intent.putExtra("adViewId", d3);
            }
            intent.putExtra("ctrWVPauseResume", e3);
            intent.setFlags(536870912);
            intent.putExtra("immersive", x.this.U);
            intent.putExtra("orientation_set_flag", str2);
            intent.putExtra("rotation_set_flag", k);
            x.this.f11807e = new b(x.e(x.this, d2), fetchDemandSourceId);
            a2.startActivity(intent);
        }

        @JavascriptInterface
        public void fileSystemAPI(final String str) {
            Logger.i(x.this.f11806a, "fileSystemAPI(" + str + ")");
            x.this.b(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.26
                @Override // java.lang.Runnable
                public final void run() {
                    char c2;
                    JSONObject a2;
                    try {
                        final l lVar = x.this.s;
                        JSONObject jSONObject = new JSONObject(str);
                        a aVar = new a();
                        final n nVar = new n(jSONObject);
                        final o oVar = new o(aVar);
                        try {
                            String str2 = nVar.f11729a;
                            JSONObject jSONObject2 = nVar.f11730b;
                            switch (str2.hashCode()) {
                                case -2073025383:
                                    if (str2.equals("saveFile")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1137024519:
                                    if (str2.equals("deleteFolder")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -318115535:
                                    if (str2.equals("getTotalSizeOfFiles")) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 537556755:
                                    if (str2.equals("updateAttributesOfFile")) {
                                        c2 = 5;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1764172231:
                                    if (str2.equals("deleteFile")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1953259713:
                                    if (str2.equals("getFiles")) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            if (c2 == 0) {
                                com.ironsource.sdk.h.c a3 = l.a(jSONObject2, lVar.f11724a);
                                String optString = jSONObject2.optString("fileUrl");
                                final com.ironsource.sdk.k.c cVar = new com.ironsource.sdk.k.c() { // from class: com.ironsource.sdk.controller.l.1
                                    @Override // com.ironsource.sdk.k.c
                                    public final void a(com.ironsource.sdk.h.c cVar2) {
                                        try {
                                            o oVar2 = oVar;
                                            n nVar2 = nVar;
                                            oVar2.a(nVar2, l.a(nVar2, cVar2.a()));
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                        }
                                    }

                                    @Override // com.ironsource.sdk.k.c
                                    public final void a(com.ironsource.sdk.h.c cVar2, com.ironsource.sdk.g.e eVar) {
                                        try {
                                            o oVar2 = oVar;
                                            n nVar2 = nVar;
                                            oVar2.b(nVar2, l.a(nVar2, eVar.f12065a));
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                };
                                final com.ironsource.sdk.h.b bVar = lVar.f11725b;
                                if (TextUtils.isEmpty(optString)) {
                                    throw new Exception("Missing params for file");
                                }
                                if (com.ironsource.environment.h.a(bVar.f12070b.f12082b) <= 0) {
                                    throw new Exception("no_disk_space");
                                }
                                if (!SDKUtils.isExternalStorageAvailable()) {
                                    throw new Exception("sotrage_unavailable");
                                }
                                if (!a.AnonymousClass1.b(bVar.f12069a)) {
                                    throw new Exception("no_network_connection");
                                }
                                com.ironsource.sdk.h.a aVar2 = bVar.f12071c;
                                String path = a3.getPath();
                                com.ironsource.sdk.k.c cVar2 = new com.ironsource.sdk.k.c() { // from class: com.ironsource.sdk.h.b.1
                                    @Override // com.ironsource.sdk.k.c
                                    public final void a(c cVar3) {
                                        cVar.a(cVar3);
                                        try {
                                            bVar.f12072d.a(cVar3.getName(), new JSONObject() { // from class: com.ironsource.sdk.h.b.1.1
                                                {
                                                    AnonymousClass1.this = this;
                                                    put("lastReferencedTime", System.currentTimeMillis());
                                                }
                                            });
                                        } catch (Exception e2) {
                                            e2.printStackTrace();
                                        }
                                    }

                                    @Override // com.ironsource.sdk.k.c
                                    public final void a(c cVar3, com.ironsource.sdk.g.e eVar) {
                                        cVar.a(cVar3, eVar);
                                    }
                                };
                                if (path != null) {
                                    aVar2.f12068a.put(path, cVar2);
                                }
                                if (!a3.exists()) {
                                    bVar.f12070b.a(a3, optString, bVar.f12071c);
                                    return;
                                }
                                Message message = new Message();
                                message.obj = a3;
                                message.what = 1015;
                                bVar.f12071c.sendMessage(message);
                                return;
                            }
                            if (c2 == 1) {
                                com.ironsource.sdk.h.c a4 = l.a(jSONObject2, lVar.f11724a);
                                com.ironsource.sdk.h.b bVar2 = lVar.f11725b;
                                if (a4.exists()) {
                                    if (!a4.delete()) {
                                        throw new Exception("Failed to delete file");
                                    }
                                    bVar2.f12072d.a(a4.getName());
                                }
                                a2 = l.a(nVar, a4.a());
                            } else if (c2 == 2) {
                                com.ironsource.sdk.h.c b2 = l.b(jSONObject2, lVar.f11724a);
                                com.ironsource.sdk.h.b bVar3 = lVar.f11725b;
                                if (b2.exists()) {
                                    ArrayList<com.ironsource.sdk.h.c> filesInFolderRecursive = IronSourceStorageUtils.getFilesInFolderRecursive(b2);
                                    if (!IronSourceStorageUtils.deleteFolderContentRecursive(b2) || !b2.delete()) {
                                        throw new Exception("Failed to delete folder");
                                    }
                                    bVar3.f12072d.a(filesInFolderRecursive);
                                }
                                a2 = l.a(nVar, b2.a());
                            } else if (c2 == 3) {
                                com.ironsource.sdk.h.c b3 = l.b(jSONObject2, lVar.f11724a);
                                com.ironsource.sdk.h.b bVar4 = lVar.f11725b;
                                if (!b3.exists()) {
                                    throw new Exception("Folder does not exist");
                                }
                                a2 = l.a(nVar, IronSourceStorageUtils.buildFilesMapOfDirectory(b3, bVar4.f12072d.a()));
                            } else if (c2 != 4) {
                                if (c2 != 5) {
                                    return;
                                }
                                com.ironsource.sdk.h.c a5 = l.a(jSONObject2, lVar.f11724a);
                                JSONObject optJSONObject = jSONObject2.optJSONObject("attributesToUpdate");
                                com.ironsource.sdk.h.b bVar5 = lVar.f11725b;
                                if (optJSONObject == null) {
                                    throw new Exception("Missing attributes to update");
                                }
                                if (!a5.exists()) {
                                    throw new Exception("File does not exist");
                                }
                                if (!bVar5.f12072d.b(a5.getName(), optJSONObject)) {
                                    throw new Exception("Failed to update attribute");
                                }
                                oVar.a(nVar, l.a(nVar, a5.a()));
                                return;
                            } else {
                                com.ironsource.sdk.h.c b4 = l.b(jSONObject2, lVar.f11724a);
                                if (!b4.exists()) {
                                    throw new Exception("Folder does not exist");
                                }
                                a2 = l.a(nVar, IronSourceStorageUtils.getTotalSizeOfDir(b4));
                            }
                            oVar.a(nVar, a2);
                        } catch (Exception e2) {
                            oVar.b(nVar, l.a(nVar, e2.getMessage()));
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        Logger.i(x.this.f11806a, "fileSystemAPI failed with exception " + e3.getMessage());
                    }
                }
            });
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x005b, code lost:
            if (android.text.TextUtils.isEmpty(r0) == false) goto L6;
         */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void getApplicationInfo(java.lang.String r5) {
            /*
                r4 = this;
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                java.lang.String r0 = com.ironsource.sdk.controller.x.b(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "getApplicationInfo("
                r1.<init>(r2)
                java.lang.StringBuilder r1 = r1.append(r5)
                java.lang.String r2 = ")"
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.ironsource.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                java.lang.String r0 = com.ironsource.sdk.controller.x.b(r0, r5)
                com.ironsource.sdk.controller.x r1 = com.ironsource.sdk.controller.x.this
                java.lang.String r1 = com.ironsource.sdk.controller.x.c(r1, r5)
                com.ironsource.sdk.g.f r2 = new com.ironsource.sdk.g.f
                r2.<init>(r5)
                java.lang.String r5 = "productType"
                java.lang.String r5 = r2.d(r5)
                java.lang.String r2 = com.ironsource.sdk.utils.SDKUtils.fetchDemandSourceId(r2)
                com.ironsource.sdk.controller.x r3 = com.ironsource.sdk.controller.x.this
                java.lang.Object[] r5 = com.ironsource.sdk.controller.x.b(r3, r5, r2)
                r2 = 0
                r2 = r5[r2]
                java.lang.String r2 = (java.lang.String) r2
                r3 = 1
                r5 = r5[r3]
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                boolean r5 = r5.booleanValue()
                if (r5 == 0) goto L57
                boolean r5 = android.text.TextUtils.isEmpty(r1)
                if (r5 != 0) goto L5e
                r0 = r1
                goto L5f
            L57:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L5e
                goto L5f
            L5e:
                r0 = 0
            L5f:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L74
                com.ironsource.sdk.controller.x r5 = com.ironsource.sdk.controller.x.this
                java.lang.String r1 = "onGetApplicationInfoSuccess"
                java.lang.String r3 = "onGetApplicationInfoFail"
                java.lang.String r5 = com.ironsource.sdk.controller.x.a(r5, r0, r2, r1, r3)
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                com.ironsource.sdk.controller.x.a(r0, r5)
            L74:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.x.d.getApplicationInfo(java.lang.String):void");
        }

        @JavascriptInterface
        public void getCachedFilesMap(String str) {
            x xVar;
            String str2;
            Logger.i(x.this.f11806a, "getCachedFilesMap(" + str + ")");
            String b2 = x.b(x.this, str);
            if (TextUtils.isEmpty(b2)) {
                return;
            }
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            if (fVar.a("path")) {
                String str3 = (String) fVar.c("path");
                if (IronSourceStorageUtils.isPathExist(x.this.R, str3)) {
                    x.this.b(x.a(x.this, b2, IronSourceStorageUtils.getCachedFilesMap(x.this.R, str3), "onGetCachedFilesMapSuccess", "onGetCachedFilesMapFail"));
                    return;
                }
                xVar = x.this;
                str2 = "path file does not exist on disk";
            } else {
                xVar = x.this;
                str2 = "path key does not exist";
            }
            x.a(xVar, str, false, str2, (String) null);
        }

        @JavascriptInterface
        public void getConnectivityInfo(String str) {
            String a2;
            Logger.i(x.this.f11806a, "getConnectivityInfo(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            String d2 = fVar.d(x.ab);
            String d3 = fVar.d(x.ac);
            JSONObject jSONObject = new JSONObject();
            if (x.this.aa != null) {
                com.ironsource.sdk.service.Connectivity.b bVar = x.this.aa;
                jSONObject = bVar.f12102a.c(x.this.getContext());
            }
            if (jSONObject.length() > 0) {
                a2 = x.a(x.this, d2, jSONObject.toString());
            } else {
                a2 = x.a(x.this, d3, x.a(x.this, "errMsg", "failed to retrieve connection info", null, null, null, null, null, null, null, false));
            }
            x.this.b(a2);
        }

        @JavascriptInterface
        public void getControllerConfig(String str) {
            Logger.i(x.this.f11806a, "getControllerConfig(" + str + ")");
            String d2 = new com.ironsource.sdk.g.f(str).d(x.ab);
            if (TextUtils.isEmpty(d2)) {
                return;
            }
            JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
            a(controllerConfigAsJSONObject);
            a(controllerConfigAsJSONObject, SDKUtils.getTesterParameters());
            b(controllerConfigAsJSONObject);
            x.this.b(x.a(x.this, d2, controllerConfigAsJSONObject.toString()));
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x007d A[Catch: Exception -> 0x0089, TRY_LEAVE, TryCatch #0 {Exception -> 0x0089, blocks: (B:5:0x0037, B:7:0x003d, B:9:0x0059, B:12:0x005f, B:14:0x0073, B:16:0x007d, B:13:0x006d), top: B:21:0x0037 }] */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void getDemandSourceState(java.lang.String r8) {
            /*
                r7 = this;
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                java.lang.String r0 = com.ironsource.sdk.controller.x.b(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "getMediationState("
                r1.<init>(r2)
                java.lang.StringBuilder r1 = r1.append(r8)
                java.lang.String r2 = ")"
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.ironsource.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.g.f r0 = new com.ironsource.sdk.g.f
                r0.<init>(r8)
                java.lang.String r1 = "demandSourceName"
                java.lang.String r2 = r0.d(r1)
                java.lang.String r3 = com.ironsource.sdk.utils.SDKUtils.fetchDemandSourceId(r0)
                java.lang.String r4 = "productType"
                java.lang.String r0 = r0.d(r4)
                if (r0 == 0) goto L98
                if (r2 == 0) goto L98
                com.ironsource.sdk.g.d$e r5 = com.ironsource.sdk.utils.SDKUtils.getProductType(r0)     // Catch: java.lang.Exception -> L89
                if (r5 == 0) goto L98
                com.ironsource.sdk.controller.x r6 = com.ironsource.sdk.controller.x.this     // Catch: java.lang.Exception -> L89
                com.ironsource.sdk.controller.j r6 = com.ironsource.sdk.controller.x.y(r6)     // Catch: java.lang.Exception -> L89
                com.ironsource.sdk.g.c r5 = r6.a(r5, r3)     // Catch: java.lang.Exception -> L89
                org.json.JSONObject r6 = new org.json.JSONObject     // Catch: java.lang.Exception -> L89
                r6.<init>()     // Catch: java.lang.Exception -> L89
                r6.put(r4, r0)     // Catch: java.lang.Exception -> L89
                r6.put(r1, r2)     // Catch: java.lang.Exception -> L89
                java.lang.String r0 = "demandSourceId"
                r6.put(r0, r3)     // Catch: java.lang.Exception -> L89
                if (r5 == 0) goto L6d
                int r0 = r5.f12027c     // Catch: java.lang.Exception -> L89
                r1 = -1
                if (r0 != r1) goto L5f
                goto L6d
            L5f:
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this     // Catch: java.lang.Exception -> L89
                java.lang.String r0 = com.ironsource.sdk.controller.x.b(r0, r8)     // Catch: java.lang.Exception -> L89
                java.lang.String r1 = "state"
                int r2 = r5.f12027c     // Catch: java.lang.Exception -> L89
                r6.put(r1, r2)     // Catch: java.lang.Exception -> L89
                goto L73
            L6d:
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this     // Catch: java.lang.Exception -> L89
                java.lang.String r0 = com.ironsource.sdk.controller.x.c(r0, r8)     // Catch: java.lang.Exception -> L89
            L73:
                java.lang.String r1 = r6.toString()     // Catch: java.lang.Exception -> L89
                boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L89
                if (r2 != 0) goto L98
                com.ironsource.sdk.controller.x r2 = com.ironsource.sdk.controller.x.this     // Catch: java.lang.Exception -> L89
                java.lang.String r0 = com.ironsource.sdk.controller.x.a(r2, r0, r1)     // Catch: java.lang.Exception -> L89
                com.ironsource.sdk.controller.x r1 = com.ironsource.sdk.controller.x.this     // Catch: java.lang.Exception -> L89
                com.ironsource.sdk.controller.x.a(r1, r0)     // Catch: java.lang.Exception -> L89
                goto L98
            L89:
                r0 = move-exception
                com.ironsource.sdk.controller.x r1 = com.ironsource.sdk.controller.x.this
                java.lang.String r2 = r0.getMessage()
                r3 = 0
                r4 = 0
                com.ironsource.sdk.controller.x.a(r1, r8, r4, r2, r3)
                r0.printStackTrace()
            L98:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.x.d.getDemandSourceState(java.lang.String):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0050, code lost:
            if (android.text.TextUtils.isEmpty(r0) == false) goto L6;
         */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void getDeviceStatus(java.lang.String r5) {
            /*
                r4 = this;
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                java.lang.String r0 = com.ironsource.sdk.controller.x.b(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "getDeviceStatus("
                r1.<init>(r2)
                java.lang.StringBuilder r1 = r1.append(r5)
                java.lang.String r2 = ")"
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.ironsource.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                java.lang.String r0 = com.ironsource.sdk.controller.x.b(r0, r5)
                com.ironsource.sdk.controller.x r1 = com.ironsource.sdk.controller.x.this
                java.lang.String r5 = com.ironsource.sdk.controller.x.c(r1, r5)
                com.ironsource.sdk.controller.x r1 = com.ironsource.sdk.controller.x.this
                android.content.Context r2 = r1.getContext()
                java.lang.Object[] r1 = com.ironsource.sdk.controller.x.a(r1, r2)
                r2 = 0
                r2 = r1[r2]
                java.lang.String r2 = (java.lang.String) r2
                r3 = 1
                r1 = r1[r3]
                java.lang.Boolean r1 = (java.lang.Boolean) r1
                boolean r1 = r1.booleanValue()
                if (r1 == 0) goto L4c
                boolean r0 = android.text.TextUtils.isEmpty(r5)
                if (r0 != 0) goto L53
                r0 = r5
                goto L54
            L4c:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L53
                goto L54
            L53:
                r0 = 0
            L54:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L69
                com.ironsource.sdk.controller.x r5 = com.ironsource.sdk.controller.x.this
                java.lang.String r1 = "onGetDeviceStatusSuccess"
                java.lang.String r3 = "onGetDeviceStatusFail"
                java.lang.String r5 = com.ironsource.sdk.controller.x.a(r5, r0, r2, r1, r3)
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                com.ironsource.sdk.controller.x.a(r0, r5)
            L69:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.x.d.getDeviceStatus(java.lang.String):void");
        }

        @JavascriptInterface
        public void getDeviceVolume(String str) {
            Logger.i(x.this.f11806a, "getDeviceVolume(" + str + ")");
            try {
                com.ironsource.sdk.utils.a.a(x.this.u.a());
                float b2 = com.ironsource.sdk.utils.a.b(x.this.u.a());
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                fVar.a("deviceVolume", String.valueOf(b2));
                x.a(x.this, fVar.toString(), true, (String) null, (String) null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void getOrientation(String str) {
            Activity a2 = x.this.u.a();
            if (a2 != null) {
                String b2 = x.b(x.this, str);
                String jSONObject = SDKUtils.getOrientation(a2).toString();
                if (TextUtils.isEmpty(b2)) {
                    return;
                }
                x.this.b(x.a(x.this, b2, jSONObject, "onGetOrientationSuccess", "onGetOrientationFail"));
            }
        }

        @JavascriptInterface
        public void getUserData(String str) {
            Logger.i(x.this.f11806a, "getUserData(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            if (!fVar.a("key")) {
                x.a(x.this, str, false, "key does not exist", (String) null);
                return;
            }
            String b2 = x.b(x.this, str);
            String d2 = fVar.d("key");
            String string = com.ironsource.sdk.utils.b.a().f12137a.getString(d2, null);
            if (string == null) {
                string = JsonUtils.EMPTY_JSON;
            }
            x.this.b(x.a(x.this, b2, x.a(x.this, d2, string, null, null, null, null, null, null, null, false)));
        }

        @JavascriptInterface
        public void iabTokenAPI(String str) {
            try {
                Logger.i(x.this.f11806a, "iabTokenAPI(" + str + ")");
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                v vVar = x.this.p;
                String fVar2 = fVar.toString();
                a aVar = new a();
                JSONObject jSONObject = new JSONObject(fVar2);
                v.a aVar2 = new v.a((byte) 0);
                aVar2.f11799a = jSONObject.optString("functionName");
                aVar2.f11800b = jSONObject.optJSONObject("functionParams");
                aVar2.f11801c = jSONObject.optString(FirebaseAnalytics.Param.SUCCESS);
                aVar2.f11802d = jSONObject.optString("fail");
                if ("updateToken".equals(aVar2.f11799a)) {
                    JSONObject jSONObject2 = aVar2.f11800b;
                    com.ironsource.sdk.g.f fVar3 = new com.ironsource.sdk.g.f();
                    try {
                        com.ironsource.sdk.service.c cVar = vVar.f11795c;
                        com.ironsource.mediationsdk.adunit.a.a.a("ctgp", jSONObject2);
                        vVar.f11794b.a(jSONObject2);
                        aVar.a(true, aVar2.f11801c, fVar3);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        Logger.i(v.f11793a, "updateToken exception " + e2.getMessage());
                        aVar.a(false, aVar2.f11802d, fVar3);
                        return;
                    }
                } else if (!"getToken".equals(aVar2.f11799a)) {
                    Logger.i(v.f11793a, "unhandled API request " + fVar2);
                    return;
                } else {
                    try {
                        aVar.a(true, aVar2.f11801c, SDKUtils.getControllerConfigAsJSONObject().optBoolean("oneToken") ? vVar.a() : vVar.f11794b.b(vVar.f11796d));
                        return;
                    } catch (Exception e3) {
                        String str2 = aVar2.f11802d;
                        String message = e3.getMessage();
                        com.ironsource.sdk.g.f fVar4 = new com.ironsource.sdk.g.f();
                        fVar4.a(x.ac, str2);
                        fVar4.a("data", message);
                        x.a(x.this, fVar4.toString(), false, (String) null, (String) null);
                        return;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                Logger.i(x.this.f11806a, "iabTokenAPI failed with exception " + e4.getMessage());
            }
            e4.printStackTrace();
            Logger.i(x.this.f11806a, "iabTokenAPI failed with exception " + e4.getMessage());
        }

        @JavascriptInterface
        public void initController(String str) {
            Logger.i(x.this.f11806a, "initController(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            if (x.this.f11808f != null) {
                x.this.f11808f.cancel();
                x.this.f11808f = null;
            }
            if (fVar.a("stage")) {
                String d2 = fVar.d("stage");
                if ("ready".equalsIgnoreCase(d2)) {
                    x.b(x.this, true);
                    x.this.W.b();
                } else if ("loaded".equalsIgnoreCase(d2)) {
                    x.this.W.a();
                } else if (!"failed".equalsIgnoreCase(d2)) {
                    Logger.i(x.this.f11806a, "No STAGE mentioned! should not get here!");
                } else {
                    x.this.W.a("controller js failed to initialize : " + fVar.d("errMsg"));
                }
            }
        }

        @JavascriptInterface
        public void omidAPI(final String str) {
            x.this.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.22
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Logger.i(x.this.f11806a, "omidAPI(" + str + ")");
                        x.this.n.a(new com.ironsource.sdk.g.f(str).toString(), new a());
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        Logger.i(x.this.f11806a, "omidAPI failed with exception " + e2.getMessage());
                    }
                }
            });
        }

        @JavascriptInterface
        public void onAdWindowsClosed(String str) {
            Logger.i(x.this.f11806a, "onAdWindowsClosed(" + str + ")");
            x.this.m.f12021e = -1;
            x.this.m.f12019c = null;
            x.this.f11807e = null;
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            String d2 = fVar.d("productType");
            String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            d.e e2 = x.e(x.this, d2);
            Log.d(x.this.x, "onAdClosed() with type " + e2);
            if (x.this.a(d2)) {
                x.this.a(e2, fetchDemandSourceId);
            }
        }

        @JavascriptInterface
        public void onCleanUpNonDisplayBannersSuccess(String str) {
            Logger.i(x.this.f11806a, "onCleanUpNonDisplayBannersSuccess() value=" + str);
        }

        @JavascriptInterface
        public void onGetApplicationInfoFail(String str) {
            Logger.i(x.this.f11806a, "onGetApplicationInfoFail(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onGetApplicationInfoFail", str);
        }

        @JavascriptInterface
        public void onGetApplicationInfoSuccess(String str) {
            Logger.i(x.this.f11806a, "onGetApplicationInfoSuccess(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onGetApplicationInfoSuccess", str);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapFail(String str) {
            Logger.i(x.this.f11806a, "onGetCachedFilesMapFail(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onGetCachedFilesMapFail", str);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapSuccess(String str) {
            Logger.i(x.this.f11806a, "onGetCachedFilesMapSuccess(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onGetCachedFilesMapSuccess", str);
        }

        @JavascriptInterface
        public void onGetDeviceStatusFail(String str) {
            Logger.i(x.this.f11806a, "onGetDeviceStatusFail(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onGetDeviceStatusFail", str);
        }

        @JavascriptInterface
        public void onGetDeviceStatusSuccess(String str) {
            Logger.i(x.this.f11806a, "onGetDeviceStatusSuccess(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onGetDeviceStatusSuccess", str);
        }

        @JavascriptInterface
        public void onGetUserCreditsFail(String str) {
            Logger.i(x.this.f11806a, "onGetUserCreditsFail(" + str + ")");
            final String d2 = new com.ironsource.sdk.g.f(str).d("errMsg");
            if (x.this.a(d.e.OfferWall.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.20
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        x.this.O.onGetOWCreditsFailed(str2);
                    }
                });
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onGetUserCreditsFail", str);
        }

        @JavascriptInterface
        public void onInitBannerFail(String str) {
            Logger.i(x.this.f11806a, "onInitBannerFail(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String d2 = fVar.d("errMsg");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                Logger.i(x.this.f11806a, "onInitBannerFail failed with no demand source");
                return;
            }
            com.ironsource.sdk.g.c a2 = x.this.V.a(d.e.Banner, fetchDemandSourceId);
            if (a2 != null) {
                a2.a(3);
            }
            if (x.this.a(d.e.Banner.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.17
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        Log.d(x.this.f11806a, "onBannerInitFail(message:" + str2 + ")");
                        x.this.P.a(d.e.Banner, fetchDemandSourceId, str2);
                    }
                });
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onInitBannerFail", str);
        }

        @JavascriptInterface
        public void onInitBannerSuccess(String str) {
            Logger.i(x.this.f11806a, "onInitBannerSuccess()");
            x.c(x.this, "onInitBannerSuccess", "true");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(new com.ironsource.sdk.g.f(str));
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                Logger.i(x.this.f11806a, "onInitBannerSuccess failed with no demand source");
            } else if (x.this.a(d.e.Banner.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.16
                    @Override // java.lang.Runnable
                    public final void run() {
                        Log.d(x.this.f11806a, "onBannerInitSuccess()");
                        x.this.P.a(d.e.Banner, fetchDemandSourceId, (com.ironsource.sdk.g.a) null);
                    }
                });
            }
        }

        @JavascriptInterface
        public void onInitInterstitialFail(String str) {
            Logger.i(x.this.f11806a, "onInitInterstitialFail(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String d2 = fVar.d("errMsg");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                Logger.i(x.this.f11806a, "onInitInterstitialSuccess failed with no demand source");
                return;
            }
            com.ironsource.sdk.g.c a2 = x.this.V.a(d.e.Interstitial, fetchDemandSourceId);
            if (a2 != null) {
                a2.a(3);
            }
            if (x.this.a(d.e.Interstitial.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        Log.d(x.this.f11806a, "onInterstitialInitFail(message:" + str2 + ")");
                        x.this.N.a(d.e.Interstitial, fetchDemandSourceId, str2);
                    }
                });
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onInitInterstitialFail", str);
        }

        @JavascriptInterface
        public void onInitInterstitialSuccess(String str) {
            Logger.i(x.this.f11806a, "onInitInterstitialSuccess()");
            x.c(x.this, "onInitInterstitialSuccess", "true");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(new com.ironsource.sdk.g.f(str));
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                Logger.i(x.this.f11806a, "onInitInterstitialSuccess failed with no demand source");
            } else if (x.this.a(d.e.Interstitial.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        Log.d(x.this.f11806a, "onInterstitialInitSuccess()");
                        x.this.N.a(d.e.Interstitial, fetchDemandSourceId, (com.ironsource.sdk.g.a) null);
                    }
                });
            }
        }

        @JavascriptInterface
        public void onInitOfferWallFail(String str) {
            Logger.i(x.this.f11806a, "onInitOfferWallFail(" + str + ")");
            x.this.m.i = false;
            final String d2 = new com.ironsource.sdk.g.f(str).d("errMsg");
            if (x.this.m.f12024h) {
                x.this.m.f12024h = false;
                if (x.this.a(d.e.OfferWall.toString())) {
                    x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str2 = d2;
                            if (str2 == null) {
                                str2 = "We're sorry, some error occurred. we will investigate it";
                            }
                            Log.d(x.this.f11806a, "onOfferWallInitFail(message:" + str2 + ")");
                            x.this.O.onOfferwallInitFail(str2);
                        }
                    });
                }
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onInitOfferWallFail", str);
        }

        @JavascriptInterface
        public void onInitOfferWallSuccess(String str) {
            x.c(x.this, "onInitOfferWallSuccess", "true");
            x.this.m.i = true;
            if (x.this.m.f12024h) {
                x.this.m.f12024h = false;
                if (x.this.a(d.e.OfferWall.toString())) {
                    x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.10
                        @Override // java.lang.Runnable
                        public final void run() {
                            Log.d(x.this.f11806a, "onOfferWallInitSuccess()");
                            x.this.O.onOfferwallInitSuccess();
                        }
                    });
                }
            }
        }

        @JavascriptInterface
        public void onInitRewardedVideoFail(String str) {
            Logger.i(x.this.f11806a, "onInitRewardedVideoFail(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String d2 = fVar.d("errMsg");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            com.ironsource.sdk.g.c a2 = x.this.V.a(d.e.RewardedVideo, fetchDemandSourceId);
            if (a2 != null) {
                a2.a(3);
            }
            if (x.this.a(d.e.RewardedVideo.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        Log.d(x.this.f11806a, "onRVInitFail(message:" + str2 + ")");
                        x.this.M.a(d.e.RewardedVideo, fetchDemandSourceId, str2);
                    }
                });
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onInitRewardedVideoFail", str);
        }

        @JavascriptInterface
        public void onLoadBannerFail(String str) {
            Logger.i(x.this.f11806a, "onLoadBannerFail()");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String d2 = fVar.d("errMsg");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            x.a(x.this, str, true, (String) null, (String) null);
            if (!TextUtils.isEmpty(fetchDemandSourceId) && x.this.a(d.e.Banner.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.19
                    @Override // java.lang.Runnable
                    public final void run() {
                        Log.d(x.this.f11806a, "onLoadBannerFail()");
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        x.this.P.d(fetchDemandSourceId, str2);
                    }
                });
            }
        }

        @JavascriptInterface
        public void onLoadBannerSuccess(String str) {
            Logger.i(x.this.f11806a, "onLoadBannerSuccess()");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            String d2 = fVar.d("adViewId");
            x.a(x.this, str, true, (String) null, (String) null);
            com.ironsource.sdk.c.e a2 = com.ironsource.sdk.c.d.a().a(d2);
            if (a2 == null) {
                x.this.P.d(fetchDemandSourceId, "not found view for the current adViewId= " + d2);
            } else if (a2 instanceof com.ironsource.sdk.c.a) {
                final com.ironsource.sdk.c.a aVar = (com.ironsource.sdk.c.a) a2;
                if (x.this.a(d.e.Banner.toString())) {
                    x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.18
                        @Override // java.lang.Runnable
                        public final void run() {
                            Log.d(x.this.f11806a, "onBannerLoadSuccess()");
                            x.this.P.a(fetchDemandSourceId, aVar);
                        }
                    });
                }
            }
        }

        @JavascriptInterface
        public void onLoadInterstitialFail(String str) {
            Logger.i(x.this.f11806a, "onLoadInterstitialFail(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String d2 = fVar.d("errMsg");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            x.a(x.this, str, true, (String) null, (String) null);
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                return;
            }
            a(fetchDemandSourceId, false);
            if (x.this.a(d.e.Interstitial.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        x.this.N.b(fetchDemandSourceId, str2);
                    }
                });
            }
            x.c(x.this, "onLoadInterstitialFail", "true");
        }

        @JavascriptInterface
        public void onLoadInterstitialSuccess(String str) {
            Logger.i(x.this.f11806a, "onLoadInterstitialSuccess(" + str + ")");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(new com.ironsource.sdk.g.f(str));
            a(fetchDemandSourceId, true);
            x.a(x.this, str, true, (String) null, (String) null);
            if (x.this.a(d.e.Interstitial.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.13
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.this.N.c(fetchDemandSourceId);
                    }
                });
            }
            x.c(x.this, "onLoadInterstitialSuccess", "true");
        }

        @JavascriptInterface
        public void onOfferWallGeneric(String str) {
            Logger.i(x.this.f11806a, "onOfferWallGeneric(" + str + ")");
        }

        @JavascriptInterface
        public void onShowInterstitialFail(String str) {
            Logger.i(x.this.f11806a, "onShowInterstitialFail(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String d2 = fVar.d("errMsg");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            x.a(x.this, str, true, (String) null, (String) null);
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                return;
            }
            a(fetchDemandSourceId, false);
            if (x.this.a(d.e.Interstitial.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        x.this.N.c(fetchDemandSourceId, str2);
                    }
                });
            }
            x.c(x.this, "onShowInterstitialFail", str);
        }

        @JavascriptInterface
        public void onShowInterstitialSuccess(String str) {
            Logger.i(x.this.f11806a, "onShowInterstitialSuccess(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(new com.ironsource.sdk.g.f(str));
            if (TextUtils.isEmpty(fetchDemandSourceId)) {
                Logger.i(x.this.f11806a, "onShowInterstitialSuccess called with no demand");
                return;
            }
            x.this.m.f12021e = d.e.Interstitial.ordinal();
            x.this.m.f12019c = fetchDemandSourceId;
            if (x.this.a(d.e.Interstitial.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.this.N.c(d.e.Interstitial, fetchDemandSourceId);
                        x.this.N.d(fetchDemandSourceId);
                    }
                });
                x.c(x.this, "onShowInterstitialSuccess", str);
            }
            a(fetchDemandSourceId, false);
        }

        @JavascriptInterface
        public void onShowOfferWallFail(String str) {
            Logger.i(x.this.f11806a, "onShowOfferWallFail(" + str + ")");
            final String d2 = new com.ironsource.sdk.g.f(str).d("errMsg");
            if (x.this.a(d.e.OfferWall.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        x.this.O.onOWShowFail(str2);
                    }
                });
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onShowOfferWallFail", str);
        }

        @JavascriptInterface
        public void onShowOfferWallSuccess(String str) {
            Logger.i(x.this.f11806a, "onShowOfferWallSuccess(" + str + ")");
            x.this.m.f12021e = d.e.OfferWall.ordinal();
            final String valueFromJsonObject = SDKUtils.getValueFromJsonObject(str, "placementId");
            if (x.this.a(d.e.OfferWall.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        x.this.O.onOWShowSuccess(valueFromJsonObject);
                    }
                });
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onShowOfferWallSuccess", str);
        }

        @JavascriptInterface
        public void onShowRewardedVideoFail(String str) {
            Logger.i(x.this.f11806a, "onShowRewardedVideoFail(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            final String d2 = fVar.d("errMsg");
            final String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
            if (x.this.a(d.e.RewardedVideo.toString())) {
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = d2;
                        if (str2 == null) {
                            str2 = "We're sorry, some error occurred. we will investigate it";
                        }
                        Log.d(x.this.f11806a, "onRVShowFail(message:" + d2 + ")");
                        x.this.M.a(fetchDemandSourceId, str2);
                    }
                });
            }
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onShowRewardedVideoFail", str);
        }

        @JavascriptInterface
        public void onShowRewardedVideoSuccess(String str) {
            Logger.i(x.this.f11806a, "onShowRewardedVideoSuccess(" + str + ")");
            x.a(x.this, str, true, (String) null, (String) null);
            x.c(x.this, "onShowRewardedVideoSuccess", str);
        }

        @JavascriptInterface
        public void onVideoStatusChanged(String str) {
            Log.d(x.this.f11806a, "onVideoStatusChanged(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            String d2 = fVar.d("productType");
            if (x.this.l == null || TextUtils.isEmpty(d2)) {
                return;
            }
            String d3 = fVar.d("status");
            if ("started".equalsIgnoreCase(d3)) {
                x.this.l.onVideoStarted();
            } else if ("paused".equalsIgnoreCase(d3)) {
                x.this.l.onVideoPaused();
            } else if ("playing".equalsIgnoreCase(d3)) {
                x.this.l.onVideoResumed();
            } else if ("ended".equalsIgnoreCase(d3)) {
                x.this.l.onVideoEnded();
            } else if ("stopped".equalsIgnoreCase(d3)) {
                x.this.l.onVideoStopped();
            } else {
                Logger.i(x.this.f11806a, "onVideoStatusChanged: unknown status: " + d3);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00b8 A[Catch: Exception -> 0x00bc, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bc, blocks: (B:3:0x003e, B:24:0x007e, B:26:0x0098, B:27:0x00b8, B:10:0x0058, B:13:0x0062, B:16:0x006c), top: B:32:0x003e }] */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void openUrl(java.lang.String r10) {
            /*
                r9 = this;
                com.ironsource.sdk.controller.x r0 = com.ironsource.sdk.controller.x.this
                java.lang.String r0 = com.ironsource.sdk.controller.x.b(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "openUrl("
                r1.<init>(r2)
                java.lang.StringBuilder r1 = r1.append(r10)
                java.lang.String r2 = ")"
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.ironsource.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.g.f r0 = new com.ironsource.sdk.g.f
                r0.<init>(r10)
                java.lang.String r1 = "url"
                java.lang.String r1 = r0.d(r1)
                java.lang.String r2 = "method"
                java.lang.String r2 = r0.d(r2)
                java.lang.String r3 = "package_name"
                java.lang.String r0 = r0.d(r3)
                com.ironsource.sdk.controller.x r3 = com.ironsource.sdk.controller.x.this
                com.ironsource.sdk.controller.c r3 = r3.u
                android.app.Activity r3 = r3.a()
                r4 = 0
                java.lang.String r2 = r2.toLowerCase()     // Catch: java.lang.Exception -> Lbc
                int r5 = r2.hashCode()     // Catch: java.lang.Exception -> Lbc
                r6 = -1455867212(0xffffffffa9393ab4, float:-4.112917E-14)
                r7 = 2
                r8 = 1
                if (r5 == r6) goto L6c
                r6 = 109770977(0x68af8e1, float:5.2275525E-35)
                if (r5 == r6) goto L62
                r6 = 1224424441(0x48fb3bf9, float:514527.78)
                if (r5 == r6) goto L58
                goto L76
            L58:
                java.lang.String r5 = "webview"
                boolean r2 = r2.equals(r5)     // Catch: java.lang.Exception -> Lbc
                if (r2 == 0) goto L76
                r2 = r8
                goto L77
            L62:
                java.lang.String r5 = "store"
                boolean r2 = r2.equals(r5)     // Catch: java.lang.Exception -> Lbc
                if (r2 == 0) goto L76
                r2 = r7
                goto L77
            L6c:
                java.lang.String r5 = "external_browser"
                boolean r2 = r2.equals(r5)     // Catch: java.lang.Exception -> Lbc
                if (r2 == 0) goto L76
                r2 = r4
                goto L77
            L76:
                r2 = -1
            L77:
                if (r2 == 0) goto Lb8
                if (r2 == r8) goto L98
                if (r2 == r7) goto L7e
                goto L97
            L7e:
                android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Exception -> Lbc
                java.lang.Class<com.ironsource.sdk.controller.OpenUrlActivity> r2 = com.ironsource.sdk.controller.OpenUrlActivity.class
                r0.<init>(r3, r2)     // Catch: java.lang.Exception -> Lbc
                java.lang.String r2 = com.ironsource.sdk.controller.x.f11804c     // Catch: java.lang.Exception -> Lbc
                r0.putExtra(r2, r1)     // Catch: java.lang.Exception -> Lbc
                java.lang.String r1 = com.ironsource.sdk.controller.x.f11803b     // Catch: java.lang.Exception -> Lbc
                r0.putExtra(r1, r8)     // Catch: java.lang.Exception -> Lbc
                java.lang.String r1 = com.ironsource.sdk.controller.x.f11805d     // Catch: java.lang.Exception -> Lbc
                r0.putExtra(r1, r8)     // Catch: java.lang.Exception -> Lbc
                r3.startActivity(r0)     // Catch: java.lang.Exception -> Lbc
            L97:
                return
            L98:
                android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Exception -> Lbc
                java.lang.Class<com.ironsource.sdk.controller.OpenUrlActivity> r2 = com.ironsource.sdk.controller.OpenUrlActivity.class
                r0.<init>(r3, r2)     // Catch: java.lang.Exception -> Lbc
                java.lang.String r2 = com.ironsource.sdk.controller.x.f11804c     // Catch: java.lang.Exception -> Lbc
                r0.putExtra(r2, r1)     // Catch: java.lang.Exception -> Lbc
                java.lang.String r1 = com.ironsource.sdk.controller.x.f11805d     // Catch: java.lang.Exception -> Lbc
                r0.putExtra(r1, r8)     // Catch: java.lang.Exception -> Lbc
                java.lang.String r1 = "immersive"
                com.ironsource.sdk.controller.x r2 = com.ironsource.sdk.controller.x.this     // Catch: java.lang.Exception -> Lbc
                boolean r2 = com.ironsource.sdk.controller.x.v(r2)     // Catch: java.lang.Exception -> Lbc
                r0.putExtra(r1, r2)     // Catch: java.lang.Exception -> Lbc
                r3.startActivity(r0)     // Catch: java.lang.Exception -> Lbc
                goto Lca
            Lb8:
                com.ironsource.environment.a.AnonymousClass1.a(r3, r1, r0)     // Catch: java.lang.Exception -> Lbc
                goto Lca
            Lbc:
                r0 = move-exception
                com.ironsource.sdk.controller.x r1 = com.ironsource.sdk.controller.x.this
                java.lang.String r2 = r0.getMessage()
                r3 = 0
                com.ironsource.sdk.controller.x.a(r1, r10, r4, r2, r3)
                r0.printStackTrace()
            Lca:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.x.d.openUrl(java.lang.String):void");
        }

        @JavascriptInterface
        public void pauseControllerWebview() {
            x.this.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.12
                @Override // java.lang.Runnable
                public final void run() {
                    x.this.k();
                }
            });
        }

        @JavascriptInterface
        public void permissionsAPI(String str) {
            com.ironsource.sdk.g.f fVar;
            String str2;
            try {
                Logger.i(x.this.f11806a, "permissionsAPI(" + str + ")");
                com.ironsource.sdk.g.f fVar2 = new com.ironsource.sdk.g.f(str);
                r rVar = x.this.o;
                String fVar3 = fVar2.toString();
                a aVar = new a();
                JSONObject jSONObject = new JSONObject(fVar3);
                r.a aVar2 = new r.a((byte) 0);
                aVar2.f11777a = jSONObject.optString("functionName");
                aVar2.f11778b = jSONObject.optJSONObject("functionParams");
                aVar2.f11779c = jSONObject.optString(FirebaseAnalytics.Param.SUCCESS);
                aVar2.f11780d = jSONObject.optString("fail");
                if ("getPermissions".equals(aVar2.f11777a)) {
                    JSONObject jSONObject2 = aVar2.f11778b;
                    fVar = new com.ironsource.sdk.g.f();
                    try {
                        fVar.a("permissions", com.ironsource.environment.c.a(rVar.f11776a, jSONObject2.getJSONArray("permissions")));
                        aVar.a(true, aVar2.f11779c, fVar);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        Logger.i(r.f11775b, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter " + e2.getMessage());
                        fVar.a("errMsg", e2.getMessage());
                        str2 = aVar2.f11780d;
                        aVar.a(false, str2, fVar);
                        return;
                    }
                } else if (!"isPermissionGranted".equals(aVar2.f11777a)) {
                    Logger.i(r.f11775b, "PermissionsJSAdapter unhandled API request " + fVar3);
                    return;
                } else {
                    JSONObject jSONObject3 = aVar2.f11778b;
                    fVar = new com.ironsource.sdk.g.f();
                    try {
                        String string = jSONObject3.getString("permission");
                        fVar.a("permission", string);
                        if (com.ironsource.environment.c.a(rVar.f11776a, string)) {
                            fVar.a("status", String.valueOf(com.ironsource.environment.c.b(rVar.f11776a, string)));
                            aVar.a(true, aVar2.f11779c, fVar);
                            return;
                        }
                        fVar.a("status", "unhandledPermission");
                        aVar.a(false, aVar2.f11780d, fVar);
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        fVar.a("errMsg", e3.getMessage());
                        str2 = aVar2.f11780d;
                        aVar.a(false, str2, fVar);
                        return;
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                Logger.i(x.this.f11806a, "permissionsAPI failed with exception " + e4.getMessage());
            }
            e4.printStackTrace();
            Logger.i(x.this.f11806a, "permissionsAPI failed with exception " + e4.getMessage());
        }

        @JavascriptInterface
        public void postAdEventNotification(String str) {
            try {
                Logger.i(x.this.f11806a, "postAdEventNotification(" + str + ")");
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                final String d2 = fVar.d("eventName");
                if (TextUtils.isEmpty(d2)) {
                    x.a(x.this, str, false, "eventName does not exist", (String) null);
                    return;
                }
                String d3 = fVar.d("dsName");
                String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(fVar);
                String str2 = !TextUtils.isEmpty(fetchDemandSourceId) ? fetchDemandSourceId : d3;
                final JSONObject jSONObject = (JSONObject) fVar.c("extData");
                String d4 = fVar.d("productType");
                final d.e e2 = x.e(x.this, d4);
                if (!x.this.a(d4)) {
                    x.a(x.this, str, false, "productType does not exist", (String) null);
                    return;
                }
                String b2 = x.b(x.this, str);
                if (!TextUtils.isEmpty(b2)) {
                    x.this.b(x.a(x.this, b2, x.a(x.this, "productType", d4, "eventName", d2, "demandSourceName", d3, "demandSourceId", str2, null, false), "postAdEventNotificationSuccess", "postAdEventNotificationFail"));
                }
                final String str3 = str2;
                x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (e2 != d.e.Interstitial && e2 != d.e.RewardedVideo && e2 != d.e.Banner) {
                            if (e2 == d.e.OfferWall) {
                                x.this.O.onOfferwallEventNotificationReceived(d2, jSONObject);
                                return;
                            }
                            return;
                        }
                        com.ironsource.sdk.j.a.a b3 = x.this.b(e2);
                        if (b3 != null) {
                            b3.a(e2, str3, d2, jSONObject);
                        }
                    }
                });
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }

        @JavascriptInterface
        public void removeCloseEventHandler(String str) {
            Logger.i(x.this.f11806a, "removeCloseEventHandler(" + str + ")");
            if (x.this.G != null) {
                x.this.G.cancel();
            }
            x.this.F = true;
        }

        @JavascriptInterface
        public void removeMessagingInterface(String str) {
            x.this.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.23
                @Override // java.lang.Runnable
                public final void run() {
                    x.this.removeJavascriptInterface("GenerateTokenForMessaging");
                }
            });
        }

        @JavascriptInterface
        public void requestToDestroyBanner(String str) {
            Logger.i(x.this.f11806a, "onCleanUpNonDisplayBannersFail() value=" + str);
        }

        @JavascriptInterface
        public void resumeControllerWebview() {
            x.this.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    x.this.l();
                }
            });
        }

        @JavascriptInterface
        public void saveFile(String str) {
            try {
                Logger.i(x.this.f11806a, "saveFile(" + str + ")");
                com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
                String d2 = fVar.d("path");
                String d3 = fVar.d("file");
                if (TextUtils.isEmpty(d3)) {
                    x.a(x.this, str, false, "Missing parameters for file", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    return;
                }
                com.ironsource.sdk.h.c cVar = new com.ironsource.sdk.h.c(IronSourceStorageUtils.buildAbsolutePathToDirInCache(x.this.R, d2), SDKUtils.getFileName(d3));
                if (com.ironsource.environment.h.a(x.this.R) <= 0) {
                    x.a(x.this, str, false, "no_disk_space", (String) null);
                } else if (!SDKUtils.isExternalStorageAvailable()) {
                    x.a(x.this, str, false, "sotrage_unavailable", (String) null);
                } else if (cVar.exists()) {
                    x.a(x.this, str, false, "file_already_exist", (String) null);
                } else if (!a.AnonymousClass1.b(x.this.getContext())) {
                    x.a(x.this, str, false, "no_network_connection", (String) null);
                } else {
                    x.a(x.this, str, true, (String) null, (String) null);
                    com.ironsource.sdk.k.b bVar = x.this.D;
                    bVar.a(cVar, d3, bVar.f12081a);
                }
            } catch (Exception e2) {
                x.a(x.this, str, false, e2.getMessage(), (String) null);
                e2.printStackTrace();
            }
        }

        @JavascriptInterface
        public void setBackButtonState(String str) {
            Logger.i(x.this.f11806a, "setBackButtonState(" + str + ")");
            String d2 = new com.ironsource.sdk.g.f(str).d(AdOperationMetric.INIT_STATE);
            SharedPreferences.Editor edit = com.ironsource.sdk.utils.b.a().f12137a.edit();
            edit.putString("back_button_state", d2);
            edit.apply();
        }

        @JavascriptInterface
        public void setForceClose(String str) {
            Logger.i(x.this.f11806a, "setForceClose(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            String d2 = fVar.d(IabUtils.KEY_WIDTH);
            String d3 = fVar.d(IabUtils.KEY_HEIGHT);
            x.this.H = Integer.parseInt(d2);
            x.this.I = Integer.parseInt(d3);
            x.this.J = fVar.d("position");
        }

        @JavascriptInterface
        public void setMixedContentAlwaysAllow(String str) {
            Logger.i(x.this.f11806a, "setMixedContentAlwaysAllow(" + str + ")");
            x.this.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.24
                @Override // java.lang.Runnable
                public final void run() {
                    x.this.getSettings().setMixedContentMode(0);
                }
            });
        }

        @JavascriptInterface
        public void setOrientation(String str) {
            Logger.i(x.this.f11806a, "setOrientation(" + str + ")");
            String d2 = new com.ironsource.sdk.g.f(str).d(AdUnitActivity.EXTRA_ORIENTATION);
            x.this.k = d2;
            if (x.this.v != null) {
                x.this.v.onOrientationChanged(d2, com.ironsource.environment.h.k(x.this.getContext()));
            }
        }

        @JavascriptInterface
        public void setStoreSearchKeys(String str) {
            Logger.i(x.this.f11806a, "setStoreSearchKeys(" + str + ")");
            SharedPreferences.Editor edit = com.ironsource.sdk.utils.b.a().f12137a.edit();
            edit.putString("search_keys", str);
            edit.apply();
        }

        @JavascriptInterface
        public void setTouchListener(String str) {
            Logger.i(x.this.f11806a, "removeCloseEventHandler(" + str + ")");
            x.this.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.d.29
                @Override // java.lang.Runnable
                public final void run() {
                    x.this.setOnTouchListener(new h(x.this, (byte) 0));
                }
            });
        }

        @JavascriptInterface
        public void setUserData(String str) {
            Logger.i(x.this.f11806a, "setUserData(" + str + ")");
            com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
            if (!fVar.a("key")) {
                x.a(x.this, str, false, "key does not exist", (String) null);
            } else if (!fVar.a("value")) {
                x.a(x.this, str, false, "value does not exist", (String) null);
            } else {
                String d2 = fVar.d("key");
                String d3 = fVar.d("value");
                SharedPreferences.Editor edit = com.ironsource.sdk.utils.b.a().f12137a.edit();
                edit.putString(d2, d3);
                if (!edit.commit()) {
                    x.a(x.this, str, false, "SetUserData failed writing to shared preferences", (String) null);
                    return;
                }
                x.this.b(x.a(x.this, x.b(x.this, str), x.a(x.this, d2, d3, null, null, null, null, null, null, null, false)));
            }
        }

        @JavascriptInterface
        public void setWebviewBackgroundColor(String str) {
            Logger.i(x.this.f11806a, "setWebviewBackgroundColor(" + str + ")");
            x.g(x.this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface e {
        void a(String str, d.e eVar, com.ironsource.sdk.g.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        String f11925a;

        /* renamed from: b  reason: collision with root package name */
        String f11926b;

        f() {
        }
    }

    /* loaded from: classes3.dex */
    public enum g {
        Display,
        Gone
    }

    /* loaded from: classes3.dex */
    class h implements View.OnTouchListener {
        private h() {
        }

        /* synthetic */ h(x xVar, byte b2) {
            this();
        }

        /* JADX WARN: Type inference failed for: r10v6, types: [com.ironsource.sdk.controller.x$h$1] */
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                Logger.i(x.this.f11806a, "X:" + x + " Y:" + y);
                int m = com.ironsource.environment.h.m();
                int n = com.ironsource.environment.h.n();
                Logger.i(x.this.f11806a, "Width:" + m + " Height:" + n);
                int dpToPx = SDKUtils.dpToPx(x.this.H);
                int dpToPx2 = SDKUtils.dpToPx(x.this.I);
                if ("top-right".equalsIgnoreCase(x.this.J)) {
                    x = m - x;
                } else if (!"top-left".equalsIgnoreCase(x.this.J)) {
                    if ("bottom-right".equalsIgnoreCase(x.this.J)) {
                        x = m - x;
                    } else if (!"bottom-left".equalsIgnoreCase(x.this.J)) {
                        x = 0;
                        y = 0;
                    }
                    y = n - y;
                }
                if (x <= dpToPx && y <= dpToPx2) {
                    x.this.F = false;
                    if (x.this.G != null) {
                        x.this.G.cancel();
                    }
                    x.this.G = new CountDownTimer(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, 500L) { // from class: com.ironsource.sdk.controller.x.h.1
                        {
                            super(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, 500L);
                        }

                        @Override // android.os.CountDownTimer
                        public final void onFinish() {
                            Logger.i(x.this.f11806a, "Close Event Timer Finish");
                            if (x.this.F) {
                                x.this.F = false;
                            } else {
                                x.this.e("forceClose");
                            }
                        }

                        @Override // android.os.CountDownTimer
                        public final void onTick(long j) {
                            Logger.i(x.this.f11806a, "Close Event Timer Tick " + j);
                        }
                    }.start();
                }
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class i extends WebViewClient {
        private i() {
        }

        /* synthetic */ i(x xVar, byte b2) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            Logger.i("onPageFinished", str);
            if (str.contains("adUnit") || str.contains("index.html")) {
                x.this.b(x.g("pageFinished"));
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            Logger.i("onPageStarted", str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            Logger.i("onReceivedError", str2 + " " + str);
            if (str2.contains("mobileController.html") && x.this.W != null) {
                x.this.W.a("controller html - web-view receivedError on loading - " + str + " (errorCode: " + i + ")");
            }
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.e(x.this.f11806a, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            String str = renderProcessGoneDetail.didCrash() ? "Render process was observed to crash" : "Render process was killed by the system";
            if (x.this.W != null) {
                x.this.W.b(str);
            }
            x xVar = x.this;
            if (xVar.f11807e != null) {
                xVar.j();
                d.e eVar = xVar.f11807e.f11846a;
                String str2 = xVar.f11807e.f11847b;
                if (xVar.a(eVar.toString())) {
                    xVar.a(eVar, str2);
                    return true;
                }
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            boolean z;
            Logger.i("shouldInterceptRequest", str);
            try {
                z = new URL(str).getFile().contains("mraid.js");
            } catch (MalformedURLException unused) {
                z = false;
            }
            if (z) {
                String str2 = "file://" + x.this.R + File.separator + "mraid.js";
                try {
                    new FileInputStream(new File(str2));
                    return new WebResourceResponse("text/javascript", C.UTF8_NAME, getClass().getResourceAsStream(str2));
                } catch (FileNotFoundException unused2) {
                }
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Logger.i("shouldOverrideUrlLoading", str);
            try {
                if (x.this.f(str)) {
                    x.this.i();
                    return true;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    public x(Context context, j jVar, com.ironsource.sdk.controller.c cVar, com.ironsource.sdk.controller.e eVar, com.ironsource.environment.e.a aVar) {
        super(context);
        this.f11806a = "x";
        this.x = IronSourceConstants.IRONSOURCE_CONFIG_NAME;
        this.z = "We're sorry, some error occurred. we will investigate it";
        this.H = 50;
        this.I = 50;
        this.J = "top-right";
        this.Q = null;
        this.T = new Object();
        this.U = false;
        Logger.i(this.f11806a, "C'tor");
        this.u = cVar;
        this.W = eVar;
        this.w = aVar;
        this.R = IronSourceStorageUtils.getNetworkStorageDir(context);
        this.V = jVar;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.i = new FrameLayout(context);
        this.K = new FrameLayout(context);
        this.K.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.K.setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(this);
        this.i.addView(this.K, layoutParams);
        this.i.addView(frameLayout);
        this.m = new com.ironsource.sdk.g.b();
        com.ironsource.sdk.k.b a2 = a();
        this.D = a2;
        a2.f12081a.f12079a = this;
        this.S = new com.ironsource.sdk.controller.f(SDKUtils.getNetworkConfiguration(), this.R, SDKUtils.getControllerUrl(), this.D);
        this.f11809g = new a(this, (byte) 0);
        setWebViewClient(new i(this, (byte) 0));
        setWebChromeClient(this.f11809g);
        com.ironsource.sdk.utils.d.a(this);
        t tVar = new t(UUID.randomUUID().toString());
        addJavascriptInterface(new com.ironsource.sdk.controller.h(new com.ironsource.sdk.controller.d(new d()), tVar), APSAnalytics.OS_NAME);
        addJavascriptInterface(new s(tVar), "GenerateTokenForMessaging");
        setDownloadListener(this);
        this.aa = new com.ironsource.sdk.service.Connectivity.b(SDKUtils.getControllerConfigAsJSONObject(), context) { // from class: com.ironsource.sdk.controller.x.1
            @Override // com.ironsource.sdk.service.Connectivity.b, com.ironsource.sdk.service.Connectivity.d
            public final void a() {
                if (x.this.E) {
                    x.this.d("none");
                }
            }

            @Override // com.ironsource.sdk.service.Connectivity.b, com.ironsource.sdk.service.Connectivity.d
            public final void a(String str) {
                if (x.this.E) {
                    x.this.d(str);
                }
            }

            @Override // com.ironsource.sdk.service.Connectivity.b, com.ironsource.sdk.service.Connectivity.d
            public final void a(String str, JSONObject jSONObject) {
                if (jSONObject == null || !x.this.E) {
                    return;
                }
                try {
                    jSONObject.put("connectionType", str);
                    x xVar = x.this;
                    Logger.i(xVar.f11806a, "device connection info changed: " + jSONObject.toString());
                    xVar.b(x.b("connectionInfoChanged", x.a("connectionInfo", jSONObject.toString(), null, null, null, null, null, null, null, false)));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        };
        a(context);
        y = FeaturesManager.getInstance().getDebugMode();
    }

    static /* synthetic */ String a(x xVar, String str, String str2) {
        return b(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String a(x xVar, String str, String str2, String str3, String str4) {
        return a(str, str2, str3, str4);
    }

    static /* synthetic */ String a(x xVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z) {
        return a(str, str2, str3, str4, str5, str6, str7, str8, null, false);
    }

    private String a(d.e eVar, JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        hashMap.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.toString(jSONObject.optInt(IronSourceConstants.KEY_SESSION_DEPTH)));
        String optString = jSONObject.optString("demandSourceName");
        String fetchDemandSourceId = SDKUtils.fetchDemandSourceId(jSONObject);
        com.ironsource.sdk.g.c a2 = this.V.a(eVar, fetchDemandSourceId);
        if (a2 != null) {
            if (a2.f12028d != null) {
                hashMap.putAll(a2.f12028d);
            }
            if (!TextUtils.isEmpty(optString)) {
                hashMap.put("demandSourceName", optString);
            }
            if (!TextUtils.isEmpty(fetchDemandSourceId)) {
                hashMap.put("demandSourceId", fetchDemandSourceId);
            }
        }
        Map<String, String> a3 = a(eVar);
        if (a3 != null) {
            hashMap.putAll(a3);
        }
        String flatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(hashMap);
        a.C0327a a4 = a.C0327a.a(eVar);
        return a(a4.f12005a, flatMapToJsonAsString, a4.f12006b, a4.f12007c);
    }

    private static String a(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("SSA_CORE.SDKController.runFunction('");
        sb.append(str).append("?parameters=").append(str2).append("','").append(str3).append("','").append(str4).append("');");
        return sb.toString();
    }

    public static String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                jSONObject.put(str, SDKUtils.encodeString(str2));
            }
            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                jSONObject.put(str3, SDKUtils.encodeString(str4));
            }
            if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
                jSONObject.put(str5, SDKUtils.encodeString(str6));
            }
            if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str8)) {
                jSONObject.put(str7, SDKUtils.encodeString(str8));
            }
            if (!TextUtils.isEmpty(str9)) {
                jSONObject.put(str9, z);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    private Map<String, String> a(d.e eVar) {
        if (eVar == d.e.OfferWall) {
            return this.C;
        }
        return null;
    }

    static /* synthetic */ void a(x xVar, final String str, final d.e eVar, final com.ironsource.sdk.g.c cVar) {
        if (xVar.a(eVar.toString())) {
            xVar.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (d.e.RewardedVideo != eVar && d.e.Interstitial != eVar && d.e.Banner != eVar) {
                        if (d.e.OfferWall == eVar) {
                            x.this.O.onOfferwallInitFail(str);
                            return;
                        } else if (d.e.OfferWallCredits == eVar) {
                            x.this.O.onGetOWCreditsFailed(str);
                            return;
                        } else {
                            return;
                        }
                    }
                    com.ironsource.sdk.g.c cVar2 = cVar;
                    if (cVar2 == null || TextUtils.isEmpty(cVar2.f12026b)) {
                        return;
                    }
                    com.ironsource.sdk.j.a.a b2 = x.this.b(eVar);
                    Log.d(x.this.f11806a, "onAdProductInitFailed (message:" + str + ")(" + eVar + ")");
                    if (b2 != null) {
                        b2.a(eVar, cVar.f12026b, str);
                    }
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (android.text.TextUtils.isEmpty(r1) == false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.ironsource.sdk.controller.x r3, java.lang.String r4, boolean r5, java.lang.String r6, java.lang.String r7) {
        /*
            com.ironsource.sdk.g.f r0 = new com.ironsource.sdk.g.f
            r0.<init>(r4)
            java.lang.String r1 = com.ironsource.sdk.controller.x.ab
            java.lang.String r1 = r0.d(r1)
            java.lang.String r2 = com.ironsource.sdk.controller.x.ac
            java.lang.String r0 = r0.d(r2)
            if (r5 == 0) goto L1a
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            if (r5 != 0) goto L22
            goto L23
        L1a:
            boolean r5 = android.text.TextUtils.isEmpty(r0)
            if (r5 != 0) goto L22
            r1 = r0
            goto L23
        L22:
            r1 = 0
        L23:
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            if (r5 != 0) goto L5a
            boolean r5 = android.text.TextUtils.isEmpty(r6)
            if (r5 != 0) goto L3e
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3e
            r5.<init>(r4)     // Catch: org.json.JSONException -> L3e
            java.lang.String r0 = "errMsg"
            org.json.JSONObject r5 = r5.put(r0, r6)     // Catch: org.json.JSONException -> L3e
            java.lang.String r4 = r5.toString()     // Catch: org.json.JSONException -> L3e
        L3e:
            boolean r5 = android.text.TextUtils.isEmpty(r7)
            if (r5 != 0) goto L53
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> L53
            r5.<init>(r4)     // Catch: org.json.JSONException -> L53
            java.lang.String r6 = "errCode"
            org.json.JSONObject r5 = r5.put(r6, r7)     // Catch: org.json.JSONException -> L53
            java.lang.String r4 = r5.toString()     // Catch: org.json.JSONException -> L53
        L53:
            java.lang.String r4 = b(r1, r4)
            r3.b(r4)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.x.a(com.ironsource.sdk.controller.x, java.lang.String, boolean, java.lang.String, java.lang.String):void");
    }

    static /* synthetic */ void a(x xVar, JSONObject jSONObject) {
        if (jSONObject.optBoolean("inspectWebview")) {
            setWebContentsDebuggingEnabled(true);
        }
    }

    private void a(String str, String str2, d.e eVar, com.ironsource.sdk.g.c cVar, e eVar2) {
        String str3;
        String a2;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            eVar2.a("User id or Application key are missing", eVar, cVar);
            return;
        }
        f fVar = new f();
        if (eVar != d.e.RewardedVideo && eVar != d.e.Interstitial && eVar != d.e.OfferWall && eVar != d.e.Banner) {
            if (eVar == d.e.OfferWallCredits) {
                a2 = a("getUserCredits", a("productType", "OfferWall", "applicationKey", this.A, "applicationUserId", this.B, null, null, null, false), "null", "onGetUserCreditsFail");
                fVar.f11925a = "getUserCredits";
            }
            b(fVar.f11926b);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("applicationKey", this.A);
        hashMap.put("applicationUserId", this.B);
        if (cVar != null) {
            if (cVar.f12028d != null) {
                hashMap.putAll(cVar.f12028d);
                com.ironsource.sdk.service.a aVar = com.ironsource.sdk.service.a.f12109a;
                hashMap.put("loadStartTime", String.valueOf(com.ironsource.sdk.service.a.a(cVar.f12026b)));
            }
            hashMap.put("demandSourceName", cVar.f12025a);
            hashMap.put("demandSourceId", cVar.f12026b);
        }
        Map<String, String> a3 = a(eVar);
        if (a3 != null) {
            hashMap.putAll(a3);
        }
        String flatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(hashMap);
        a.C0327a c0327a = new a.C0327a();
        if (eVar == d.e.RewardedVideo) {
            c0327a.f12005a = "initRewardedVideo";
            c0327a.f12006b = "onInitRewardedVideoSuccess";
            str3 = "onInitRewardedVideoFail";
        } else if (eVar == d.e.Interstitial) {
            c0327a.f12005a = "initInterstitial";
            c0327a.f12006b = "onInitInterstitialSuccess";
            str3 = "onInitInterstitialFail";
        } else if (eVar == d.e.OfferWall) {
            c0327a.f12005a = "initOfferWall";
            c0327a.f12006b = "onInitOfferWallSuccess";
            str3 = "onInitOfferWallFail";
        } else {
            if (eVar == d.e.Banner) {
                c0327a.f12005a = "initBanner";
                c0327a.f12006b = "onInitBannerSuccess";
                str3 = "onInitBannerFail";
            }
            a2 = a(c0327a.f12005a, flatMapToJsonAsString, c0327a.f12006b, c0327a.f12007c);
            fVar.f11925a = c0327a.f12005a;
        }
        c0327a.f12007c = str3;
        a2 = a(c0327a.f12005a, flatMapToJsonAsString, c0327a.f12006b, c0327a.f12007c);
        fVar.f11925a = c0327a.f12005a;
        fVar.f11926b = a2;
        b(fVar.f11926b);
    }

    private void a(String str, String str2, String str3) {
        try {
            b(b("assetCachedFailed", a("file", str, "path", i(str2), "errMsg", str3, null, null, null, false)));
        } catch (Exception unused) {
        }
    }

    public static int b() {
        return y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.ironsource.sdk.j.a.a b(d.e eVar) {
        if (eVar == d.e.Interstitial) {
            return this.N;
        }
        if (eVar == d.e.RewardedVideo) {
            return this.M;
        }
        if (eVar == d.e.Banner) {
            return this.P;
        }
        return null;
    }

    static /* synthetic */ String b(x xVar, String str) {
        return new com.ironsource.sdk.g.f(str).d(ab);
    }

    public static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder("SSA_CORE.SDKController.runFunction('");
        sb.append(str).append("?parameters=").append(str2).append("');");
        return sb.toString();
    }

    private String b(JSONObject jSONObject) {
        com.ironsource.sdk.utils.a a2 = com.ironsource.sdk.utils.a.a(getContext());
        StringBuilder sb = new StringBuilder();
        String sDKVersion = SDKUtils.getSDKVersion();
        if (!TextUtils.isEmpty(sDKVersion)) {
            sb.append("SDKVersion=").append(sDKVersion).append("&");
        }
        String str = a2.f12132c;
        if (!TextUtils.isEmpty(str)) {
            sb.append("deviceOs=").append(str);
        }
        Uri parse = Uri.parse(SDKUtils.getControllerUrl());
        if (parse != null) {
            String str2 = parse.getScheme() + ":";
            String host = parse.getHost();
            int port = parse.getPort();
            if (port != -1) {
                host = host + ":" + port;
            }
            sb.append("&protocol=").append(str2);
            sb.append("&domain=").append(host);
            if (jSONObject.keys().hasNext()) {
                try {
                    String jSONObject2 = new JSONObject(jSONObject, new String[]{"isSecured", "applicationKey"}).toString();
                    if (!TextUtils.isEmpty(jSONObject2)) {
                        sb.append("&controllerConfig").append("=").append(jSONObject2);
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            sb.append("&debug=").append(y);
        }
        return sb.toString();
    }

    static /* synthetic */ void b(x xVar, Context context) {
        try {
            com.ironsource.sdk.service.Connectivity.b bVar = xVar.aa;
            if (bVar == null) {
                return;
            }
            bVar.f12102a.a(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static /* synthetic */ boolean b(x xVar, boolean z) {
        xVar.E = true;
        return true;
    }

    static /* synthetic */ String c(x xVar, String str) {
        return new com.ironsource.sdk.g.f(str).d(ac);
    }

    static /* synthetic */ void c(x xVar, Context context) {
        try {
            com.ironsource.sdk.service.Connectivity.b bVar = xVar.aa;
            if (bVar == null) {
                return;
            }
            bVar.f12102a.b(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static /* synthetic */ void c(x xVar, final String str, String str2) {
        final String d2 = new com.ironsource.sdk.g.f(str2).d("errMsg");
        if (TextUtils.isEmpty(d2)) {
            return;
        }
        xVar.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.7
            @Override // java.lang.Runnable
            public final void run() {
                if (x.b() == d.EnumC0328d.MODE_3.f12057d) {
                    Toast.makeText(x.this.u.a(), str + " : " + d2, 1).show();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] c(Context context) {
        com.ironsource.sdk.utils.a a2 = com.ironsource.sdk.utils.a.a(context);
        JSONObject jSONObject = new JSONObject();
        boolean z = false;
        try {
            jSONObject.put("appOrientation", "none");
            jSONObject.put("deviceOrientation", SDKUtils.translateDeviceOrientation(com.ironsource.environment.h.o(context)));
            String str = a2.f12130a;
            if (str != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOEM"), SDKUtils.encodeString(str));
            }
            String str2 = a2.f12131b;
            if (str2 != null) {
                jSONObject.put(SDKUtils.encodeString("deviceModel"), SDKUtils.encodeString(str2));
            } else {
                z = true;
            }
            SDKUtils.loadGoogleAdvertiserInfo(context);
            String advertiserId = SDKUtils.getAdvertiserId();
            Boolean valueOf = Boolean.valueOf(SDKUtils.isLimitAdTrackingEnabled());
            if (!TextUtils.isEmpty(advertiserId)) {
                Logger.i(this.f11806a, "add AID and LAT");
                jSONObject.put("isLimitAdTrackingEnabled", valueOf);
                jSONObject.put("deviceIds[AID]", SDKUtils.encodeString(advertiserId));
            }
            String str3 = a2.f12132c;
            if (str3 != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOs"), SDKUtils.encodeString(str3));
            } else {
                z = true;
            }
            String str4 = a2.f12133d;
            if (str4 != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOSVersion"), str4.replaceAll("[^0-9/.]", ""));
            } else {
                z = true;
            }
            String str5 = a2.f12133d;
            if (str5 != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOSVersionFull"), SDKUtils.encodeString(str5));
            }
            String valueOf2 = String.valueOf(a2.f12134e);
            if (valueOf2 != null) {
                jSONObject.put(SDKUtils.encodeString("deviceApiLevel"), valueOf2);
            } else {
                z = true;
            }
            String sDKVersion = SDKUtils.getSDKVersion();
            if (sDKVersion != null) {
                jSONObject.put(SDKUtils.encodeString("SDKVersion"), SDKUtils.encodeString(sDKVersion));
            }
            if (a2.f12135f != null && a2.f12135f.length() > 0) {
                jSONObject.put(SDKUtils.encodeString("mobileCarrier"), SDKUtils.encodeString(a2.f12135f));
            }
            String a3 = com.ironsource.d.a.a(context);
            if (a3.equals("none")) {
                z = true;
            } else {
                jSONObject.put(SDKUtils.encodeString("connectionType"), SDKUtils.encodeString(a3));
            }
            jSONObject.put(SDKUtils.encodeString("hasVPN"), com.ironsource.d.a.c(context));
            String language = context.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(SDKUtils.encodeString("deviceLanguage"), SDKUtils.encodeString(language.toUpperCase()));
            }
            if (SDKUtils.isExternalStorageAvailable()) {
                jSONObject.put(SDKUtils.encodeString("diskFreeSize"), SDKUtils.encodeString(String.valueOf(com.ironsource.environment.h.a(this.R))));
            } else {
                z = true;
            }
            String valueOf3 = String.valueOf(com.ironsource.environment.h.m());
            if (TextUtils.isEmpty(valueOf3)) {
                z = true;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(SDKUtils.encodeString("deviceScreenSize")).append("[").append(SDKUtils.encodeString(IabUtils.KEY_WIDTH)).append("]");
                jSONObject.put(sb.toString(), SDKUtils.encodeString(valueOf3));
            }
            String valueOf4 = String.valueOf(com.ironsource.environment.h.n());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDKUtils.encodeString("deviceScreenSize")).append("[").append(SDKUtils.encodeString(IabUtils.KEY_HEIGHT)).append("]");
            jSONObject.put(sb2.toString(), SDKUtils.encodeString(valueOf4));
            String packageName = getContext().getPackageName();
            if (!TextUtils.isEmpty(packageName)) {
                jSONObject.put(SDKUtils.encodeString("bundleId"), SDKUtils.encodeString(packageName));
            }
            String valueOf5 = String.valueOf(com.ironsource.environment.h.o());
            if (!TextUtils.isEmpty(valueOf5)) {
                jSONObject.put(SDKUtils.encodeString("deviceScreenScale"), SDKUtils.encodeString(valueOf5));
            }
            String valueOf6 = String.valueOf(com.ironsource.environment.h.j());
            if (!TextUtils.isEmpty(valueOf6)) {
                jSONObject.put(SDKUtils.encodeString("unLocked"), SDKUtils.encodeString(valueOf6));
            }
            com.ironsource.sdk.utils.a.a(context);
            jSONObject.put(SDKUtils.encodeString("deviceVolume"), com.ironsource.sdk.utils.a.b(context));
            jSONObject.put(SDKUtils.encodeString("batteryLevel"), com.ironsource.environment.h.v(context));
            jSONObject.put(SDKUtils.encodeString("mcc"), a.AnonymousClass1.c(context));
            jSONObject.put(SDKUtils.encodeString("mnc"), a.AnonymousClass1.d(context));
            jSONObject.put(SDKUtils.encodeString("phoneType"), a.AnonymousClass1.f(context));
            jSONObject.put(SDKUtils.encodeString("simOperator"), SDKUtils.encodeString(a.AnonymousClass1.e(context)));
            jSONObject.put(SDKUtils.encodeString("lastUpdateTime"), com.ironsource.environment.c.b(context));
            jSONObject.put(SDKUtils.encodeString("firstInstallTime"), com.ironsource.environment.c.a(context));
            jSONObject.put(SDKUtils.encodeString("appVersion"), SDKUtils.encodeString(com.ironsource.environment.c.c(context)));
            String d2 = com.ironsource.environment.c.d(context);
            if (!TextUtils.isEmpty(d2)) {
                jSONObject.put(SDKUtils.encodeString("installerPackageName"), SDKUtils.encodeString(d2));
            }
            jSONObject.put(SDKUtils.encodeString("gpi"), com.ironsource.environment.k.a(getContext()));
            jSONObject.put(SDKUtils.encodeString("screenBrightness"), com.ironsource.environment.h.z(context));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] c(String str, String str2) {
        boolean z;
        WebSettings settings;
        int i2;
        JSONObject jSONObject = new JSONObject();
        boolean z2 = true;
        Map<String, String> map = null;
        if (TextUtils.isEmpty(str)) {
            z = true;
        } else {
            d.e h2 = h(str);
            if (h2 == d.e.OfferWall) {
                map = this.C;
            } else {
                com.ironsource.sdk.g.c a2 = this.V.a(h2, str2);
                if (a2 != null) {
                    Map<String, String> map2 = a2.f12028d;
                    map2.put("demandSourceName", a2.f12025a);
                    map2.put("demandSourceId", a2.f12026b);
                    map = map2;
                }
            }
            try {
                jSONObject.put("productType", str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            z = false;
            try {
                Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
                if (initSDKParams != null) {
                    jSONObject = SDKUtils.mergeJSONObjects(jSONObject, new JSONObject(initSDKParams));
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(this.B)) {
            z = true;
        } else {
            try {
                jSONObject.put(SDKUtils.encodeString("applicationUserId"), SDKUtils.encodeString(this.B));
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        if (!TextUtils.isEmpty(this.A)) {
            try {
                jSONObject.put(SDKUtils.encodeString("applicationKey"), SDKUtils.encodeString(this.A));
            } catch (JSONException e5) {
                e5.printStackTrace();
            }
            z2 = z;
        }
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey().equalsIgnoreCase("sdkWebViewCache")) {
                    if (entry.getValue().equalsIgnoreCase("0")) {
                        settings = getSettings();
                        i2 = 2;
                    } else {
                        settings = getSettings();
                        i2 = -1;
                    }
                    settings.setCacheMode(i2);
                }
                try {
                    jSONObject.put(SDKUtils.encodeString(entry.getKey()), SDKUtils.encodeString(entry.getValue()));
                } catch (JSONException e6) {
                    e6.printStackTrace();
                }
            }
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z2)};
    }

    static /* synthetic */ d.e e(x xVar, String str) {
        return h(str);
    }

    static String g(String str) {
        StringBuilder sb = new StringBuilder("SSA_CORE.SDKController.runFunction('");
        sb.append(str).append("');");
        return sb.toString();
    }

    static /* synthetic */ void g(x xVar, String str) {
        com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f(str);
        String d2 = fVar.d("color");
        String d3 = fVar.d("adViewId");
        int parseColor = !"transparent".equalsIgnoreCase(d2) ? Color.parseColor(d2) : 0;
        if (d3 == null) {
            xVar.setBackgroundColor(parseColor);
            return;
        }
        WebView b2 = com.ironsource.sdk.c.d.a().a(d3).b();
        if (b2 != null) {
            b2.setBackgroundColor(parseColor);
        }
    }

    private static d.e h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equalsIgnoreCase(d.e.Interstitial.toString())) {
            return d.e.Interstitial;
        }
        if (str.equalsIgnoreCase(d.e.RewardedVideo.toString())) {
            return d.e.RewardedVideo;
        }
        if (str.equalsIgnoreCase(d.e.OfferWall.toString())) {
            return d.e.OfferWall;
        }
        if (str.equalsIgnoreCase(d.e.Banner.toString())) {
            return d.e.Banner;
        }
        return null;
    }

    static /* synthetic */ void h(x xVar, String str) {
        try {
            Logger.i(xVar.f11806a, "load(): " + str);
            xVar.loadUrl(str);
        } catch (Throwable th) {
            Logger.e(xVar.f11806a, "WebViewController::load: " + th);
        }
    }

    private String i(String str) {
        String str2 = this.R + File.separator;
        return str.contains(str2) ? str.substring(str2.length()) : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.ironsource.sdk.k.b a() {
        return com.ironsource.sdk.k.b.a(this.R, this.w);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.ironsource.sdk.controller.x$13] */
    public final void a(int i2) {
        if (!this.S.a()) {
            Logger.i(this.f11806a, "load(): Mobile Controller HTML Does not exist");
            return;
        }
        final JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
        String b2 = b(controllerConfigAsJSONObject);
        Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
        if (initSDKParams != null && initSDKParams.containsKey("sessionid")) {
            b2 = String.format("%s&sessionid=%s", b2, initSDKParams.get("sessionid"));
        }
        final String str = this.S.d().toURI().toString() + "?" + b2;
        this.w.a(new Runnable() { // from class: com.ironsource.sdk.controller.x.12
            @Override // java.lang.Runnable
            public final void run() {
                x.a(x.this, controllerConfigAsJSONObject);
                x.h(x.this, "about:blank");
                x.h(x.this, str);
            }
        });
        this.f11808f = new CountDownTimer(50000L, 1000L, i2) { // from class: com.ironsource.sdk.controller.x.13

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ int f11820b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(50000L, 1000L);
                this.f11820b = i2;
            }

            @Override // android.os.CountDownTimer
            public final void onFinish() {
                Logger.i(x.this.f11806a, "Loading Controller Timer Finish");
                int i3 = this.f11820b;
                if (i3 == 3) {
                    x.this.c(new Runnable() { // from class: com.ironsource.sdk.controller.x.13.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            x.this.W.a("controller html - failed to load into web-view");
                        }
                    });
                } else {
                    x.this.a(i3 + 1);
                }
            }

            @Override // android.os.CountDownTimer
            public final void onTick(long j) {
                Logger.i(x.this.f11806a, "Loading Controller Timer Tick " + j);
            }
        }.start();
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final Context context) {
        b(new Runnable() { // from class: com.ironsource.sdk.controller.x.8
            @Override // java.lang.Runnable
            public final void run() {
                x.b(x.this, context);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.ironsource.sdk.g.b r11) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.x.a(com.ironsource.sdk.g.b):void");
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(com.ironsource.sdk.g.c cVar, Map<String, String> map, com.ironsource.sdk.j.a.b bVar) {
        Map<String, String> mergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, cVar.a()});
        if (map != null) {
            b(a("loadBanner", SDKUtils.flatMapToJsonAsString(mergeHashMaps), "onLoadBannerSuccess", "onLoadBannerFail"));
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(com.ironsource.sdk.g.c cVar, Map<String, String> map, com.ironsource.sdk.j.a.c cVar2) {
        Map<String, String> mergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, cVar.a()});
        this.m.a(cVar.f12026b, true);
        b(a("loadInterstitial", SDKUtils.flatMapToJsonAsString(mergeHashMaps), "onLoadInterstitialSuccess", "onLoadInterstitialFail"));
    }

    final void a(final d.e eVar, final String str) {
        c(new Runnable() { // from class: com.ironsource.sdk.controller.x.10
            @Override // java.lang.Runnable
            public final void run() {
                if (eVar != d.e.RewardedVideo && eVar != d.e.Interstitial) {
                    if (eVar == d.e.OfferWall) {
                        x.this.O.onOWAdClosed();
                        return;
                    }
                    return;
                }
                com.ironsource.sdk.j.a.a b2 = x.this.b(eVar);
                if (b2 != null) {
                    b2.a(eVar, str);
                }
            }
        });
    }

    @Override // com.ironsource.sdk.k.c
    public final void a(com.ironsource.sdk.h.c cVar) {
        if (!cVar.getName().contains("mobileController.html")) {
            String name = cVar.getName();
            String parent = cVar.getParent();
            try {
                b(b("assetCached", a("file", name, "path", i(parent), null, null, null, null, null, false)));
                return;
            } catch (Exception e2) {
                a(name, parent, e2.getMessage());
                return;
            }
        }
        com.ironsource.sdk.controller.f fVar = this.S;
        Runnable runnable = new Runnable() { // from class: com.ironsource.sdk.controller.x.4
            @Override // java.lang.Runnable
            public final void run() {
                x.this.a(1);
            }
        };
        if (fVar.a()) {
            return;
        }
        if (fVar.f11624c == f.a.f11632b) {
            fVar.c();
        }
        fVar.f11625d = f.b.CONTROLLER_FROM_SERVER;
        fVar.a(fVar.f11625d);
        runnable.run();
    }

    @Override // com.ironsource.sdk.k.c
    public final void a(com.ironsource.sdk.h.c cVar, final com.ironsource.sdk.g.e eVar) {
        if (!cVar.getName().contains("mobileController.html")) {
            a(cVar.getName(), cVar.getParent(), eVar.f12065a);
            return;
        }
        com.ironsource.sdk.controller.f fVar = this.S;
        Runnable runnable = new Runnable() { // from class: com.ironsource.sdk.controller.x.5
            @Override // java.lang.Runnable
            public final void run() {
                x.this.a(1);
            }
        };
        Runnable runnable2 = new Runnable() { // from class: com.ironsource.sdk.controller.x.6
            @Override // java.lang.Runnable
            public final void run() {
                x.this.W.a("controller html - failed to download - " + eVar.f12065a);
            }
        };
        if (fVar.a()) {
            return;
        }
        if (fVar.f11624c == f.a.f11632b && fVar.e()) {
            fVar.f11625d = f.b.FALLBACK_CONTROLLER_RECOVERY;
            fVar.a(fVar.f11625d);
            runnable.run();
            return;
        }
        com.ironsource.sdk.a.a a2 = new com.ironsource.sdk.a.a().a("generalmessage", Integer.valueOf(fVar.f11623b));
        if (fVar.f11622a > 0) {
            a2.a("timingvalue", Long.valueOf(System.currentTimeMillis() - fVar.f11622a));
        }
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.t, a2.f11500a);
        runnable2.run();
    }

    final void a(Runnable runnable) {
        com.ironsource.environment.e.a aVar = this.w;
        if (aVar != null) {
            aVar.a(runnable);
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, com.ironsource.sdk.j.a.c cVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("demandSourceName", str);
        String flatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(hashMap);
        this.m.a(str, true);
        b(a("loadInterstitial", flatMapToJsonAsString, "onLoadInterstitialSuccess", "onLoadInterstitialFail"));
    }

    public final void a(String str, String str2) {
        b(b("onNativeLifeCycleEvent", a("lifeCycleEvent", str2, "productType", str, null, null, null, null, null, false)));
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, com.ironsource.sdk.g.c cVar, com.ironsource.sdk.j.a.b bVar) {
        this.A = str;
        this.B = str2;
        this.P = bVar;
        a(str, str2, d.e.Banner, cVar, new e() { // from class: com.ironsource.sdk.controller.x.18
            @Override // com.ironsource.sdk.controller.x.e
            public final void a(String str3, d.e eVar, com.ironsource.sdk.g.c cVar2) {
                x.a(x.this, str3, eVar, cVar2);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, com.ironsource.sdk.g.c cVar, com.ironsource.sdk.j.a.c cVar2) {
        this.A = str;
        this.B = str2;
        this.N = cVar2;
        this.m.f12022f = str;
        this.m.f12023g = this.B;
        a(this.A, this.B, d.e.Interstitial, cVar, new e() { // from class: com.ironsource.sdk.controller.x.15
            @Override // com.ironsource.sdk.controller.x.e
            public final void a(String str3, d.e eVar, com.ironsource.sdk.g.c cVar3) {
                x.a(x.this, str3, eVar, cVar3);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, com.ironsource.sdk.g.c cVar, com.ironsource.sdk.j.a.d dVar) {
        this.A = str;
        this.B = str2;
        this.M = dVar;
        this.m.f12017a = str;
        this.m.f12018b = str2;
        a(str, str2, d.e.RewardedVideo, cVar, new e() { // from class: com.ironsource.sdk.controller.x.14
            @Override // com.ironsource.sdk.controller.x.e
            public final void a(String str3, d.e eVar, com.ironsource.sdk.g.c cVar2) {
                x.a(x.this, str3, eVar, cVar2);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, com.ironsource.sdk.j.e eVar) {
        this.A = str;
        this.B = str2;
        this.O = eVar;
        a(str, str2, d.e.OfferWallCredits, (com.ironsource.sdk.g.c) null, new e() { // from class: com.ironsource.sdk.controller.x.17
            @Override // com.ironsource.sdk.controller.x.e
            public final void a(String str3, d.e eVar2, com.ironsource.sdk.g.c cVar) {
                x.a(x.this, str3, eVar2, cVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, Map<String, String> map, com.ironsource.sdk.j.e eVar) {
        this.A = str;
        this.B = str2;
        this.C = map;
        this.O = eVar;
        this.m.j = map;
        this.m.f12024h = true;
        a(this.A, this.B, d.e.OfferWall, (com.ironsource.sdk.g.c) null, new e() { // from class: com.ironsource.sdk.controller.x.16
            @Override // com.ironsource.sdk.controller.x.e
            public final void a(String str3, d.e eVar2, com.ironsource.sdk.g.c cVar) {
                x.a(x.this, str3, eVar2, cVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(Map<String, String> map, com.ironsource.sdk.j.e eVar) {
        this.C = map;
        b("SSA_CORE.SDKController.runFunction('showOfferWall','onShowOfferWallSuccess','onShowOfferWallFail');");
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(JSONObject jSONObject) {
        b(b("updateConsentInfo", jSONObject != null ? jSONObject.toString() : null));
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(JSONObject jSONObject, com.ironsource.sdk.j.a.c cVar) {
        b(a(d.e.Interstitial, jSONObject));
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(JSONObject jSONObject, com.ironsource.sdk.j.a.d dVar) {
        b(a(d.e.RewardedVideo, jSONObject));
    }

    public final void a(boolean z, String str) {
        b(b("viewableChange", a("webview", str, null, null, null, null, null, null, "isViewable", z)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            Logger.d(this.f11806a, "Trying to trigger a listener - no product was found");
            return false;
        }
        if (!str.equalsIgnoreCase(d.e.Interstitial.toString()) ? !str.equalsIgnoreCase(d.e.RewardedVideo.toString()) ? !str.equalsIgnoreCase(d.e.Banner.toString()) ? (str.equalsIgnoreCase(d.e.OfferWall.toString()) || str.equalsIgnoreCase(d.e.OfferWallCredits.toString())) && this.O != null : this.P != null : this.M != null : this.N != null) {
            z = true;
        }
        if (!z) {
            Logger.d(this.f11806a, "Trying to trigger a listener - no listener was found for product " + str);
        }
        return z;
    }

    @Override // com.ironsource.sdk.controller.m
    public final void b(final Context context) {
        b(new Runnable() { // from class: com.ironsource.sdk.controller.x.9
            @Override // java.lang.Runnable
            public final void run() {
                x.c(x.this, context);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void b(com.ironsource.sdk.g.c cVar, Map<String, String> map, com.ironsource.sdk.j.a.c cVar2) {
        b(a(d.e.Interstitial, new JSONObject(SDKUtils.mergeHashMaps(new Map[]{map, cVar.a()}))));
    }

    final void b(Runnable runnable) {
        com.ironsource.environment.e.a aVar = this.w;
        if (aVar != null) {
            aVar.b(runnable);
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str2 = "console.log(\"JS exeption: \" + JSON.stringify(e));";
        if (y != d.EnumC0328d.MODE_0.f12057d && (y < d.EnumC0328d.MODE_1.f12057d || y > d.EnumC0328d.MODE_3.f12057d)) {
            str2 = "empty";
        }
        final StringBuilder sb = new StringBuilder();
        sb.append("try{").append(str).append("}catch(e){").append(str2).append("}");
        final String str3 = "javascript:" + sb.toString();
        Logger.i(this.f11806a, str3);
        a(new Runnable() { // from class: com.ironsource.sdk.controller.x.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (x.this.Q == null) {
                        x.this.evaluateJavascript(sb.toString(), null);
                        x.this.Q = Boolean.TRUE;
                    } else if (x.this.Q.booleanValue()) {
                        x.this.evaluateJavascript(sb.toString(), null);
                    } else {
                        x.this.loadUrl(str3);
                    }
                } catch (Throwable th) {
                    Logger.e(x.this.f11806a, "injectJavascript: " + th.toString());
                }
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final d.c c() {
        return d.c.Web;
    }

    final void c(Runnable runnable) {
        com.ironsource.environment.e.a aVar = this.w;
        if (aVar != null) {
            aVar.c(runnable);
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final boolean c(String str) {
        com.ironsource.sdk.g.c a2 = this.V.a(d.e.Interstitial, str);
        return a2 != null && a2.f12030f;
    }

    @Override // com.ironsource.sdk.controller.m
    public final void d() {
        b(a("destroyBanner", "", "onDestroyBannersSuccess", "onDestroyBannersFail"));
    }

    public final void d(String str) {
        Logger.i(this.f11806a, "device status changed, connection type " + str);
        com.ironsource.sdk.a.b.a(str);
        b(b("deviceStatusChanged", a("connectionType", str, null, null, null, null, null, null, null, false)));
    }

    @Override // android.webkit.WebView, com.ironsource.sdk.controller.m
    public void destroy() {
        super.destroy();
        com.ironsource.sdk.k.b bVar = this.D;
        if (bVar != null) {
            bVar.a();
        }
        com.ironsource.sdk.service.Connectivity.b bVar2 = this.aa;
        if (bVar2 != null) {
            bVar2.f12102a.a();
        }
        CountDownTimer countDownTimer = this.f11808f;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void e() {
        b(g("enterForeground"));
    }

    public final void e(String str) {
        if (str.equals("forceClose")) {
            j();
        }
        b(b("engageEnd", a("action", str, null, null, null, null, null, null, null, false)));
    }

    @Override // com.ironsource.sdk.controller.m
    public final void f() {
        b(g("enterBackground"));
    }

    public final boolean f(String str) {
        List<String> b2 = com.ironsource.sdk.utils.b.a().b();
        try {
            if (b2.isEmpty()) {
                return false;
            }
            for (String str2 : b2) {
                if (str.contains(str2)) {
                    a.AnonymousClass1.a(this.u.a(), str, null);
                    return true;
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void g() {
        a(this.m);
    }

    @Override // com.ironsource.sdk.controller.m
    public final void h() {
        com.ironsource.sdk.a.a aVar = new com.ironsource.sdk.a.a();
        com.ironsource.sdk.controller.f fVar = this.S;
        aVar.a("generalmessage", Integer.valueOf(fVar.f11623b));
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.r, aVar.f11500a);
        fVar.f11622a = System.currentTimeMillis();
        if (this.S.b()) {
            a(1);
        }
    }

    public final void i() {
        b(g("interceptedUrlToStore"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        com.ironsource.sdk.j.g gVar = this.v;
        if (gVar != null) {
            gVar.onCloseRequested();
        }
    }

    public final void k() {
        try {
            onPause();
        } catch (Throwable th) {
            Logger.i(this.f11806a, "WebViewController: onPause() - " + th);
        }
    }

    public final void l() {
        try {
            onResume();
        } catch (Throwable th) {
            Logger.i(this.f11806a, "WebViewController: onResume() - " + th);
        }
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        Logger.i(this.f11806a, str + " " + str4);
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        com.ironsource.sdk.j.g gVar;
        if (i2 == 4 && (gVar = this.v) != null && gVar.onBackButtonPressed()) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.webkit.WebView
    public WebBackForwardList saveState(Bundle bundle) {
        return super.saveState(bundle);
    }
}
