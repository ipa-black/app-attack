package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.webkit.WebView;
import com.applovin.impl.mediation.h;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class q extends com.applovin.impl.sdk.e.a implements h.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.a f5748a;

    /* renamed from: e  reason: collision with root package name */
    private AppLovinAdLoadListener f5749e;

    /* renamed from: f  reason: collision with root package name */
    private com.applovin.impl.adview.d f5750f;

    /* loaded from: classes.dex */
    private class a extends com.applovin.impl.adview.e {
        private a(com.applovin.impl.sdk.n nVar) {
            super(null, nVar);
        }

        private boolean a(String str, com.applovin.impl.sdk.c.b<String> bVar) {
            for (String str2 : q.this.f5674b.b(bVar)) {
                if (str2.equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.applovin.impl.adview.e
        protected boolean a(WebView webView, String str) {
            com.applovin.impl.sdk.v vVar = q.this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                q.this.f5676d.c(q.this.f5675c, "Processing click on ad URL \"" + str + "\"");
            }
            if (str == null || !(webView instanceof com.applovin.impl.adview.d)) {
                return true;
            }
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            if (a(scheme, com.applovin.impl.sdk.c.b.ci)) {
                if (a(host, com.applovin.impl.sdk.c.b.cj)) {
                    com.applovin.impl.sdk.v vVar2 = q.this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        q.this.f5676d.b(q.this.f5675c, "Ad load succeeded");
                    }
                    if (q.this.f5749e == null) {
                        return true;
                    }
                    q.this.f5749e.adReceived(q.this.f5748a);
                } else if (!a(host, com.applovin.impl.sdk.c.b.ck)) {
                    com.applovin.impl.sdk.v vVar3 = q.this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        q.this.f5676d.e(q.this.f5675c, "Unrecognized webview event");
                        return true;
                    }
                    return true;
                } else {
                    com.applovin.impl.sdk.v vVar4 = q.this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        q.this.f5676d.b(q.this.f5675c, "Ad load failed");
                    }
                    if (q.this.f5749e == null) {
                        return true;
                    }
                    q.this.f5749e.failedToReceiveAd(204);
                }
                q.this.f5749e = null;
                return true;
            }
            return true;
        }
    }

    public q(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskProcessJavaScriptTagAd", nVar);
        this.f5748a = new com.applovin.impl.sdk.ad.a(jSONObject, jSONObject2, bVar, nVar);
        this.f5749e = appLovinAdLoadListener;
        nVar.L().a(this);
    }

    @Override // com.applovin.impl.mediation.h.a
    public void a(com.applovin.impl.mediation.a.a aVar) {
        if (aVar.f().equalsIgnoreCase(this.f5748a.N())) {
            this.f5674b.L().b(this);
            AppLovinAdLoadListener appLovinAdLoadListener = this.f5749e;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(this.f5748a);
                this.f5749e = null;
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Rendering AppLovin ad #" + this.f5748a.getAdIdNumber());
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.q.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    q qVar = q.this;
                    q qVar2 = q.this;
                    qVar.f5750f = new com.applovin.impl.adview.d(new a(qVar2.f5674b), q.this.f5674b, q.this.f());
                    q.this.f5750f.loadDataWithBaseURL(q.this.f5748a.aw(), q.this.f5748a.b(), "text/html", null, "");
                } catch (Throwable th) {
                    q.this.f5674b.L().b(q.this);
                    com.applovin.impl.sdk.v vVar2 = q.this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        q.this.f5676d.b(q.this.f5675c, "Failed to initialize WebView", th);
                    }
                    if (q.this.f5749e != null) {
                        q.this.f5749e.failedToReceiveAd(-1);
                        q.this.f5749e = null;
                    }
                }
            }
        });
    }
}
