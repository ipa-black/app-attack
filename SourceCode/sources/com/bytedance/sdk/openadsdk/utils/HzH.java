package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
/* compiled from: JsBridgeUtils.java */
/* loaded from: classes2.dex */
public class HzH {
    public static void Qhi(Uri uri, com.bytedance.sdk.openadsdk.core.NFd nFd) {
        if (nFd == null || !nFd.Qhi(uri)) {
            return;
        }
        try {
            nFd.cJ(uri);
        } catch (Exception e2) {
            new StringBuilder("TTAndroidObj handleUri exception: ").append(e2);
        }
    }

    public static String Qhi(WebView webView, int i) {
        if (webView == null) {
            return "";
        }
        String userAgentString = webView.getSettings().getUserAgentString();
        if (TextUtils.isEmpty(userAgentString)) {
            return "";
        }
        StringBuilder sb = new StringBuilder(userAgentString);
        sb.append(" open_news open_news_u_s/").append(i);
        return sb.toString();
    }
}
