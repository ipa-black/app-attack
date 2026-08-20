package com.bytedance.sdk.component.utils;

import android.webkit.WebView;
/* compiled from: LoadUrlUtils.java */
/* loaded from: classes2.dex */
public class zc {
    private static final Qhi Qhi = new cJ();

    /* compiled from: LoadUrlUtils.java */
    /* loaded from: classes2.dex */
    private static class Qhi {
        private Qhi() {
        }

        public void Qhi(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: LoadUrlUtils.java */
    /* loaded from: classes2.dex */
    private static class cJ extends Qhi {
        private cJ() {
            super();
        }

        @Override // com.bytedance.sdk.component.utils.zc.Qhi
        public void Qhi(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            if (str != null && str.startsWith("javascript:")) {
                try {
                    webView.evaluateJavascript(str, null);
                    return;
                } catch (Throwable th) {
                    boolean z = th instanceof IllegalStateException;
                }
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static void Qhi(WebView webView, String str) {
        Qhi.Qhi(webView, str);
    }
}
