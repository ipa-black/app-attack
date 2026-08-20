package com.appnext.core.webview;

import android.content.Context;
import android.os.AsyncTask;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appnext.core.f;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.net.HttpRetryException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class AppnextWebView {
    public static final int il = 1;
    public static final int im = 2;
    private static AppnextWebView in;
    private WebAppInterface bX;

    /* renamed from: io  reason: collision with root package name */
    private final HashMap<String, b> f6364io = new HashMap<>();
    private HashMap<String, WebView> ip;

    /* loaded from: classes.dex */
    public interface c {
        void error(String str);

        void f(String str);
    }

    public final void a(WebAppInterface webAppInterface) {
        if (this.bX == webAppInterface) {
            this.bX = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        public String aQ;
        public ArrayList<c> hF;
        public String is;
        public int state;

        private b() {
            this.state = 0;
            this.is = "";
            this.hF = new ArrayList<>();
        }

        /* synthetic */ b(AppnextWebView appnextWebView, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static AppnextWebView u(Context context) {
        if (in == null) {
            AppnextWebView appnextWebView = new AppnextWebView();
            in = appnextWebView;
            appnextWebView.ip = new HashMap<>();
        }
        return in;
    }

    private AppnextWebView() {
    }

    public final synchronized void a(String str, c cVar) {
        b bVar;
        if (this.f6364io.containsKey(str)) {
            bVar = this.f6364io.get(str);
        } else {
            bVar = new b(this, null);
            bVar.aQ = str;
        }
        if (bVar.state != 2) {
            if (bVar.state == 0) {
                bVar.state = 1;
                new a(bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str, null);
            }
            if (cVar != null) {
                bVar.hF.add(cVar);
            }
            this.f6364io.put(str, bVar);
        } else if (cVar != null) {
            cVar.f(str);
        }
    }

    /* loaded from: classes.dex */
    private class a extends AsyncTask<String, Void, String> {
        b ir;

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            super.onPostExecute(str2);
            if (str2.startsWith("error:")) {
                this.ir.state = 0;
                AppnextWebView.this.f6364io.put(this.ir.aQ, this.ir);
                AppnextWebView.a(AppnextWebView.this, this.ir, str2.substring(7));
                return;
            }
            this.ir.state = 2;
            AppnextWebView.this.f6364io.put(this.ir.aQ, this.ir);
            AppnextWebView.b(AppnextWebView.this, this.ir, str2);
        }

        public a(b bVar) {
            this.ir = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public final String doInBackground(String... strArr) {
            try {
                b bVar = (b) AppnextWebView.this.f6364io.get(strArr[0]);
                bVar.is = f.a(strArr[0], (HashMap<String, String>) null, true, 10000);
                AppnextWebView.this.f6364io.put(strArr[0], bVar);
                return strArr[0];
            } catch (HttpRetryException e2) {
                return "error: " + e2.getReason();
            } catch (IOException unused) {
                return "error: network problem";
            } catch (Throwable unused2) {
                return "error: unknown error";
            }
        }

        protected final void ag(String str) {
            super.onPostExecute(str);
            if (str.startsWith("error:")) {
                this.ir.state = 0;
                AppnextWebView.this.f6364io.put(this.ir.aQ, this.ir);
                AppnextWebView.a(AppnextWebView.this, this.ir, str.substring(7));
                return;
            }
            this.ir.state = 2;
            AppnextWebView.this.f6364io.put(this.ir.aQ, this.ir);
            AppnextWebView.b(AppnextWebView.this, this.ir, str);
        }
    }

    private WebView v(Context context) {
        WebView webView = new WebView(context.getApplicationContext());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setAppCacheEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setDatabaseEnabled(true);
        webView.getSettings().setMixedContentMode(0);
        webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new AnonymousClass1());
        return webView;
    }

    /* renamed from: com.appnext.core.webview.AppnextWebView$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends WebViewClient {
        AnonymousClass1() {
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
    }

    public final WebView a(Context context, String str, WebAppInterface webAppInterface, com.appnext.core.webview.a aVar, String str2) {
        String str3;
        try {
            in.bX = webAppInterface;
            WebView webView = this.ip.get(str2);
            if (webView != null && webView.getParent() != null) {
                ((ViewGroup) webView.getParent()).removeView(webView);
            }
            URL url = new URL(str);
            String str4 = url.getProtocol() + "://" + url.getHost();
            WebView webView2 = new WebView(context.getApplicationContext());
            webView2.getSettings().setJavaScriptEnabled(true);
            webView2.getSettings().setAppCacheEnabled(true);
            webView2.getSettings().setDomStorageEnabled(true);
            webView2.getSettings().setDatabaseEnabled(true);
            webView2.getSettings().setMixedContentMode(0);
            webView2.getSettings().setMediaPlaybackRequiresUserGesture(false);
            webView2.setWebChromeClient(new WebChromeClient());
            webView2.setWebViewClient(new AnonymousClass1());
            if (this.f6364io.containsKey(str) && this.f6364io.get(str).state == 2 && !this.f6364io.get(str).is.equals("")) {
                str3 = "<script>" + this.f6364io.get(str).is + "</script>";
            } else if (aVar != null) {
                str3 = "<script>" + aVar.J() + "</script>";
            } else {
                str3 = "<script src='" + str + "'></script>";
            }
            webView2.loadDataWithBaseURL(str4, "<html><body>" + str3 + "</body></html>", null, C.UTF8_NAME, null);
            this.ip.put(str2, webView2);
            webView2.addJavascriptInterface(new WebInterface(), "Appnext");
            return webView2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final boolean ah(String str) {
        return this.ip.get(str) != null;
    }

    public final WebView ai(String str) {
        WebView webView = this.ip.get(str);
        if (webView != null && webView.getParent() != null) {
            ((ViewGroup) webView.getParent()).removeView(webView);
        }
        return webView;
    }

    public final String aj(String str) {
        b bVar = this.f6364io.get(str);
        if (bVar == null || bVar.state != 2) {
            return null;
        }
        return bVar.is;
    }

    public static void b(WebAppInterface webAppInterface) {
        in.bX = webAppInterface;
    }

    private void a(b bVar, String str) {
        synchronized (this.f6364io) {
            Iterator<c> it = bVar.hF.iterator();
            while (it.hasNext()) {
                it.next().error(str);
            }
            bVar.hF.clear();
            this.f6364io.remove(bVar.aQ);
        }
    }

    private void b(b bVar, String str) {
        synchronized (this.f6364io) {
            Iterator<c> it = bVar.hF.iterator();
            while (it.hasNext()) {
                it.next().f(str);
            }
            bVar.hF.clear();
        }
    }

    /* loaded from: classes.dex */
    private class WebInterface extends WebAppInterface {
        public WebInterface() {
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void destroy(String str) {
            super.destroy(str);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.destroy(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void postView(String str) {
            super.postView(str);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.postView(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openStore(String str) {
            super.openStore(str);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.openStore(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void play() {
            super.play();
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.play();
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public String filterAds(String str) {
            super.filterAds(str);
            return AppnextWebView.in.bX != null ? AppnextWebView.in.bX.filterAds(str) : str;
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public String loadAds() {
            super.loadAds();
            if (AppnextWebView.in.bX != null) {
                return AppnextWebView.in.bX.loadAds();
            }
            return "";
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openLink(String str) {
            super.openLink(str);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.openLink(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void gotoAppWall() {
            super.gotoAppWall();
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.gotoAppWall();
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void videoPlayed() {
            super.videoPlayed();
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.videoPlayed();
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void notifyImpression(String str) {
            super.notifyImpression(str);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.notifyImpression(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void jsError(String str) {
            super.jsError(str);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.jsError(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void openResultPage(String str) {
            super.openResultPage(str);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.openResultPage(str);
            }
        }

        @Override // com.appnext.core.webview.WebAppInterface
        @JavascriptInterface
        public void logSTP(String str, String str2) {
            super.logSTP(str, str2);
            if (AppnextWebView.in.bX != null) {
                AppnextWebView.in.bX.logSTP(str, str2);
            }
        }
    }

    static /* synthetic */ void a(AppnextWebView appnextWebView, b bVar, String str) {
        synchronized (appnextWebView.f6364io) {
            Iterator<c> it = bVar.hF.iterator();
            while (it.hasNext()) {
                it.next().error(str);
            }
            bVar.hF.clear();
            appnextWebView.f6364io.remove(bVar.aQ);
        }
    }

    static /* synthetic */ void b(AppnextWebView appnextWebView, b bVar, String str) {
        synchronized (appnextWebView.f6364io) {
            Iterator<c> it = bVar.hF.iterator();
            while (it.hasNext()) {
                it.next().f(str);
            }
            bVar.hF.clear();
        }
    }
}
