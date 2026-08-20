package com.appnext.ads.interstitial;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import androidx.palette.graphics.Palette;
import com.appnext.R;
import com.appnext.ads.AdsError;
import com.appnext.core.Ad;
import com.appnext.core.AppnextActivity;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.e;
import com.appnext.core.f;
import com.appnext.core.k;
import com.appnext.core.p;
import com.appnext.core.q;
import com.appnext.core.result.ResultPageActivity;
import com.appnext.core.result.d;
import com.appnext.core.webview.AppnextWebView;
import com.appnext.core.webview.WebAppInterface;
import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class InterstitialActivity extends AppnextActivity {
    private AppnextAd aE;
    private com.appnext.ads.b aF;
    private ArrayList<AppnextAd> ads;
    private Boolean autoPlay;
    protected WebView bP;
    private Interstitial bR;
    private InterstitialAd bS;
    private Handler bV;
    private e.a bW;
    private WebAppInterface bX;
    private String ca;
    private Boolean canClose;
    private Boolean mute;
    private boolean bQ = false;
    private String bT = "";
    private boolean closed = false;
    private int bU = 0;
    private boolean bY = false;
    private boolean bZ = false;
    private String cc = "";
    private boolean cd = false;
    private Runnable ce = new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.9
        @Override // java.lang.Runnable
        public final void run() {
            InterstitialActivity.l(InterstitialActivity.this);
        }
    };

    protected static void a(String str, String str2, String str3) {
    }

    static /* synthetic */ boolean a(InterstitialActivity interstitialActivity, boolean z) {
        interstitialActivity.cd = true;
        return true;
    }

    static /* synthetic */ int u(InterstitialActivity interstitialActivity) {
        int i = interstitialActivity.bU;
        interstitialActivity.bU = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setRequestedOrientation(7);
        super.onCreate(bundle);
        if (Interstitial.currentAd == null) {
            finish();
            return;
        }
        this.bR = new Interstitial(Interstitial.currentAd);
        if (getRequestedOrientation() == 6) {
            report(com.appnext.ads.a.ai);
        } else {
            report(com.appnext.ads.a.aj);
        }
        this.gl = new RelativeLayout(this);
        setContentView(this.gl);
        this.gl.getLayoutParams().width = -1;
        this.gl.getLayoutParams().height = -1;
        this.gl.setBackgroundColor(-1);
        try {
            this.placementID = getIntent().getExtras().getString("id");
            if (getIntent().hasExtra("auto_play")) {
                Boolean valueOf = Boolean.valueOf(getIntent().getBooleanExtra("auto_play", true));
                this.autoPlay = valueOf;
                if (valueOf.booleanValue()) {
                    report(com.appnext.ads.a.ae);
                } else {
                    report(com.appnext.ads.a.af);
                }
            }
            if (getIntent().hasExtra("can_close")) {
                this.canClose = Boolean.valueOf(getIntent().getBooleanExtra("can_close", false));
            }
            if (getIntent().hasExtra("mute")) {
                Boolean valueOf2 = Boolean.valueOf(getIntent().getBooleanExtra("mute", true));
                this.mute = valueOf2;
                if (valueOf2.booleanValue()) {
                    report(com.appnext.ads.a.ag);
                } else {
                    report(com.appnext.ads.a.ah);
                }
            }
            if (getIntent().hasExtra("pview")) {
                this.gj = getIntent().getStringExtra("pview");
                this.banner = getIntent().getStringExtra("banner");
                this.guid = getIntent().getStringExtra("guid");
            }
            if (getIntent().getSerializableExtra("ads") != null) {
                this.ads = (ArrayList) getIntent().getSerializableExtra("ads");
            }
            this.bV = new Handler();
            AppnextWebView.u(this).a(this.bR.getPageUrl(), new AppnextWebView.c() { // from class: com.appnext.ads.interstitial.InterstitialActivity.1
                @Override // com.appnext.core.webview.AppnextWebView.c
                public final void f(String str) {
                    InterstitialActivity.a(InterstitialActivity.this);
                }

                @Override // com.appnext.core.webview.AppnextWebView.c
                public final void error(String str) {
                    InterstitialActivity.a(InterstitialActivity.this);
                }
            });
            this.bW = new e.a() { // from class: com.appnext.ads.interstitial.InterstitialActivity.4
                @Override // com.appnext.core.e.a
                public final void onMarket(String str) {
                    if (InterstitialActivity.this.handler != null) {
                        InterstitialActivity.this.handler.removeCallbacks(null);
                    }
                    InterstitialActivity.this.ba();
                }

                @Override // com.appnext.core.e.a
                public final void error(String str) {
                    if (InterstitialActivity.this.handler != null) {
                        InterstitialActivity.this.handler.removeCallbacks(null);
                    }
                    InterstitialActivity.this.ba();
                    String unused = InterstitialActivity.this.placementID;
                    new InterstitialAd(InterstitialActivity.this.aE).getAppURL();
                }
            };
            this.userAction = new q(this, new q.a() { // from class: com.appnext.ads.interstitial.InterstitialActivity.5
                @Override // com.appnext.core.q.a
                public final void report(String str) {
                }

                @Override // com.appnext.core.q.a
                public final Ad e() {
                    return InterstitialActivity.this.bR;
                }

                @Override // com.appnext.core.q.a
                public final AppnextAd f() {
                    return InterstitialActivity.this.aE;
                }

                @Override // com.appnext.core.q.a
                public final p g() {
                    return InterstitialActivity.this.getConfig();
                }
            });
            new Thread(new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.6
                @Override // java.lang.Runnable
                public final void run() {
                    InterstitialActivity interstitialActivity = InterstitialActivity.this;
                    interstitialActivity.cc = f.b((Context) interstitialActivity, true);
                }
            }).start();
        } catch (Throwable unused) {
            finish();
        }
    }

    private void v() {
        try {
            AppnextWebView u = AppnextWebView.u(this);
            this.bP = u.ai(this.ads != null ? "fullscreen" : "interstitial");
            WebView a2 = u.a(this, this.bR.getPageUrl(), w(), this.bR.getFallback(), this.ads != null ? "fullscreen" : "interstitial");
            this.bP = a2;
            a2.setWebViewClient(new AnonymousClass7());
            this.bP.setWebChromeClient(new AnonymousClass8());
        } catch (Throwable unused) {
            onError(AppnextError.INTERNAL_ERROR);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appnext.ads.interstitial.InterstitialActivity$7  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass7 extends WebViewClient {
        AnonymousClass7() {
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str == null) {
                return false;
            }
            if (str.startsWith("http")) {
                webView.loadUrl(str);
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            InterstitialActivity.this.bV.removeCallbacksAndMessages(null);
            InterstitialActivity.l(InterstitialActivity.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appnext.ads.interstitial.InterstitialActivity$8  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass8 extends WebChromeClient {
        AnonymousClass8() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            consoleMessage.message();
            if (consoleMessage.message().contains("pause")) {
                return true;
            }
            if (consoleMessage.message().contains("TypeError") || consoleMessage.message().contains("has no method") || consoleMessage.message().contains("is not a function")) {
                InterstitialActivity.this.onError(AppnextError.INTERNAL_ERROR);
                InterstitialActivity.this.finish();
                return true;
            }
            return true;
        }
    }

    private void pageFinished() {
        Handler handler = this.bV;
        if (handler != null) {
            handler.removeCallbacks(this.ce);
        }
        this.bQ = true;
        String string = getIntent().getExtras().getString("creative");
        this.bT = string;
        if (string == null || string.equals(Interstitial.TYPE_MANAGED)) {
            this.bT = d("creative");
        }
        new Thread(new AnonymousClass10()).start();
        WebView webView = this.bP;
        if (webView == null) {
            onError(AppnextError.INTERNAL_ERROR);
            finish();
            return;
        }
        if (webView.getParent() != null) {
            ((ViewGroup) this.bP.getParent()).removeView(this.bP);
        }
        this.gl.addView(this.bP);
        this.bP.getLayoutParams().width = -1;
        this.bP.getLayoutParams().height = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appnext.ads.interstitial.InterstitialActivity$10  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass10 implements Runnable {
        AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            InterstitialActivity.this.x();
        }
    }

    @Override // com.appnext.core.AppnextActivity
    protected final p getConfig() {
        return c.K();
    }

    @Override // android.app.Activity
    protected void onResume() {
        Boolean bool;
        super.onResume();
        if (this.cd) {
            onClose();
            finish();
            return;
        }
        if (this.bQ && (bool = this.autoPlay) != null && bool.booleanValue()) {
            loadJS("Appnext.Layout.Video.play();");
        }
        try {
            this.bP.loadUrl("javascript:(function() { try{Appnext.countToClose();}catch(e){}})()");
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        WebView webView;
        super.onPause();
        if (this.closed || (webView = this.bP) == null) {
            return;
        }
        webView.loadUrl("javascript:(function() { Appnext.Layout.Video.pause();})()");
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Boolean bool = this.canClose;
        if (bool != null) {
            if (!bool.booleanValue()) {
                return;
            }
        } else if (!Boolean.parseBoolean(d("can_close"))) {
            return;
        }
        loadJS("Appnext.Layout.destroy('internal');");
        this.closed = true;
        onClose();
        finish();
    }

    @Override // com.appnext.core.AppnextActivity
    protected final void onError(final String str) {
        runOnUiThread(new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.11
            @Override // java.lang.Runnable
            public final void run() {
                if (InterstitialActivity.this.bR == null || InterstitialActivity.this.bR.getOnAdErrorCallback() == null) {
                    return;
                }
                InterstitialActivity.this.bR.getOnAdErrorCallback().adError(str);
            }
        });
    }

    private void e(String str) {
        com.appnext.ads.interstitial.a.G();
        AppnextAd appnextAd = (AppnextAd) com.appnext.ads.interstitial.a.parseAd(str);
        if (appnextAd == null) {
            return;
        }
        this.aE = new InterstitialAd(appnextAd);
        Interstitial interstitial = this.bR;
        if (interstitial != null && interstitial.getOnAdClickedCallback() != null) {
            this.bR.getOnAdClickedCallback().adClicked();
        }
        b(this.aE, this.bW);
        report(com.appnext.ads.a.V);
        String bannerID = this.aE.getBannerID();
        InterstitialAd interstitialAd = this.bS;
        if (bannerID.equals(interstitialAd != null ? interstitialAd.getBannerID() : "")) {
            if (this.bY) {
                return;
            }
            this.bY = true;
            report(com.appnext.ads.a.al);
        } else if (this.bZ) {
        } else {
            this.bZ = true;
            report(com.appnext.ads.a.ak);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextActivity
    public final void b(AppnextAd appnextAd, e.a aVar) {
        a(this.gl, getResources().getDrawable(R.drawable.apnxt_loader));
        super.b(appnextAd, aVar);
    }

    protected final WebAppInterface w() {
        if (this.bX == null) {
            this.bX = new WebInterface();
        }
        return this.bX;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class WebInterface extends WebAppInterface {
        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public String filterAds(String str) {
            return str;
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void gotoAppWall() {
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void videoPlayed() {
        }

        public WebInterface() {
            super(InterstitialActivity.this);
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void destroy(String str) {
            if (str.equals("c_close")) {
                InterstitialActivity.a(InterstitialActivity.this, true);
                InterstitialActivity.this.runOnUiThread(new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.WebInterface.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            JSONObject jSONObject = new JSONObject(InterstitialActivity.this.bS.getAdJSON());
                            jSONObject.put("urlApp", jSONObject.getString("urlApp") + "&tem_id=156");
                            InterstitialActivity.b(InterstitialActivity.this, jSONObject.toString());
                        } catch (JSONException unused) {
                            InterstitialActivity.b(InterstitialActivity.this, InterstitialActivity.this.bS.getAdJSON());
                        }
                    }
                });
            } else if (str.equals("close")) {
                InterstitialActivity.this.runOnUiThread(new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.WebInterface.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        InterstitialActivity.this.onClose();
                        InterstitialActivity.this.finish();
                    }
                });
            } else {
                InterstitialActivity.this.runOnUiThread(new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.WebInterface.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        InterstitialActivity.this.onError(AdsError.AD_NOT_READY);
                        InterstitialActivity.this.finish();
                    }
                });
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void notifyImpression(String str) {
            super.notifyImpression(str);
            if (InterstitialActivity.this.bS != null) {
                InterstitialActivity.this.bS.setImpressionURL(str);
                InterstitialActivity.this.handler.postDelayed(new a(str), Long.parseLong(InterstitialActivity.this.getConfig().get("postpone_impression_sec")) * 1000);
            }
            if (InterstitialActivity.this.autoPlay == null || !InterstitialActivity.this.autoPlay.booleanValue()) {
                return;
            }
            play();
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void postView(String str) {
            if (Boolean.parseBoolean(InterstitialActivity.this.ads != null ? "false" : InterstitialActivity.this.d("pview"))) {
                InterstitialActivity.this.handler.postDelayed(new b(str), Long.parseLong(InterstitialActivity.this.getConfig().get("postpone_vta_sec")) * 1000);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openStore(final String str) {
            InterstitialActivity.this.runOnUiThread(new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.WebInterface.4
                @Override // java.lang.Runnable
                public final void run() {
                    InterstitialActivity.b(InterstitialActivity.this, str);
                }
            });
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void play() {
            String unused = InterstitialActivity.this.placementID;
            InterstitialActivity.this.loadJS("Appnext.Layout.Video.play();");
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public String loadAds() {
            return "";
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openLink(String str) {
            InterstitialActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void logSTP(String str, String str2) {
            f.a(InterstitialActivity.this.bR, InterstitialActivity.this.bS, str, str2, InterstitialActivity.this.getConfig());
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void jsError(String str) {
            if (TextUtils.isEmpty(str) && (str.contains("is not a function") || str.contains("has no method"))) {
                if (InterstitialActivity.u(InterstitialActivity.this) < 5) {
                    InterstitialActivity.this.bV.postDelayed(InterstitialActivity.this.ce, 500L);
                    return;
                }
                InterstitialActivity.this.onError(AppnextError.INTERNAL_ERROR);
                InterstitialActivity.this.finish();
                return;
            }
            InterstitialActivity.this.onError(AppnextError.INTERNAL_ERROR);
            InterstitialActivity.this.finish();
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openResultPage(String str) {
            d.br().a(new com.appnext.core.result.c() { // from class: com.appnext.ads.interstitial.InterstitialActivity.WebInterface.5
                @Override // com.appnext.core.result.c
                public final JSONObject getConfigParams() throws JSONException {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("vid", "2.5.1.472");
                    jSONObject.put(ScarConstants.TOKEN_ID_KEY, InterstitialActivity.this.bR == null ? "" : InterstitialActivity.this.bR.getTID());
                    jSONObject.put("auid", InterstitialActivity.this.bR != null ? InterstitialActivity.this.bR.getAUID() : "");
                    jSONObject.put("osid", StatisticData.ERROR_CODE_NOT_FOUND);
                    jSONObject.put("tem_id", "1601");
                    jSONObject.put("id", getPlacementId());
                    jSONObject.put("cat", InterstitialActivity.this.bS.getCategories());
                    jSONObject.put("pview", InterstitialActivity.this.getConfig().get("pview"));
                    jSONObject.put("devn", f.be());
                    jSONObject.put("dosv", Build.VERSION.SDK_INT);
                    jSONObject.put("dds", "0");
                    jSONObject.put("ads_type", "banner");
                    jSONObject.put("country", InterstitialActivity.this.bS.getCountry());
                    jSONObject.put("gdpr", k.a(InterstitialActivity.this.bS, InterstitialActivity.this.getConfig()));
                    return jSONObject;
                }

                @Override // com.appnext.core.result.c
                public final AppnextAd getSelectedAd() {
                    return InterstitialActivity.this.bS;
                }

                @Override // com.appnext.core.result.c
                public final String getPlacementId() {
                    return InterstitialActivity.this.placementID;
                }

                @Override // com.appnext.core.result.c
                public final String z() {
                    return "160";
                }

                @Override // com.appnext.core.result.c
                public final String A() {
                    return com.appnext.ads.interstitial.a.G().l(InterstitialActivity.this.bR);
                }

                @Override // com.appnext.core.result.c
                public final String B() {
                    return InterstitialActivity.this.ca;
                }

                @Override // com.appnext.core.result.c
                public final p C() {
                    return InterstitialActivity.this.getConfig();
                }

                @Override // com.appnext.core.result.c
                public final Ad D() {
                    return InterstitialActivity.this.bR;
                }

                @Override // com.appnext.core.result.c
                public final com.appnext.core.result.a E() {
                    return new com.appnext.core.result.a() { // from class: com.appnext.ads.interstitial.InterstitialActivity.WebInterface.5.1
                        @Override // com.appnext.core.result.a
                        public final Object F() {
                            return null;
                        }

                        @Override // com.appnext.core.result.a
                        public final String getFallbackScript() {
                            return null;
                        }

                        @Override // com.appnext.core.result.a
                        public final WebViewClient getWebViewClient() {
                            return null;
                        }

                        @Override // com.appnext.core.result.a
                        public final String getJSurl() {
                            return "https://cdn.appnext.com/tools/sdk/interstitial/v75/result.min.js";
                        }
                    };
                }
            });
            Intent intent = new Intent(InterstitialActivity.this, ResultPageActivity.class);
            intent.putExtra("shouldClose", false);
            intent.setFlags(65536);
            InterstitialActivity.this.startActivity(intent);
        }
    }

    /* loaded from: classes.dex */
    private class a implements Runnable {
        AppnextAd ch;

        a(String str) {
            InterstitialAd interstitialAd = new InterstitialAd(InterstitialActivity.this.bS);
            this.ch = interstitialAd;
            interstitialAd.setImpressionURL(str);
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (InterstitialActivity.this.userAction != null) {
                    InterstitialActivity.this.userAction.e(this.ch);
                    InterstitialActivity.this.report(com.appnext.ads.a.G);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes.dex */
    private class b implements Runnable {
        AppnextAd ch;

        b(String str) {
            try {
                com.appnext.ads.interstitial.a.G();
                this.ch = (AppnextAd) com.appnext.ads.interstitial.a.parseAd(str);
            } catch (Throwable unused) {
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            InterstitialActivity.this.a(this.ch, (e.a) null);
        }
    }

    private void play() {
        loadJS("Appnext.Layout.Video.play();");
    }

    private void stop() {
        WebView webView = this.bP;
        if (webView != null) {
            webView.loadUrl("javascript:(function() { Appnext.Layout.Video.pause();})()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClose() {
        Interstitial interstitial = this.bR;
        if (interstitial == null || interstitial.getOnAdClosedCallback() == null) {
            return;
        }
        this.bR.getOnAdClosedCallback().onAdClosed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void report(String str) {
        Interstitial interstitial = this.bR;
        if (interstitial != null) {
            String tid = interstitial.getTID();
            String vid = this.bR.getVID();
            String auid = this.bR.getAUID();
            String placementID = this.bR.getPlacementID();
            String sessionId = this.bR.getSessionId();
            InterstitialAd interstitialAd = this.bS;
            String bannerID = interstitialAd != null ? interstitialAd.getBannerID() : "";
            InterstitialAd interstitialAd2 = this.bS;
            f.a(tid, vid, auid, placementID, sessionId, str, "current_interstitial", bannerID, interstitialAd2 != null ? interstitialAd2.getCampaignID() : "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadJS(final String str) {
        runOnUiThread(new Runnable() { // from class: com.appnext.ads.interstitial.InterstitialActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                if (InterstitialActivity.this.bP != null) {
                    InterstitialActivity.this.bP.loadUrl("javascript:(function() { try { " + str + "} catch(err){ Appnext.jsError(err.message); }})()");
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:3:0x0001, B:5:0x000f, B:8:0x0019, B:10:0x0023, B:13:0x002d, B:15:0x006d, B:17:0x0079, B:19:0x0085, B:22:0x0092, B:30:0x00b9, B:32:0x00d0, B:34:0x00da, B:37:0x00ec, B:35:0x00e1, B:36:0x00e8, B:23:0x009a, B:25:0x00a5, B:29:0x00ae), top: B:47:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e8 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:3:0x0001, B:5:0x000f, B:8:0x0019, B:10:0x0023, B:13:0x002d, B:15:0x006d, B:17:0x0079, B:19:0x0085, B:22:0x0092, B:30:0x00b9, B:32:0x00d0, B:34:0x00da, B:37:0x00ec, B:35:0x00e1, B:36:0x00e8, B:23:0x009a, B:25:0x00a5, B:29:0x00ae), top: B:47:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final synchronized void x() {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.ads.interstitial.InterstitialActivity.x():void");
    }

    protected final JSONObject y() throws JSONException {
        ByteArrayOutputStream byteArrayOutputStream;
        String d2 = this.bR.getButtonColor().equals("") ? d("button_color") : this.bR.getButtonColor();
        if (d2.startsWith("#")) {
            d2 = d2.substring(1);
        }
        if (this.autoPlay == null) {
            this.autoPlay = Boolean.valueOf(Boolean.parseBoolean(d("auto_play")));
        }
        if (this.mute == null) {
            this.mute = Boolean.valueOf(Boolean.parseBoolean(d("mute")));
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", this.placementID);
        jSONObject.put("cat", this.bR.getCategories());
        jSONObject.put("pbk", this.bR.getPostback());
        jSONObject.put("b_color", d2);
        if (this.ads == null) {
            jSONObject.put("skip_title", this.bR.getSkipText().equals("") ? d("skip_title") : this.bR.getSkipText());
            jSONObject.put("pview", this.ads != null ? "false" : d("pview"));
            jSONObject.put("video_length", d("video_length"));
            jSONObject.put("min_internet_connection", d("min_internet_connection"));
            jSONObject.put("min_internet_connection_video", d("min_internet_connection_video"));
            jSONObject.put("mute", new StringBuilder().append(this.mute).toString());
            jSONObject.put("auto_play", new StringBuilder().append(this.autoPlay).toString());
            jSONObject.put("remove_poster_on_auto_play", d("remove_poster_on_auto_play"));
            jSONObject.put("show_rating", d("show_rating"));
            jSONObject.put("show_desc", d("show_desc"));
            jSONObject.put("creative", this.bT);
            jSONObject.put("remote_auto_play", true);
        }
        jSONObject.put("stp_flag", d("stp_flag"));
        jSONObject.put("ext", com.appnext.base.a.c.d.COLUMN_TYPE);
        jSONObject.put("dct", f.o(this));
        jSONObject.put("did", this.cc);
        jSONObject.put("devn", f.be());
        jSONObject.put("dosv", Build.VERSION.SDK_INT);
        jSONObject.put("dds", "0");
        jSONObject.put("urlApp_protection", d("urlApp_protection"));
        jSONObject.put("vid", this.bR.getVID());
        jSONObject.put(ScarConstants.TOKEN_ID_KEY, this.bR.getTID());
        jSONObject.put("auid", this.bR.getAUID());
        jSONObject.put("osid", StatisticData.ERROR_CODE_NOT_FOUND);
        jSONObject.put("ads_type", "interstitial");
        jSONObject.put("country", this.bS.getCountry());
        jSONObject.put("gdpr", k.a(this.bS, c.K()));
        jSONObject.put("lang_settings", new JSONObject(com.appnext.core.a.b.bp().bq()).toString());
        String language = this.bR.getLanguage();
        if (language == null || language.equals("")) {
            language = Locale.getDefault().getLanguage().toUpperCase();
        }
        jSONObject.put("lang", language);
        jSONObject.put("tem", new JSONArray(d("S1")).toString());
        jSONObject.put("click_x", d("clickType_A"));
        if (getIntent() != null && getIntent().hasExtra("show_desc")) {
            jSONObject.put("show_desc", getIntent().getStringExtra("show_desc"));
        }
        try {
            Bitmap Y = f.Y(this.bS.getImageURL());
            Y.compress(Bitmap.CompressFormat.PNG, 100, new ByteArrayOutputStream());
            String str = "data:image/" + this.bS.getImageURL().substring(this.bS.getImageURL().lastIndexOf(46) + 1) + ";base64," + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            Palette.Swatch vibrantSwatch = Palette.from(Y).generate().getVibrantSwatch();
            if (vibrantSwatch != null) {
                jSONObject.put("icon_color", String.format("#%06X", Integer.valueOf(vibrantSwatch.getRgb() & ViewCompat.MEASURED_SIZE_MASK)));
            } else {
                jSONObject.put("icon_color", "");
            }
            jSONObject.put("icon_src", str);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static String a(int i) {
        return String.format("#%06X", Integer.valueOf(i & ViewCompat.MEASURED_SIZE_MASK));
    }

    private static boolean hasVideo(AppnextAd appnextAd) {
        return (appnextAd.getVideoUrl().equals("") && appnextAd.getVideoUrlHigh().equals("") && appnextAd.getVideoUrl30Sec().equals("") && appnextAd.getVideoUrlHigh30Sec().equals("")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            com.appnext.ads.interstitial.a.G().g(this.bR);
            this.bR.destroy();
            this.bR = null;
            Handler handler = this.bV;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.bV = null;
            this.ce = null;
            this.bS = null;
            WebView webView = this.bP;
            if (webView != null) {
                webView.stopLoading();
                if (this.bP.getParent() != null) {
                    ((ViewGroup) this.bP.getParent()).removeView(this.bP);
                }
                this.bP.setWebChromeClient(null);
                this.bP.setWebViewClient(null);
                this.bP.destroy();
                this.bP = null;
            }
            AppnextWebView.u(this).a(w());
            this.bX = null;
            this.bW = null;
            com.appnext.ads.b bVar = this.aF;
            if (bVar != null) {
                bVar.a(this);
                this.aF = null;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        String str2 = c.K().get(str);
        return str2 == null ? "" : str2;
    }

    static /* synthetic */ void a(InterstitialActivity interstitialActivity) {
        try {
            AppnextWebView u = AppnextWebView.u(interstitialActivity);
            interstitialActivity.bP = u.ai(interstitialActivity.ads != null ? "fullscreen" : "interstitial");
            WebView a2 = u.a(interstitialActivity, interstitialActivity.bR.getPageUrl(), interstitialActivity.w(), interstitialActivity.bR.getFallback(), interstitialActivity.ads != null ? "fullscreen" : "interstitial");
            interstitialActivity.bP = a2;
            a2.setWebViewClient(new AnonymousClass7());
            interstitialActivity.bP.setWebChromeClient(new AnonymousClass8());
        } catch (Throwable unused) {
            interstitialActivity.onError(AppnextError.INTERNAL_ERROR);
            interstitialActivity.finish();
        }
    }

    static /* synthetic */ void l(InterstitialActivity interstitialActivity) {
        Handler handler = interstitialActivity.bV;
        if (handler != null) {
            handler.removeCallbacks(interstitialActivity.ce);
        }
        interstitialActivity.bQ = true;
        String string = interstitialActivity.getIntent().getExtras().getString("creative");
        interstitialActivity.bT = string;
        if (string == null || string.equals(Interstitial.TYPE_MANAGED)) {
            interstitialActivity.bT = interstitialActivity.d("creative");
        }
        new Thread(new AnonymousClass10()).start();
        WebView webView = interstitialActivity.bP;
        if (webView == null) {
            interstitialActivity.onError(AppnextError.INTERNAL_ERROR);
            interstitialActivity.finish();
            return;
        }
        if (webView.getParent() != null) {
            ((ViewGroup) interstitialActivity.bP.getParent()).removeView(interstitialActivity.bP);
        }
        interstitialActivity.gl.addView(interstitialActivity.bP);
        interstitialActivity.bP.getLayoutParams().width = -1;
        interstitialActivity.bP.getLayoutParams().height = -1;
    }

    static /* synthetic */ void b(InterstitialActivity interstitialActivity, String str) {
        com.appnext.ads.interstitial.a.G();
        AppnextAd appnextAd = (AppnextAd) com.appnext.ads.interstitial.a.parseAd(str);
        if (appnextAd != null) {
            interstitialActivity.aE = new InterstitialAd(appnextAd);
            Interstitial interstitial = interstitialActivity.bR;
            if (interstitial != null && interstitial.getOnAdClickedCallback() != null) {
                interstitialActivity.bR.getOnAdClickedCallback().adClicked();
            }
            interstitialActivity.b(interstitialActivity.aE, interstitialActivity.bW);
            interstitialActivity.report(com.appnext.ads.a.V);
            String bannerID = interstitialActivity.aE.getBannerID();
            InterstitialAd interstitialAd = interstitialActivity.bS;
            if (bannerID.equals(interstitialAd != null ? interstitialAd.getBannerID() : "")) {
                if (interstitialActivity.bY) {
                    return;
                }
                interstitialActivity.bY = true;
                interstitialActivity.report(com.appnext.ads.a.al);
            } else if (interstitialActivity.bZ) {
            } else {
                interstitialActivity.bZ = true;
                interstitialActivity.report(com.appnext.ads.a.ak);
            }
        }
    }
}
