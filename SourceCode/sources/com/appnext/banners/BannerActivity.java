package com.appnext.banners;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appnext.banners.g;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.e;
import com.appnext.core.q;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* loaded from: classes.dex */
public class BannerActivity extends Activity {
    String ap;
    BannerAd bannerAd;
    BannerAdData cF;
    String cG;
    String cH;
    String cI;
    String cJ;
    e cK;
    Banner cL;
    boolean cd;
    BannerAdData selectedAd;
    q userAction;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0171, code lost:
        if (r2.equals("MEDIUM_RECTANGLE") == false) goto L28;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onCreate(android.os.Bundle r15) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.banners.BannerActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            this.userAction.destroy();
        } catch (Throwable unused) {
        }
        try {
            this.bannerAd.destroy();
        } catch (Throwable unused2) {
        }
        try {
            this.cL.destroy();
        } catch (Throwable unused3) {
        }
    }

    private static BannerSize n(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1966536496:
                if (str.equals("LARGE_BANNER")) {
                    c2 = 0;
                    break;
                }
                break;
            case -96588539:
                if (str.equals("MEDIUM_RECTANGLE")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return BannerSize.LARGE_BANNER;
            case 1:
                return BannerSize.MEDIUM_RECTANGLE;
            case 2:
                return BannerSize.BANNER;
            default:
                throw new IllegalArgumentException("Wrong banner size " + str);
        }
    }

    protected final Ad c(String str, String str2) {
        str2.hashCode();
        char c2 = 65535;
        switch (str2.hashCode()) {
            case -1966536496:
                if (str2.equals("LARGE_BANNER")) {
                    c2 = 0;
                    break;
                }
                break;
            case -96588539:
                if (str2.equals("MEDIUM_RECTANGLE")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1951953708:
                if (str2.equals("BANNER")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return new LargeBannerAd(this, str);
            case 1:
                return new MediumRectangleAd(this, str);
            case 2:
                return new SmallBannerAd(this, str);
            default:
                throw new IllegalArgumentException("Wrong banner size " + str2);
        }
    }

    /* loaded from: classes.dex */
    private class a extends g {
        private a() {
        }

        @Override // com.appnext.banners.g
        protected final String getJSurl() {
            return "https://cdn.appnext.com/tools/sdk/banner/2.4.3/result.min.js";
        }

        @Override // com.appnext.banners.g
        protected final String getFallbackScript() {
            return new com.appnext.core.result.b().J();
        }

        @Override // com.appnext.banners.g
        protected final int getLayout() {
            return R.layout.apnxt_full_screen;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.appnext.banners.a
        public final BannerAd getBannerAd() {
            return BannerActivity.this.bannerAd;
        }

        @Override // com.appnext.banners.g, com.appnext.banners.a
        protected final BannerAdData getSelectedAd() {
            return BannerActivity.this.selectedAd;
        }

        @Override // com.appnext.banners.a, com.appnext.banners.e
        public final void loadAd(BannerAdRequest bannerAdRequest) {
            inflateView(0, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.appnext.banners.a
        public final BannerAdRequest getAdRequest() {
            return new BannerAdRequest();
        }

        @Override // com.appnext.banners.g
        protected final g.a getWebInterface() {
            return new b();
        }

        @Override // com.appnext.banners.g
        protected final WebViewClient getWebViewClient() {
            return new C0086a();
        }

        /* loaded from: classes.dex */
        public class b extends g.a {
            public b() {
                super();
            }

            @JavascriptInterface
            public final void adClicked(String str, int i) {
                BannerActivity bannerActivity = BannerActivity.this;
                com.appnext.banners.b.R();
                bannerActivity.cF = new BannerAdData((AppnextAd) com.appnext.banners.b.parseAd(str));
                BannerActivity.this.userAction.a(BannerActivity.this.cF, BannerActivity.this.cF.getAppURL() + "&tem_id=" + a.this.getBannerAd().getTemId(a.this.getSelectedAd()) + IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, a.this.getPlacementId(), new e.a() { // from class: com.appnext.banners.BannerActivity.a.b.1
                    @Override // com.appnext.core.e.a
                    public final void error(String str2) {
                    }

                    @Override // com.appnext.core.e.a
                    public final void onMarket(String str2) {
                        if (BannerActivity.this.cd) {
                            BannerActivity.this.finish();
                        }
                    }
                });
            }

            @JavascriptInterface
            public final void impression(String str) {
                com.appnext.banners.b.R();
                BannerActivity.this.userAction.e((AppnextAd) com.appnext.banners.b.parseAd(str));
            }

            @JavascriptInterface
            public final void postView(String str) {
                com.appnext.banners.b.R();
                BannerAdData bannerAdData = new BannerAdData((AppnextAd) com.appnext.banners.b.parseAd(str));
                BannerActivity.this.userAction.a(bannerAdData, bannerAdData.getImpressionURL() + "&tem_id=" + a.this.getBannerAd().getTemId(a.this.getSelectedAd()) + IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, null);
            }

            @Override // com.appnext.banners.g.a
            @JavascriptInterface
            public final void openLink(String str) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                intent.addFlags(268435456);
                BannerActivity.this.startActivity(intent);
            }
        }

        /* renamed from: com.appnext.banners.BannerActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0086a extends WebViewClient {
            public C0086a() {
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
                new Thread(new Runnable() { // from class: com.appnext.banners.BannerActivity.a.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final String b2 = com.appnext.core.f.b(a.this.context, false);
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.banners.BannerActivity.a.a.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    a.this.loadJS("javascript:(function() { try { Appnext.setParams(" + a.this.getConfigParams().put("did", b2).toString() + "); } catch(err){ Appnext.jsError(err.message); }})()");
                                } catch (Throwable unused) {
                                }
                                a.this.loadJS("javascript:(function() { try { Appnext.load(" + a.this.getSelectedAd().getAdJSON() + "," + BannerActivity.this.cJ + "," + BannerActivity.this.cG + "); } catch(err){ Appnext.jsError(err.message); }})()");
                            }
                        });
                    }
                }).start();
            }
        }
    }

    /* loaded from: classes.dex */
    private class Banner extends BannerView {
        public Banner(Context context) {
            super(context);
        }

        @Override // com.appnext.banners.BannerView, com.appnext.banners.BaseBannerView
        protected e getBannerAdapter() {
            return BannerActivity.this.cK;
        }
    }
}
