package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcoq extends zzcor {
    public zzcoq(zzcno zzcnoVar, zzbew zzbewVar, boolean z) {
        super(zzcnoVar, zzbewVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcnv, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzN(webView, str, null);
    }
}
