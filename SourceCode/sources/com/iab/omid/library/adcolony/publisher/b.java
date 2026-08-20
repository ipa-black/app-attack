package com.iab.omid.library.adcolony.publisher;

import android.os.Handler;
import android.webkit.WebView;
import com.google.android.exoplayer2.ExoPlayer;
import com.iab.omid.library.adcolony.adsession.AdSessionContext;
import com.iab.omid.library.adcolony.adsession.VerificationScriptResource;
import com.iab.omid.library.adcolony.b.e;
import com.iab.omid.library.adcolony.d.d;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: a  reason: collision with root package name */
    private WebView f9881a;

    /* renamed from: b  reason: collision with root package name */
    private Long f9882b = null;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f9883c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9884d;

    public b(Map<String, VerificationScriptResource> map, String str) {
        this.f9883c = map;
        this.f9884d = str;
    }

    @Override // com.iab.omid.library.adcolony.publisher.AdSessionStatePublisher
    public void a() {
        super.a();
        j();
    }

    @Override // com.iab.omid.library.adcolony.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.adcolony.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            com.iab.omid.library.adcolony.d.b.a(jSONObject, str, injectedResourcesMap.get(str));
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.adcolony.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.adcolony.publisher.b.1

            /* renamed from: b  reason: collision with root package name */
            private final WebView f9886b;

            {
                this.f9886b = b.this.f9881a;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f9886b.destroy();
            }
        }, Math.max(4000 - (this.f9882b == null ? 4000L : TimeUnit.MILLISECONDS.convert(d.a() - this.f9882b.longValue(), TimeUnit.NANOSECONDS)), (long) ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS));
        this.f9881a = null;
    }

    void j() {
        WebView webView = new WebView(com.iab.omid.library.adcolony.b.d.a().b());
        this.f9881a = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.f9881a);
        e.a().a(this.f9881a, this.f9884d);
        for (String str : this.f9883c.keySet()) {
            e.a().a(this.f9881a, this.f9883c.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f9882b = Long.valueOf(d.a());
    }
}
