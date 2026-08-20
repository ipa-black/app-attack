package com.explorestack.iab.mraid;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.explorestack.iab.bridge.JsBridgeHandler;
import com.explorestack.iab.mraid.i;
import com.explorestack.iab.utils.Logger;
import com.explorestack.iab.utils.Utils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.utils.IabUtils;
import java.util.Map;
/* loaded from: classes2.dex */
public class j {

    /* renamed from: g  reason: collision with root package name */
    public static final String f9356g = "j";

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ boolean f9357h = true;

    /* renamed from: a  reason: collision with root package name */
    public final b f9358a;

    /* renamed from: b  reason: collision with root package name */
    public final i f9359b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9360c;

    /* renamed from: f  reason: collision with root package name */
    public com.explorestack.iab.mraid.c f9363f;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9362e = false;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9361d = false;

    /* loaded from: classes2.dex */
    public class a implements i.e {
        public a() {
        }

        @Override // com.explorestack.iab.mraid.i.e
        public void a(boolean z) {
            if (j.this.f9360c) {
                j.this.a(z);
            }
            j.this.f9358a.a(z);
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void a(int i);

        void a(com.explorestack.iab.mraid.c cVar);

        void a(e eVar);

        void a(String str);

        void a(boolean z);

        void b();

        void b(String str);

        void b(boolean z);

        void c(String str);

        void d(String str);
    }

    /* loaded from: classes2.dex */
    public class c extends WebViewClient {
        private c() {
        }

        public /* synthetic */ c(j jVar, a aVar) {
            this();
        }

        public final void a(String str, String str2, int i) {
            MraidLog.d(j.f9356g, String.format("onError: %s / %s / %d", str, str2, Integer.valueOf(i)));
            if (str2 == null || !str2.contains("ERR_INTERNET_DISCONNECTED")) {
                return;
            }
            j.this.f9362e = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            MraidLog.d(j.f9356g, "onPageFinished");
            if (j.this.f9360c) {
                return;
            }
            j.this.f9360c = true;
            j.this.c().f();
            j.this.f9358a.d(str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            MraidLog.d(j.f9356g, "onPageStarted");
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            a(str2, str, i);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Uri url = webResourceRequest.getUrl();
            a(url != null ? url.toString() : null, webResourceError.getDescription().toString(), webResourceError.getErrorCode());
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MraidLog.d(j.f9356g, "onRenderProcessGone");
            j.this.f9358a.a(1);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("mraid://")) {
                j.this.a(str);
                return true;
            } else if (JsBridgeHandler.b(str)) {
                JsBridgeHandler.a(j.this.f9359b, str);
                return true;
            } else {
                j.this.e(str);
                return true;
            }
        }
    }

    public j(Context context, b bVar) {
        this.f9358a = bVar;
        i iVar = new i(context);
        this.f9359b = iVar;
        iVar.setWebViewClient(new c(this, null));
        iVar.setListener(new a());
    }

    public void a() {
        i c2 = c();
        Utils.removeFromParent(c2);
        c2.destroy();
    }

    public void a(int i, int i2) {
        b(String.format("(function click(x, y) {var ev = new MouseEvent('click', {    'view': window,    'bubbles': true,    'cancelable': true,    'screenX': x,    'screenY': y});var el = document.elementFromPoint(x, y);if (el !== null) {      el.dispatchEvent(ev); }})(%s, %s)", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public void a(com.explorestack.iab.mraid.b bVar) {
        b("mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, " + bVar.a() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, " + bVar.b() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, " + bVar.c() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, " + bVar.d() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, " + bVar.e() + ");");
    }

    public void a(d dVar) {
        b("mraid.setPlacementType('" + dVar.a() + "');");
    }

    public void a(f fVar) {
        Rect e2 = fVar.e();
        Rect d2 = fVar.d();
        b("mraid.setScreenSize(" + e2.width() + "," + e2.height() + ");mraid.setMaxSize(" + d2.width() + "," + d2.height() + ");mraid.setCurrentPosition(" + Utils.stringifyRect(fVar.a()) + ");mraid.setDefaultPosition(" + Utils.stringifyRect(fVar.c()) + ");mraid.fireSizeChangeEvent(" + Utils.stringifySize(fVar.a()) + ");");
    }

    public void a(h hVar) {
        b("mraid.fireStateChangeEvent('" + hVar.a() + "');");
    }

    public void a(Logger.LogLevel logLevel) {
        String str;
        if (logLevel == Logger.LogLevel.debug) {
            str = "mraid.logLevel = mraid.LogLevelEnum.DEBUG;";
        } else if (logLevel == Logger.LogLevel.info) {
            str = "mraid.logLevel = mraid.LogLevelEnum.INFO;";
        } else if (logLevel == Logger.LogLevel.warning) {
            str = "mraid.logLevel = mraid.LogLevelEnum.WARNING;";
        } else if (logLevel == Logger.LogLevel.error) {
            str = "mraid.logLevel = mraid.LogLevelEnum.ERROR;";
        } else if (logLevel != Logger.LogLevel.none) {
            return;
        } else {
            str = "mraid.logLevel = mraid.LogLevelEnum.NONE;";
        }
        b(str);
    }

    public final void a(String str) {
        Map<String, String> c2;
        String str2 = f9356g;
        MraidLog.d(str2, "handleJsCommand " + str);
        try {
            c2 = g.c(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (c2 == null) {
            return;
        }
        String str3 = c2.get("command");
        if (str3 == null) {
            MraidLog.b(str2, "handleJsCommand: not found");
            return;
        }
        a(str3, c2);
        g();
    }

    public void a(String str, String str2, String str3, String str4) {
        this.f9360c = false;
        c().loadDataWithBaseURL(str, str2, str3, str4, null);
    }

    public final void a(String str, Map<String, String> map) {
        str.hashCode();
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1886160473:
                if (str.equals("playVideo")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1289167206:
                if (str.equals("expand")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1097519099:
                if (str.equals("loaded")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1041060124:
                if (str.equals("noFill")) {
                    c2 = 3;
                    break;
                }
                break;
            case -934437708:
                if (str.equals("resize")) {
                    c2 = 4;
                    break;
                }
                break;
            case 3417674:
                if (str.equals(TtmlNode.TEXT_EMPHASIS_MARK_OPEN)) {
                    c2 = 5;
                    break;
                }
                break;
            case 94756344:
                if (str.equals("close")) {
                    c2 = 6;
                    break;
                }
                break;
            case 133423073:
                if (str.equals("setOrientationProperties")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1614272768:
                if (str.equals("useCustomClose")) {
                    c2 = '\b';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.f9358a.c(map.get("url"));
                return;
            case 1:
                this.f9358a.b(map.get("url"));
                return;
            case 2:
                this.f9358a.a();
                return;
            case 3:
                this.f9358a.a(0);
                return;
            case 4:
                e eVar = new e();
                eVar.f9319a = d(map.get(IabUtils.KEY_WIDTH));
                eVar.f9320b = d(map.get(IabUtils.KEY_HEIGHT));
                eVar.f9321c = d(map.get("offsetX"));
                eVar.f9322d = d(map.get("offsetY"));
                eVar.f9324f = Boolean.parseBoolean(map.get("allowOffscreen"));
                eVar.f9323e = l.a(map.get("customClosePosition"));
                this.f9358a.a(eVar);
                return;
            case 5:
                String str2 = map.get("url");
                if (TextUtils.isEmpty(str2)) {
                    MraidLog.a(f9356g, "url is null or empty");
                    return;
                } else if (!f9357h && str2 == null) {
                    throw new AssertionError();
                } else {
                    e(str2);
                    return;
                }
            case 6:
                this.f9358a.b();
                return;
            case 7:
                com.explorestack.iab.mraid.c cVar = new com.explorestack.iab.mraid.c(Boolean.parseBoolean(map.get("allowOrientationChange")), com.explorestack.iab.mraid.c.a(map.get("forceOrientation")));
                this.f9363f = cVar;
                this.f9358a.a(cVar);
                return;
            case '\b':
                boolean parseBoolean = Boolean.parseBoolean(map.get("useCustomClose"));
                if (this.f9361d != parseBoolean) {
                    this.f9361d = parseBoolean;
                    this.f9358a.b(parseBoolean);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void a(boolean z) {
        b("mraid.fireViewableChangeEvent(" + z + ");");
    }

    public com.explorestack.iab.mraid.c b() {
        return this.f9363f;
    }

    public void b(String str) {
        this.f9359b.a(str);
    }

    public i c() {
        return this.f9359b;
    }

    public void c(String str) {
        this.f9360c = false;
        c().loadUrl(str);
    }

    public final int d(String str) {
        if (str != null) {
            try {
                return Integer.parseInt(str, 10);
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return 0;
    }

    public boolean d() {
        return this.f9362e;
    }

    public final void e(String str) {
        if (!this.f9359b.j()) {
            MraidLog.d(f9356g, "Can't open url because webView wasn't clicked");
            return;
        }
        this.f9358a.a(str);
        this.f9359b.h();
    }

    public boolean e() {
        return this.f9361d;
    }

    public boolean f() {
        return this.f9359b.e();
    }

    public final void g() {
        b("mraid.nativeCallComplete();");
    }

    public void h() {
        b("mraid.fireReadyEvent();");
    }
}
