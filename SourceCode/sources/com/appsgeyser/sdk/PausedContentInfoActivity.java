package com.appsgeyser.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.applovin.impl.sdk.utils.Utils;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.server.network.NetworkManager;
/* loaded from: classes2.dex */
public class PausedContentInfoActivity extends Activity {
    private static final String CUSTOM_HTML_ABOUT_KEY = "CustomHtmlAboutKey";

    public static void startPausedContentInfoActivity(Context context, boolean z) {
        Intent intent = new Intent(context, PausedContentInfoActivity.class);
        intent.putExtra(CUSTOM_HTML_ABOUT_KEY, z);
        intent.setFlags(67108864);
        intent.setFlags(536870912);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.appsgeysersdk_paused_content_activity);
        Log.d("PausedContentInfo", "created pausedActivity");
        WebView webView = (WebView) findViewById(R.id.webView);
        final boolean booleanExtra = getIntent().getBooleanExtra(CUSTOM_HTML_ABOUT_KEY, false);
        final String str = Constants.CUSTOM_HTML_ABOUT_URL + Configuration.getInstance(this).getApplicationId();
        String str2 = booleanExtra ? str : Constants.PAUSED_CONTENT_INFO_URL + Configuration.getInstance(this).getApplicationId();
        if (booleanExtra) {
            ImageView imageView = (ImageView) findViewById(R.id.close_screen);
            imageView.setVisibility(0);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.sdk.PausedContentInfoActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PausedContentInfoActivity.this.m158lambda$onCreate$0$comappsgeysersdkPausedContentInfoActivity(view);
                }
            });
            imageView.bringToFront();
        }
        if (NetworkManager.isOnline(this)) {
            webView.setWebViewClient(new WebViewClient() { // from class: com.appsgeyser.sdk.PausedContentInfoActivity.1
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str3) {
                    if (Uri.parse(str3).getScheme().equals(Utils.PLAY_STORE_SCHEME)) {
                        try {
                            webView2.stopLoading();
                            webView2.goBack();
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str3));
                            ((Activity) webView2.getContext()).startActivity(intent);
                            return false;
                        } catch (ActivityNotFoundException unused) {
                            Uri parse = Uri.parse(str3);
                            webView2.loadUrl("https://play.google.com/store/apps/" + parse.getHost() + "?" + parse.getQuery());
                            return false;
                        }
                    } else if (booleanExtra && !str3.contains("appsgeyser.com/branding/")) {
                        PausedContentInfoActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str3)));
                        return true;
                    } else {
                        webView2.loadUrl(str3);
                        return false;
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                    if (!booleanExtra || webResourceRequest.getUrl().toString().equals(str)) {
                        webView2.loadUrl(webResourceRequest.getUrl().toString());
                    }
                    return super.shouldOverrideUrlLoading(webView2, webResourceRequest);
                }
            });
            webView.loadUrl(str2);
        } else if (booleanExtra) {
        } else {
            webView.setVisibility(8);
            ((FrameLayout) findViewById(R.id.ban_view)).setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$com-appsgeyser-sdk-PausedContentInfoActivity  reason: not valid java name */
    public /* synthetic */ void m158lambda$onCreate$0$comappsgeysersdkPausedContentInfoActivity(View view) {
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (getIntent().getBooleanExtra(CUSTOM_HTML_ABOUT_KEY, false)) {
            super.onBackPressed();
        }
    }
}
