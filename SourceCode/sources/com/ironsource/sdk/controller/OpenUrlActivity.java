package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.List;
/* loaded from: classes3.dex */
public class OpenUrlActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private static final int f11595a = SDKUtils.generateViewId();

    /* renamed from: b  reason: collision with root package name */
    private static final int f11596b = SDKUtils.generateViewId();

    /* renamed from: d  reason: collision with root package name */
    private x f11598d;

    /* renamed from: e  reason: collision with root package name */
    private ProgressBar f11599e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f11600f;

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout f11601g;

    /* renamed from: h  reason: collision with root package name */
    private String f11602h;

    /* renamed from: c  reason: collision with root package name */
    private WebView f11597c = null;
    private Handler i = new Handler();
    private boolean j = false;
    private final Runnable k = new Runnable() { // from class: com.ironsource.sdk.controller.OpenUrlActivity.2
        @Override // java.lang.Runnable
        public final void run() {
            OpenUrlActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(OpenUrlActivity.this.j));
        }
    };

    /* loaded from: classes3.dex */
    class a extends WebViewClient {
        private a() {
        }

        /* synthetic */ a(OpenUrlActivity openUrlActivity, byte b2) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            OpenUrlActivity.this.f11599e.setVisibility(4);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            OpenUrlActivity.this.f11599e.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e("OpenUrlActivity", "Chromium process crashed - detail.didCrash():" + renderProcessGoneDetail.didCrash());
            OpenUrlActivity.this.finish();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            List<String> b2 = com.ironsource.sdk.utils.b.a().b();
            if (!b2.isEmpty()) {
                for (String str2 : b2) {
                    if (str.contains(str2)) {
                        try {
                            OpenUrlActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                            OpenUrlActivity.this.f11598d.i();
                        } catch (Exception e2) {
                            StringBuilder sb = new StringBuilder();
                            if (e2 instanceof ActivityNotFoundException) {
                                sb.append("no activity to handle url");
                            } else {
                                sb.append("activity failed to open with unspecified reason");
                            }
                            if (OpenUrlActivity.this.f11598d != null) {
                                x xVar = OpenUrlActivity.this.f11598d;
                                String sb2 = sb.toString();
                                if (TextUtils.isEmpty(str)) {
                                    str = "unknown url";
                                }
                                xVar.b(x.b("failedToStartStoreActivity", x.a("errMsg", TextUtils.isEmpty(sb2) ? "activity failed to open with unspecified reason" : sb2, "url", str, null, null, null, null, null, false)));
                            }
                        }
                        OpenUrlActivity.this.finish();
                        return true;
                    }
                }
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        x xVar;
        if (this.f11600f && (xVar = this.f11598d) != null) {
            xVar.e("secondaryClose");
        }
        super.finish();
    }

    public void loadUrl(String str) {
        this.f11597c.stopLoading();
        this.f11597c.clearHistory();
        try {
            this.f11597c.loadUrl(str);
        } catch (Throwable th) {
            Logger.e("OpenUrlActivity", "OpenUrlActivity:: loadUrl: " + th.toString());
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f11597c.canGoBack()) {
            this.f11597c.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.i("OpenUrlActivity", "onCreate()");
        try {
            this.f11598d = (x) com.ironsource.sdk.d.b.a((Context) this).f11936a.f11643a;
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            Bundle extras = getIntent().getExtras();
            this.f11602h = extras.getString(x.f11804c);
            this.f11600f = extras.getBoolean(x.f11805d);
            boolean booleanExtra = getIntent().getBooleanExtra("immersive", false);
            this.j = booleanExtra;
            if (booleanExtra) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.ironsource.sdk.controller.OpenUrlActivity.1
                    @Override // android.view.View.OnSystemUiVisibilityChangeListener
                    public final void onSystemUiVisibilityChange(int i) {
                        if ((i & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 0) {
                            OpenUrlActivity.this.i.removeCallbacks(OpenUrlActivity.this.k);
                            OpenUrlActivity.this.i.postDelayed(OpenUrlActivity.this.k, 500L);
                        }
                    }
                });
                runOnUiThread(this.k);
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.f11601g = relativeLayout;
            setContentView(relativeLayout, new ViewGroup.LayoutParams(-1, -1));
        } catch (Exception e2) {
            e2.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WebView webView = this.f11597c;
        if (webView != null) {
            webView.destroy();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.j && (i == 25 || i == 24)) {
            this.i.postDelayed(this.k, 500L);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        ViewGroup viewGroup;
        super.onPause();
        x xVar = this.f11598d;
        if (xVar != null) {
            xVar.a(false, "secondary");
            if (this.f11601g == null || (viewGroup = (ViewGroup) this.f11597c.getParent()) == null) {
                return;
            }
            if (viewGroup.findViewById(f11595a) != null) {
                viewGroup.removeView(this.f11597c);
            }
            if (viewGroup.findViewById(f11596b) != null) {
                viewGroup.removeView(this.f11599e);
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f11597c == null) {
            WebView webView = new WebView(getApplicationContext());
            this.f11597c = webView;
            webView.setId(f11595a);
            this.f11597c.getSettings().setJavaScriptEnabled(true);
            this.f11597c.setWebViewClient(new a(this, (byte) 0));
            loadUrl(this.f11602h);
        }
        if (findViewById(f11595a) == null) {
            this.f11601g.addView(this.f11597c, new RelativeLayout.LayoutParams(-1, -1));
        }
        if (this.f11599e == null) {
            ProgressBar progressBar = new ProgressBar(new ContextThemeWrapper(this, 16973939));
            this.f11599e = progressBar;
            progressBar.setId(f11596b);
        }
        if (findViewById(f11596b) == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.f11599e.setLayoutParams(layoutParams);
            this.f11599e.setVisibility(4);
            this.f11601g.addView(this.f11599e);
        }
        x xVar = this.f11598d;
        if (xVar != null) {
            xVar.a(true, "secondary");
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.j && z) {
            runOnUiThread(this.k);
        }
    }
}
