package com.criteo.publisher.m0;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.criteo.publisher.model.t;
import com.criteo.publisher.x;
import com.google.android.exoplayer2.C;
import java.lang.ref.Reference;
/* compiled from: CriteoBannerLoadTask.java */
/* loaded from: classes2.dex */
public class b extends x {

    /* renamed from: c  reason: collision with root package name */
    private final Reference<? extends WebView> f9018c;

    /* renamed from: d  reason: collision with root package name */
    private final t f9019d;

    /* renamed from: e  reason: collision with root package name */
    private final WebViewClient f9020e;

    /* renamed from: f  reason: collision with root package name */
    private final String f9021f;

    public b(Reference<? extends WebView> reference, WebViewClient webViewClient, t tVar, String str) {
        this.f9018c = reference;
        this.f9020e = webViewClient;
        this.f9019d = tVar;
        this.f9021f = str;
    }

    @Override // com.criteo.publisher.x
    public void a() {
        c();
    }

    private void c() {
        WebView webView = this.f9018c.get();
        if (webView != null) {
            String b2 = b();
            webView.getSettings().setJavaScriptEnabled(true);
            webView.setWebViewClient(this.f9020e);
            webView.loadDataWithBaseURL("", b2, "text/html", C.UTF8_NAME, "");
        }
    }

    private String b() {
        return this.f9019d.c().replace(this.f9019d.d(), this.f9021f);
    }
}
