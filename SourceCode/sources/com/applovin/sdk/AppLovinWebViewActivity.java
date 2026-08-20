package com.applovin.sdk;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.appodeal.ads.AppodealNetworks;
import java.util.Set;
/* loaded from: classes.dex */
public class AppLovinWebViewActivity extends Activity {
    public static final String EVENT_DISMISSED_VIA_BACK_BUTTON = "dismissed_via_back_button";
    public static final String INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON = "immersive_mode_on";
    public static final String INTENT_EXTRA_KEY_SDK_KEY = "sdk_key";

    /* renamed from: a  reason: collision with root package name */
    private String f6351a;

    /* renamed from: b  reason: collision with root package name */
    private WebView f6352b;

    /* renamed from: c  reason: collision with root package name */
    private EventListener f6353c;

    /* loaded from: classes.dex */
    public interface EventListener {
        void onReceivedEvent(String str);
    }

    public void loadUrl(String str, EventListener eventListener) {
        this.f6353c = eventListener;
        WebView webView = this.f6352b;
        if (webView == null) {
            this.f6351a = str;
        } else {
            webView.loadUrl(str);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        EventListener eventListener = this.f6353c;
        if (eventListener != null) {
            eventListener.onReceivedEvent(EVENT_DISMISSED_VIA_BACK_BUTTON);
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra(INTENT_EXTRA_KEY_SDK_KEY);
        if (TextUtils.isEmpty(stringExtra)) {
            v.i("AppLovinWebViewActivity", "No SDK key specified");
            finish();
            return;
        }
        final n nVar = AppLovinSdk.getInstance(stringExtra, new AppLovinSdkSettings(getApplicationContext()), getApplicationContext()).coreSdk;
        WebView tryToCreateWebView = Utils.tryToCreateWebView(this, "WebView Activity");
        this.f6352b = tryToCreateWebView;
        if (tryToCreateWebView == null) {
            finish();
            return;
        }
        setContentView(tryToCreateWebView);
        WebSettings settings = this.f6352b.getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        this.f6352b.setVerticalScrollBarEnabled(true);
        this.f6352b.setHorizontalScrollBarEnabled(true);
        this.f6352b.setScrollBarStyle(33554432);
        this.f6352b.setWebViewClient(new WebViewClient() { // from class: com.applovin.sdk.AppLovinWebViewActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                Uri parse = Uri.parse(str);
                String scheme = parse.getScheme();
                String host = parse.getHost();
                String path = parse.getPath();
                nVar.D();
                if (v.a()) {
                    nVar.D().b("AppLovinWebViewActivity", "Handling url load: " + str);
                }
                if (AppodealNetworks.APPLOVIN.equalsIgnoreCase(scheme) && "com.applovin.sdk".equalsIgnoreCase(host) && AppLovinWebViewActivity.this.f6353c != null) {
                    if (path.endsWith("webview_event")) {
                        Set<String> queryParameterNames = parse.getQueryParameterNames();
                        String str2 = queryParameterNames.isEmpty() ? "" : (String) queryParameterNames.toArray()[0];
                        if (!StringUtils.isValidString(str2)) {
                            nVar.D();
                            if (v.a()) {
                                nVar.D().e("AppLovinWebViewActivity", "Failed to parse WebView event parameter");
                                return true;
                            }
                            return true;
                        }
                        String queryParameter = parse.getQueryParameter(str2);
                        nVar.D();
                        if (v.a()) {
                            nVar.D().b("AppLovinWebViewActivity", "Parsed WebView event parameter name: " + str2 + " and value: " + queryParameter);
                        }
                        AppLovinWebViewActivity.this.f6353c.onReceivedEvent(queryParameter);
                        return true;
                    }
                    return true;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        });
        if (getIntent().getBooleanExtra(INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, false)) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
        if (StringUtils.isValidString(this.f6351a)) {
            this.f6352b.loadUrl(this.f6351a);
        }
    }
}
