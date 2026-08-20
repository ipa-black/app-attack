package com.criteo.publisher.b0;

import android.content.ComponentName;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.criteo.publisher.s;
/* compiled from: AdWebViewClient.java */
/* loaded from: classes2.dex */
public class a extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final c f8683a;

    /* renamed from: b  reason: collision with root package name */
    private final ComponentName f8684b;

    /* renamed from: c  reason: collision with root package name */
    private final b f8685c = s.c().U0();

    public a(c cVar, ComponentName componentName) {
        this.f8683a = cVar;
        this.f8684b = componentName;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.f8685c.a(str, this.f8684b, this.f8683a);
        return true;
    }
}
