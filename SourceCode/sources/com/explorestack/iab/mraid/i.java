package com.explorestack.iab.mraid;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.explorestack.iab.utils.m;
/* loaded from: classes2.dex */
public class i extends WebView {

    /* renamed from: g  reason: collision with root package name */
    public static final String f9345g = "i";

    /* renamed from: h  reason: collision with root package name */
    public static final d f9346h = new d(null);

    /* renamed from: a  reason: collision with root package name */
    public final m f9347a;

    /* renamed from: b  reason: collision with root package name */
    public final com.explorestack.iab.utils.m f9348b;

    /* renamed from: c  reason: collision with root package name */
    public e f9349c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9350d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9351e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f9352f;

    /* loaded from: classes2.dex */
    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            i.this.f9347a.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if ((action == 0 || action == 1) && !view.hasFocus()) {
                view.requestFocus();
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public class b implements m.d {
        public b() {
        }

        @Override // com.explorestack.iab.utils.m.d
        public void a(boolean z) {
            i.this.i();
        }
    }

    /* loaded from: classes2.dex */
    public class c implements ValueCallback<String> {
        public c() {
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a */
        public void onReceiveValue(String str) {
            MraidLog.d(i.f9345g, "evaluate js complete: " + str);
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends WebChromeClient {
        private d() {
        }

        public /* synthetic */ d(a aVar) {
            this();
        }

        public final boolean a(JsResult jsResult) {
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            if (consoleMessage == null || consoleMessage.message() == null) {
                return false;
            }
            if (!consoleMessage.message().contains("Uncaught ReferenceError")) {
                MraidLog.d("JS console", String.format("%s%s:%d", consoleMessage.message(), consoleMessage.sourceId() == null ? "" : " at " + consoleMessage.sourceId(), Integer.valueOf(consoleMessage.lineNumber())));
            }
            if (consoleMessage.message().contains("AppodealAlert")) {
                MraidLog.a("Appodeal", consoleMessage.message().replace("AppodealAlert:", ""));
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            MraidLog.d("JS alert", str2);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            MraidLog.d("JS confirm", str2);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            MraidLog.d("JS prompt", str2);
            return a(jsPromptResult);
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(boolean z);
    }

    public i(Context context) {
        super(context);
        this.f9350d = false;
        this.f9351e = false;
        this.f9352f = false;
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setScrollBarStyle(33554432);
        setFocusableInTouchMode(false);
        this.f9347a = new m(context);
        setOnTouchListener(new a());
        setWebChromeClient(f9346h);
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setBackgroundColor(0);
        this.f9348b = new com.explorestack.iab.utils.m(context, this, new b());
    }

    public void a(String str) {
        if (d()) {
            MraidLog.d(f9345g, "can't evaluating js: WebView is destroyed");
        } else if (TextUtils.isEmpty(str)) {
            MraidLog.d(f9345g, "can't evaluating js: js is empty");
        } else {
            try {
                MraidLog.d(f9345g, "evaluating js: " + str);
                evaluateJavascript(str, new c());
            } catch (Throwable th) {
                String str2 = f9345g;
                MraidLog.a(str2, th.getMessage());
                MraidLog.d(str2, "loading url: " + str);
                loadUrl("javascript:" + str);
            }
        }
    }

    public final void b() {
        MraidLog.d(f9345g, "onPause");
        try {
            onPause();
        } catch (Throwable th) {
            MraidLog.a(f9345g, th);
        }
        this.f9351e = true;
        i();
    }

    public final void c() {
        MraidLog.d(f9345g, "onResume");
        try {
            onResume();
        } catch (Throwable th) {
            MraidLog.a(f9345g, th);
        }
        this.f9351e = false;
        i();
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    public boolean d() {
        return this.f9352f;
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f9352f = true;
        try {
            g();
            removeAllViews();
            this.f9348b.c();
            super.destroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean e() {
        return this.f9350d;
    }

    public void f() {
        this.f9348b.e();
    }

    public void g() {
        stopLoading();
        loadUrl("");
        b();
    }

    public void h() {
        this.f9347a.b();
    }

    public final void i() {
        boolean z = !this.f9351e && this.f9348b.b();
        if (z != this.f9350d) {
            this.f9350d = z;
            e eVar = this.f9349c;
            if (eVar != null) {
                eVar.a(z);
            }
        }
    }

    public boolean j() {
        return this.f9347a.a();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            c();
        } else {
            b();
        }
    }

    @Override // android.view.View
    public boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        return false;
    }

    public void setListener(e eVar) {
        this.f9349c = eVar;
    }
}
