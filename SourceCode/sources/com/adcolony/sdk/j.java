package com.adcolony.sdk;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adcolony.sdk.c1;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public class j extends c1 {
    public static final f F = new f(null);

    /* loaded from: classes.dex */
    protected class a extends c1.c {
        public a() {
            super();
        }

        @Override // com.adcolony.sdk.c1.c, com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new g().a();
        }
    }

    /* loaded from: classes.dex */
    protected class b extends c1.d {
        public b() {
            super();
        }

        @Override // com.adcolony.sdk.c1.d, com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new g().a();
        }
    }

    /* loaded from: classes.dex */
    protected class c extends c1.e {
        public c() {
            super();
        }

        @Override // com.adcolony.sdk.c1.e, com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new g().a();
        }
    }

    /* loaded from: classes.dex */
    protected class d extends c1.f {
        public d() {
            super();
        }

        @Override // com.adcolony.sdk.c1.f, com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new g().a();
        }
    }

    /* loaded from: classes.dex */
    protected class e extends c1.g {
        public e() {
            super();
        }

        @Override // com.adcolony.sdk.c1.g, com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new g().a();
        }
    }

    /* loaded from: classes.dex */
    public static final class f {
        private f() {
        }

        public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final j a(Context context, h0 h0Var) {
            j jVar;
            int e2 = com.adcolony.sdk.a.b().r().e();
            if (Intrinsics.areEqual(c0.h(h0Var.a(), SessionDescription.ATTR_TYPE), "aurora")) {
                jVar = new com.adcolony.sdk.e(context, e2, h0Var);
            } else {
                jVar = new j(context, e2, h0Var);
            }
            jVar.i();
            return jVar;
        }
    }

    /* loaded from: classes.dex */
    private final class g {
        public g() {
        }

        public final void a() {
            h0 a2;
            if (j.this instanceof l) {
                return;
            }
            f1 b2 = c0.b();
            j jVar = j.this;
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            c0.b(b2, "id", jVar.getAdc3ModuleId());
            h0 message = j.this.getMessage();
            if (message == null || (a2 = message.a(b2)) == null) {
                return;
            }
            a2.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(Context context, int i, h0 h0Var) {
        super(context, i, h0Var);
    }

    @JvmStatic
    public static final j a(Context context, h0 h0Var) {
        return F.a(context, h0Var);
    }

    @Override // com.adcolony.sdk.c1, com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi21() {
        return new b();
    }

    @Override // com.adcolony.sdk.c1, com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi23() {
        return new c();
    }

    @Override // com.adcolony.sdk.c1, com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi24() {
        return new d();
    }

    @Override // com.adcolony.sdk.c1, com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi26() {
        return new e();
    }

    @Override // com.adcolony.sdk.c1, com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientDefault() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adcolony.sdk.c1, com.adcolony.sdk.b1
    public /* synthetic */ void i() {
        h0 message = getMessage();
        f1 a2 = message == null ? null : message.a();
        if (a2 == null) {
            a2 = c0.b();
        }
        setMraidFilepath(c0.h(a2, "mraid_filepath"));
        setBaseUrl(c0.h(a2, "base_url"));
        setIab(c0.f(a2, "iab"));
        setInfo(c0.f(a2, "info"));
        setAdSessionId(c0.h(a2, "ad_session_id"));
        setMUrl(d(a2));
        super.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adcolony.sdk.b1
    public /* synthetic */ void setBounds(h0 h0Var) {
        super.setBounds(h0Var);
        f1 b2 = c0.b();
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
        c0.b(b2, "id", getAdc3ModuleId());
        h0Var.a(b2).c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adcolony.sdk.b1
    public /* synthetic */ void setVisible(h0 h0Var) {
        super.setVisible(h0Var);
        f1 b2 = c0.b();
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
        c0.b(b2, "id", getAdc3ModuleId());
        h0Var.a(b2).c();
    }
}
