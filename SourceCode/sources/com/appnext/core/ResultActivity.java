package com.appnext.core;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class ResultActivity extends Activity {
    private Intent hA;
    private WebView webView;

    static /* synthetic */ Intent a(ResultActivity resultActivity, String str) {
        return U(str);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        LinearLayout linearLayout = new LinearLayout(this);
        setContentView(linearLayout);
        linearLayout.setOrientation(1);
        WebView webView = new WebView(getApplicationContext());
        this.webView = webView;
        webView.getSettings().setTextZoom(100);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.getSettings().setAppCacheEnabled(true);
        this.webView.getSettings().setDomStorageEnabled(true);
        this.webView.getSettings().setDatabaseEnabled(true);
        this.webView.getSettings().setMixedContentMode(0);
        this.webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.webView.setLayerType(2, null);
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.appnext.core.ResultActivity.1
            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                String str2;
                if (str == null) {
                    return false;
                }
                if (str.startsWith("http")) {
                    ResultActivity resultActivity = ResultActivity.this;
                    if (resultActivity.hasNewResolver(ResultActivity.a(resultActivity, str).setComponent(null))) {
                        ResultActivity.b(ResultActivity.this, str);
                    } else {
                        webView2.loadUrl(str);
                    }
                    return true;
                } else if (str.startsWith("intent://")) {
                    try {
                        Intent parseUri = Intent.parseUri(str, 1);
                        if (ResultActivity.this.getPackageManager().resolveActivity(parseUri, 65536) != null) {
                            ResultActivity.b(ResultActivity.this, parseUri.getData().toString());
                            return true;
                        }
                        if (parseUri.getExtras() != null && parseUri.getExtras().containsKey("browser_fallback_url") && !parseUri.getExtras().getString("browser_fallback_url").equals("")) {
                            str2 = parseUri.getExtras().getString("browser_fallback_url");
                        } else {
                            if (parseUri.getExtras().containsKey("market_referrer") && !parseUri.getExtras().getString("market_referrer").equals("")) {
                                str2 = "market://details?id=" + parseUri.getPackage() + "&referrer=" + parseUri.getExtras().getString("market_referrer");
                            }
                            return true;
                        }
                        ResultActivity.b(ResultActivity.this, str2);
                        return true;
                    } catch (Throwable unused) {
                        return false;
                    }
                } else {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    try {
                        if (ResultActivity.this.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
                            ResultActivity.b(ResultActivity.this, str);
                            return true;
                        }
                    } catch (Throwable unused2) {
                    }
                    return false;
                }
            }
        });
        linearLayout.addView(this.webView);
        this.webView.setLayoutParams(new LinearLayout.LayoutParams(-1, 0));
        ((LinearLayout.LayoutParams) this.webView.getLayoutParams()).weight = 1.0f;
        try {
            String string = getIntent().getExtras().getString("url");
            getIntent().getExtras().getString("title");
            this.hA = new Intent(U(string)).setComponent(null);
            Intent selector = this.hA.getSelector();
            if (selector != null) {
                selector.setComponent(null);
            }
            this.webView.loadUrl(string);
        } catch (Throwable unused) {
            finish();
        }
    }

    private static List a(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            arrayList.add(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
        }
        return arrayList;
    }

    public final boolean hasNewResolver(Intent intent) {
        if (this.hA == null) {
            return intent != null;
        } else if (intent == null) {
            return false;
        } else {
            List<ComponentName> a2 = a(this, intent);
            HashSet hashSet = new HashSet();
            hashSet.addAll(a(this, this.hA));
            for (ComponentName componentName : a2) {
                if (!hashSet.contains(componentName)) {
                    return true;
                }
            }
            return false;
        }
    }

    private static Intent U(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        return intent;
    }

    private void bl() {
        onBackPressed();
    }

    private void openLink(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        startActivity(intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            WebView webView = this.webView;
            if (webView != null && webView.canGoBack()) {
                this.webView.goBack();
            } else {
                super.onBackPressed();
            }
        } catch (Throwable unused) {
            finish();
        }
    }

    static /* synthetic */ void b(ResultActivity resultActivity, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        resultActivity.startActivity(intent);
    }
}
