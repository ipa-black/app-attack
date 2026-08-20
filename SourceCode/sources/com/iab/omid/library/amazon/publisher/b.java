package com.iab.omid.library.amazon.publisher;

import android.os.Handler;
import android.webkit.WebView;
import com.google.android.exoplayer2.ExoPlayer;
import com.iab.omid.library.amazon.adsession.AdSessionContext;
import com.iab.omid.library.amazon.adsession.VerificationScriptResource;
import com.iab.omid.library.amazon.b.e;
import com.iab.omid.library.amazon.d.d;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: a  reason: collision with root package name */
    private WebView f9988a;

    /* renamed from: b  reason: collision with root package name */
    private Long f9989b = null;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f9990c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9991d;

    public b(Map<String, VerificationScriptResource> map, String str) {
        this.f9990c = map;
        this.f9991d = str;
    }

    @Override // com.iab.omid.library.amazon.publisher.AdSessionStatePublisher
    public void a() {
        super.a();
        j();
    }

    @Override // com.iab.omid.library.amazon.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.amazon.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            com.iab.omid.library.amazon.d.b.a(jSONObject, str, injectedResourcesMap.get(str));
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.amazon.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.amazon.publisher.b.1

            /* renamed from: b  reason: collision with root package name */
            private final WebView f9993b;

            {
                this.f9993b = b.this.f9988a;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f9993b.destroy();
            }
        }, Math.max(4000 - (this.f9989b == null ? 4000L : TimeUnit.MILLISECONDS.convert(d.a() - this.f9989b.longValue(), TimeUnit.NANOSECONDS)), (long) ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS));
        this.f9988a = null;
    }

    void j() {
        WebView webView = new WebView(com.iab.omid.library.amazon.b.d.a().b());
        this.f9988a = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.f9988a);
        e.a().a(this.f9988a, this.f9991d);
        for (String str : this.f9990c.keySet()) {
            e.a().a(this.f9988a, this.f9990c.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f9989b = Long.valueOf(d.a());
    }
}
