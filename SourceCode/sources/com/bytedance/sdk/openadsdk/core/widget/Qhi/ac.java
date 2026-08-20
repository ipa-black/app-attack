package com.bytedance.sdk.openadsdk.core.widget.Qhi;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ABk;
import java.lang.ref.WeakReference;
/* compiled from: SSWebSettings.java */
/* loaded from: classes2.dex */
public class ac {
    private final WeakReference<Context> Qhi;
    private boolean cJ = true;
    private final boolean ac = true;
    private final boolean CJ = true;
    private final boolean fl = false;
    private final boolean Tgh = true;
    private boolean ROR = true;

    public static ac Qhi(Context context) {
        return new ac(context);
    }

    private ac(Context context) {
        this.Qhi = new WeakReference<>(context);
    }

    public ac Qhi(boolean z) {
        this.ROR = z;
        return this;
    }

    public ac cJ(boolean z) {
        this.cJ = z;
        return this;
    }

    public void Qhi(WebView webView) {
        if (webView == null || this.Qhi.get() == null) {
            return;
        }
        cJ(webView);
        WebSettings settings = webView.getSettings();
        Qhi(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception e2) {
            ABk.Qhi("SSWebSettings", e2.getMessage());
        }
        try {
            if (this.cJ) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable th) {
            ABk.Qhi("SSWebSettings", th.getMessage());
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(false);
        settings.setSavePassword(false);
        try {
            if (this.ROR) {
                webView.setLayerType(2, null);
            } else {
                webView.setLayerType(0, null);
            }
        } catch (Throwable th2) {
            ABk.Qhi("SSWebSettings", th2.getMessage());
        }
    }

    public static void cJ(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th) {
            ABk.cJ(th.toString());
        }
    }

    private void Qhi(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th) {
            ABk.cJ(th.toString());
        }
    }
}
